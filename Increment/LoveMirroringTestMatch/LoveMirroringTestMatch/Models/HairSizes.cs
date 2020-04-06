using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class HairSizes
    {
        public HairSizes()
        {
            PreferencesHairSizes = new HashSet<PreferencesHairSizes>();
        }

        public short HairSizeId { get; set; }
        public string HairSizeName { get; set; }

        public virtual ICollection<PreferencesHairSizes> PreferencesHairSizes { get; set; }
    }
}
