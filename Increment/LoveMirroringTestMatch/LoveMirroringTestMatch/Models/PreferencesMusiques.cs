using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferencesMusiques
    {
        public short PreferenceId { get; set; }
        public short MusiqueId { get; set; }

        public virtual Musiques Musique { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
