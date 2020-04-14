using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferenceHairSizes
    {
        public short PreferenceId { get; set; }
        public short HairSizeId { get; set; }

        public virtual HairSizes HairSize { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
