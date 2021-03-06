﻿using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class AspNetUserRoles : IdentityUserRole<string>
    {
        public override string UserId { get; set; }
        public override string RoleId { get; set; }

        public virtual AspNetRoles User { get; set; }
        public virtual AspNetUsers UserNavigation { get; set; }
    }
}
