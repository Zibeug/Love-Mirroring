using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class HairColors
    {
        public HairColors()
        {
            PreferencesHairColors = new HashSet<PreferencesHairColors>();
        }

        public short HairColorId { get; set; }
        public string HairColorName { get; set; }

        public virtual ICollection<PreferencesHairColors> PreferencesHairColors { get; set; }
    }
}
