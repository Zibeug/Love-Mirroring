using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Corpulences
    {
        public Corpulences()
        {
            PreferencesCorpulences = new HashSet<PreferencesCorpulences>();
        }

        public short CorpulenceId { get; set; }
        public string CorpulenceName { get; set; }

        public virtual ICollection<PreferencesCorpulences> PreferencesCorpulences { get; set; }
    }
}
