using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UsersMatch
    {
        public string Id { get; set; }
        public string Id1 { get; set; }

        public virtual AspNetUsers Id1Navigation { get; set; }
        public virtual AspNetUsers IdNavigation { get; set; }
    }
}
