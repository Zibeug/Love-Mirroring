using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Newsletters
    {
        public Newsletters()
        {
            UserNewsletters = new HashSet<UserNewsletters>();
        }

        public short NewsletterId { get; set; }
        public string NewsletterName { get; set; }
        public bool NewsletterStatus { get; set; }

        public virtual ICollection<UserNewsletters> UserNewsletters { get; set; }
    }
}
