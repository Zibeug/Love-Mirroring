using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Religions
    {
        public Religions()
        {
            PreferencesReligions = new HashSet<PreferencesReligions>();
        }

        public short ReligionId { get; set; }
        public string ReligionName { get; set; }

        public virtual ICollection<PreferencesReligions> PreferencesReligions { get; set; }
    }
}
