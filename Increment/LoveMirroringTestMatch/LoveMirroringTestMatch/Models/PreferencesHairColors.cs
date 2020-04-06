using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferencesHairColors
    {
        public short PreferenceId { get; set; }
        public short HairColorId { get; set; }

        public virtual HairColors HairColor { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
