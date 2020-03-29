using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using IdentityServerAspNetIdentity.Models;
using Microsoft.Extensions.DependencyInjection;
using IdentityServerAspNetIdentity.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using IdentityModel;
using Serilog;
using IdentityServerAspNetIdentity.Services;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.WebUtilities;
using System.Text;

namespace IdentityServerAspNetIdentity.Controllers
{
    public class AccountController : Controller
    {
        private readonly IEmailSender _emailSender;
        private readonly UserManager<ApplicationUser> _userManager;

        public AccountController(IEmailSender emailSender, UserManager<ApplicationUser> userManager)
        {
            _emailSender = emailSender;
            _userManager = userManager;
        }

        public IActionResult SignUp()
        {
            return View();
        }

        [Route("SignUpSend", Name = "SignUpSend")]
        [HttpPost]
        public async Task<IActionResult> SignUpSend(ApplicationUser user)
        {
            string connectionString = "Server=LOCALHOST\\SQLEXPRESS;Database=LoveMirroring;Trusted_Connection=True;MultipleActiveResultSets=true";
            var services = new ServiceCollection();
            services.AddLogging();
            services.AddDbContext<ApplicationDbContext>(options =>
               options.UseSqlServer(connectionString));

            services.AddIdentity<ApplicationUser, IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();

            using (var serviceProvider = services.BuildServiceProvider())
            {
                using (var scope = serviceProvider.GetRequiredService<IServiceScopeFactory>().CreateScope())
                {
                    var context = scope.ServiceProvider.GetService<ApplicationDbContext>();
                    context.Database.Migrate();

                    var userMgr = scope.ServiceProvider.GetRequiredService<UserManager<ApplicationUser>>();

                    var checkUser = userMgr.FindByNameAsync(user.UserName).Result;
                    if (checkUser == null)
                    {
                        checkUser = user;
                        var result = userMgr.CreateAsync(checkUser, user.PasswordHash).Result;
                        if (!result.Succeeded)
                        {
                            throw new Exception(result.Errors.First().Description);
                        }
                        else
                        {
                            //_logger.LogInformation("User created a new account with password.");

                            var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                            code = WebEncoders.Base64UrlEncode(Encoding.UTF8.GetBytes(code));
                            var callbackUrl = Url.Page(
                                "/Account/ConfirmEmail",
                                pageHandler: null,
                                values: new { userId = user.Id, code = code},
                                protocol: Request.Scheme);

                            string url = "/Account/ConfirmEmail" + "?userId=" + user.Id + "&code=" + code;

                            string message = "Salut mon pote comment ca va ? si tu veux confirmer ton inscription c'est par <a href='" + callbackUrl + "'>ici</a>";
                            await _emailSender.SendEmailAsync(user.Email, "Confirmer votre Email", message);

                        }
                        

                        //result = userMgr.AddClaimsAsync(checkUser, new Claim[]{
                        //    new Claim(JwtClaimTypes.Name, checkUser.UserName),
                        //    new Claim(JwtClaimTypes.GivenName, checkUser.Firstname),
                        //    new Claim(JwtClaimTypes.FamilyName, checkUser.LastName),
                        //    new Claim(JwtClaimTypes.Email, checkUser.Email),
                        //    new Claim(JwtClaimTypes.EmailVerified, "true", ClaimValueTypes.Boolean)
                        //}).Result;
                        //if (!result.Succeeded)
                        //{
                        //    throw new Exception(result.Errors.First().Description);
                        //}
                        Log.Debug($"{checkUser.UserName} created");
                    }
                    else
                    {
                        Log.Debug($"{checkUser.UserName} already exists");
                    }
                }
            }
            
            return View("SignUpSuccess", user);
        }

        public IActionResult Cancel()
        {
            return View("Login");
        }

        /*Validation par Email*/
        public async Task<IActionResult> ConfirmEmail(string userId, string code)
        {
            if(userId == null || code == null)
            {
                return RedirectToPage("/Account/Login");
            }

            var user = await _userManager.FindByIdAsync(userId);
            if(user == null)
            {
                return NotFound($"Unable to load user with ID '{userId}'.");
            }

            code = Encoding.UTF8.GetString(WebEncoders.Base64UrlDecode(code));
            var result = await _userManager.ConfirmEmailAsync(user, code);
            // StatusMessage = result.Succeeded ? "Thank you for confirming your email." : "Error confirming you email";
            return View("ConfirmEmail");
        }

    }
}