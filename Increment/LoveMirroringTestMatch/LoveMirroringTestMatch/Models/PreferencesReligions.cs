using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferencesReligions
    {
        public short PreferenceId { get; set; }
        public short ReligionId { get; set; }

        public virtual Preferences Preference { get; set; }
        public virtual Religions Religion { get; set; }
    }
}
