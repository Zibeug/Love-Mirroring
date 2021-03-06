﻿using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UserProfils
    {
        public short ProfilId { get; set; }
        public string Id { get; set; }
        public short? UserProfilValue { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Profils Profil { get; set; }
    }
}
