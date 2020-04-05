using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
//using LoveMirroringTestMatch.Controllers;
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
        //private readonly MatchingController _matchingController;
        private readonly LoveMirroringContext _context;
        private readonly UserManager<AspNetUsers> _userManager;

        //public MatchingModel(MatchingController matching, LoveMirroringContext context, UserManager<AspNetUsers> userManager)
        public MatchingModel(LoveMirroringContext context, UserManager<AspNetUsers> userManager)
        {
            //_matchingController = matching;
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
            if (user != null )
            {
                Sexes = _context.Sexes.ToList();
                Profils = _context.Profils.ToList();
            }
            
        }

        //public async Task OnPostAsync(string returnUrl = null)
        //{
        //    ReturnUrl = returnUrl;
        //    Choices = await _matchingController.GetUsersChoice(Input.Sexe, Input.Age, Input.Profil);
        //}

        public async Task OnPostSearchAsync(string returnUrl = null)
        {
            returnUrl = returnUrl ?? Url.Content("~/");
            var usersChoices = from u in await _context.AspNetUsers.ToListAsync()
                               where u.Birthday.Year - DateTime.Now.Year <= Input.Age
                               join s in await _context.Sexes.ToListAsync() on u.SexeId equals s.SexeId
                               where s.SexeName.Equals(Input.Sexe)
                               join us in await _context.UsersProfils.ToListAsync() on u.Id equals us.Id
                               join p in await _context.Profils.ToListAsync() on us.ProfilId equals p.ProfilId
                               where p.ProfilName.Equals(Input.Profil)
                               select new UserChoiceViewModel { UserName = u.UserName, Age = u.Birthday.Year - DateTime.Now.Year, Sexe = s.SexeName, Profil = p.ProfilName };

            Choices = new UsersChoicesViewModel { UsersChoices = usersChoices };
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
    }
}