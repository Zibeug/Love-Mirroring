using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferenceStyles
    {
        public short PreferenceId { get; set; }
        public short StyleId { get; set; }

        public virtual Preferences Preference { get; set; }
        public virtual Styles Style { get; set; }
    }
}
