using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class AspNetUserClaims : IdentityUserClaim<string>
    {
        public override int Id { get; set; }
        public override string UserId { get; set; }
        public override string ClaimType { get; set; }
        public override string ClaimValue { get; set; }

        public virtual AspNetUsers User { get; set; }
    }
}
