using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class ProfilsPreferences
    {
        public short PreferenceId { get; set; }
        public short ProfilId { get; set; }

        public virtual Preferences Preference { get; set; }
        public virtual Profils Profil { get; set; }
    }
}
