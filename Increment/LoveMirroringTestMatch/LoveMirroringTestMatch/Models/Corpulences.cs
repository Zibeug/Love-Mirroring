using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Corpulences
    {
        public Corpulences()
        {
            AspNetUsers = new HashSet<AspNetUsers>();
            PreferenceCorpulences = new HashSet<PreferenceCorpulences>();
        }

        public short CorpulenceId { get; set; }
        public string CorpulenceName { get; set; }

        public virtual ICollection<AspNetUsers> AspNetUsers { get; set; }
        public virtual ICollection<PreferenceCorpulences> PreferenceCorpulences { get; set; }
    }
}
