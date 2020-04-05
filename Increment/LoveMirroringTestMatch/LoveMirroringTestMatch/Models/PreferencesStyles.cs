using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferencesStyles
    {
        public short PreferenceId { get; set; }
        public short StyleId { get; set; }

        public virtual Preferences Preference { get; set; }
        public virtual Styles Style { get; set; }
    }
}
