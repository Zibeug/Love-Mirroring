using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UserNewsletters
    {
        public short NewsletterId { get; set; }
        public string Id { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Newsletters Newsletter { get; set; }
    }
}
