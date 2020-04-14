using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferenceHairColors
    {
        public short PreferenceId { get; set; }
        public short HairColorId { get; set; }

        public virtual HairColor HairColor { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
