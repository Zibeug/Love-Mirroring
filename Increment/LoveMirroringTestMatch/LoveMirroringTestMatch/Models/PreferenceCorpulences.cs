using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferenceCorpulences
    {
        public short PreferenceId { get; set; }
        public short CorpulenceId { get; set; }

        public virtual Corpulences Corpulence { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
