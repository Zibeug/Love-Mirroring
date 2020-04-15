using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class HairColor
    {
        public HairColor()
        {
            AspNetUsers = new HashSet<AspNetUsers>();
            PreferenceHairColors = new HashSet<PreferenceHairColors>();
        }

        public short HairColorId { get; set; }
        public string HairColorName { get; set; }

        public virtual ICollection<AspNetUsers> AspNetUsers { get; set; }
        public virtual ICollection<PreferenceHairColors> PreferenceHairColors { get; set; }
    }
}
