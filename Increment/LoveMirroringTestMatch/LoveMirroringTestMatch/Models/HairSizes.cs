using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class HairSizes
    {
        public HairSizes()
        {
            AspNetUsers = new HashSet<AspNetUsers>();
            PreferenceHairSizes = new HashSet<PreferenceHairSizes>();
        }

        public short HairSizeId { get; set; }
        public string HairSizeName { get; set; }

        public virtual ICollection<AspNetUsers> AspNetUsers { get; set; }
        public virtual ICollection<PreferenceHairSizes> PreferenceHairSizes { get; set; }
    }
}
