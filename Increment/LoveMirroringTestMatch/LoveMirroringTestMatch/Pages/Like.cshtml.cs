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
    public class LikeModel : PageModel
    {
        private readonly LoveMirroringDbContext _context;
        private readonly UserManager<AspNetUsers> _userManager;

        public LikeModel(LoveMirroringDbContext context, UserManager<AspNetUsers> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public UserViewModel SearchUser { get; set; }
        public string Error { get; set; }


        public async Task OnPostConfirmerAsync(string id)
        {
            try {
                var userSelected = (from u in await _context.AspNetUsers.ToListAsync()
                                    where u.Email.Equals(id)
                                    select new UserViewModel { UserName = u.UserName, Age = DateTime.Now.Year - u.Birthday.Year })
                  .FirstOrDefault();
                SearchUser = userSelected;

                string searchUserId = (from u in await _context.AspNetUsers.ToListAsync()
                                       where u.Email.Equals(id)
                                       select u.Id).FirstOrDefault();
                string currentUserId = _userManager.GetUserId(User);

                UserLikes usersMatch = new UserLikes { Id = currentUserId, Id1 = searchUserId };
                _context.UserLikes.Add(usersMatch);
                _context.SaveChanges();
            }
            catch (Exception)
            {
                Error = "Vous avez déjà liker ce profil";
            }

        }


        public async Task OnGetAsync(string id)
        {
            var userSelected = (from u in await _context.AspNetUsers.ToListAsync()
                               where u.Email.Equals(id)
                               select new UserViewModel { UserName = u.UserName, Age = DateTime.Now.Year - u.Birthday.Year })
                               .FirstOrDefault();
            SearchUser = userSelected;
        
        }


        public class UserViewModel 
        { 
            public string UserName { get; set; }
            public int Age { get; set; }
          
        }

            public IActionResult OnGetUnLike()
        {

            return new RedirectToPageResult("UnLike");

        }

        public IActionResult OnGetMatching()
        {

            return new RedirectToPageResult("Matching");

        }
    }
}