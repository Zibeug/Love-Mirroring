using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class AspNetUserTokens : IdentityUserToken<string>
    {
        public override string UserId { get; set; }
        public override string LoginProvider { get; set; }
        public override string Name { get; set; }
        public override string Value { get; set; }

        public virtual AspNetUsers User { get; set; }
    }
}
