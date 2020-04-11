using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoveMirroringTestMatch.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;

namespace LoveMirroringTestMatch
{
    public class UnLikeModel : PageModel
    {
        private readonly LoveMirroringContext _context;
        private readonly UserManager<AspNetUsers> _userManager;

        public UnLikeModel(LoveMirroringContext context, UserManager<AspNetUsers> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public string Error { get; set; }
        public void OnGet()
        {

        }

        public IActionResult OnGetMatching()
        {

            return new RedirectToPageResult("Matching");

        }

        public async Task OnPostConfirmerAsync(string id)
        {
            try
            {
                string searchUserId = (from u in await _context.AspNetUsers.ToListAsync()
                                       where u.Email.Equals(id)
                                       select u.Id).FirstOrDefault();
                string currentUserId = _userManager.GetUserId(User);

                UsersMatch usersMatch = (from us in await _context.UsersMatch.ToListAsync()
                                        where us.Id.Equals(currentUserId) && us.Id1.Equals(searchUserId)
                                        select us).FirstOrDefault();
                _context.UsersMatch.Remove(usersMatch);
                _context.SaveChanges();
            }
            catch (Exception)
            {
                Error = "Vous n'avez pas liker ce profil";
            }
        }
    }
}