using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Religions
    {
        public Religions()
        {
            PreferenceReligions = new HashSet<PreferenceReligions>();
        }

        public short ReligionId { get; set; }
        public string ReligionName { get; set; }

        public virtual ICollection<PreferenceReligions> PreferenceReligions { get; set; }
    }
}
