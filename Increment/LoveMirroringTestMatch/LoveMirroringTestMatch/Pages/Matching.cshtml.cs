using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using LoveMirroringTestMatch.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;

namespace LoveMirroringTestMatch
{
    public class MatchingModel : PageModel
    {
        private readonly LoveMirroringDbContext _context;
        private readonly UserManager<AspNetUsers> _userManager;

        public MatchingModel(LoveMirroringDbContext context, UserManager<AspNetUsers> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        [BindProperty]
        public InputModel Input { get; set; }
        public string ReturnUrl { get; set; }
        public IEnumerable<Sexes> Sexes { get; set; }
        public IEnumerable<Profils> Profils { get; set; }
        public string UserId { get; set; }
        public UsersChoicesViewModel Choices { get; set; }


        public class InputModel
        {
            [Required]
            public string Sexe { get; set; }
            [Required]
            public int Age { get; set; }
            [Required]
            public string Profil { get; set; }
        }
        public async Task OnGetAsync(string returnUrl = null)
        {
            ReturnUrl = returnUrl;
            AspNetUsers user = null;
            user = await _userManager.GetUserAsync(User);
            if (user != null)
            {
                Sexes = _context.Sexes.ToList();
                Profils = _context.Profils.ToList();
            }

        }

        public async Task OnPostSearchAsync(string returnUrl = null)
        {
            returnUrl = returnUrl ?? Url.Content("~/");

            AspNetUsers user = null;
            user = await _userManager.GetUserAsync(User);
            if (user != null)
            {
                Sexes = _context.Sexes.ToList();
                Profils = _context.Profils.ToList();
            }

            var allUsersId = from u in await _context.AspNetUsers.ToListAsync() select u.Id;
            var allUsersLikeId = from us in await _context.UserLikes.ToListAsync() select us.Id1;
            var allUsersNotLike = allUsersId.Except(allUsersLikeId);


            var usersChoices = from u in await _context.AspNetUsers.ToListAsync()
                               where DateTime.Now.Year - u.Birthday.Year <= Input.Age
                               && u.Id != user.Id && allUsersNotLike.Contains(u.Id)
                               join s in await _context.Sexes.ToListAsync() on u.SexeId equals s.SexeId
                               where s.SexeName.Equals(Input.Sexe)
                               join up in await _context.UserProfils.ToListAsync() on u.Id equals up.Id
                               join p in await _context.Profils.ToListAsync() on up.ProfilId equals p.ProfilId
                               where p.ProfilName.Equals(Input.Profil)
                               select new UserChoiceViewModel { UserName = u.UserName, Age = DateTime.Now.Year - u.Birthday.Year, Sexe = s.SexeName, Profil = p.ProfilName };;

            Choices = new UsersChoicesViewModel { UsersChoices = usersChoices };

            //exemple retrouver like https://localhost:44365/Like/parisa@lol.ch
        }


        public class UserChoiceViewModel
        {
            public string UserName { get; set; }
            public int Age { get; set; }
            public string Sexe { get; set; }
            public string Profil { get; set; }

        }

        public class UsersChoicesViewModel
        {
            public IEnumerable<UserChoiceViewModel> UsersChoices { get; set; }
        }

        public IActionResult OnPostLike(string id, string returnUrl = "/Like")
        {
            return Redirect(returnUrl+"/"+id);

        }
    }
}