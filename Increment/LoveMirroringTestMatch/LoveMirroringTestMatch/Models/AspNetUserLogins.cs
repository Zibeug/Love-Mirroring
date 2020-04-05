using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class AspNetUserLogins : IdentityUserLogin<string>
    {
        public override string LoginProvider { get; set; }
        public override string ProviderKey { get; set; }
        public override string ProviderDisplayName { get; set; }
        public override string UserId { get; set; }

        public virtual AspNetUsers User { get; set; }
    }
}
