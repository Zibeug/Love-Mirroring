using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoveMirroringTestMatch.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace LoveMirroringTestMatch.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MatchingController : ControllerBase
    {
        private readonly UserManager<AspNetUsers> _userManager;
        private readonly LoveMirroringContext _context;

        public MatchingController(LoveMirroringContext context, UserManager<AspNetUsers> userManager)
        {
            _userManager = userManager;
            _context = context;
        }

        public async Task<UsersChoicesViewModel> GetUsersChoice(string sexe, int agemax, string profil)
        {
            var usersChoices = from u in await _context.AspNetUsers.ToListAsync()
                               where u.Birthday.Year - DateTime.Now.Year <= agemax
                               join s in await _context.Sexes.ToListAsync() on u.SexeId equals s.SexeId
                               where s.SexeName.Equals(sexe)
                               join us in await _context.UsersProfils.ToListAsync() on u.Id equals us.Id
                               join p in await _context.Profils.ToListAsync() on us.ProfilId equals p.ProfilId
                               where p.ProfilName.Equals(profil)
                             select new UserChoiceViewModel {UserName = u.UserName, Age = agemax, Sexe = s.SexeName, Profil = p.ProfilName };


            return new UsersChoicesViewModel{ UsersChoices = usersChoices};
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