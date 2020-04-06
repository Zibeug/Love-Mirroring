using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UsersPreferences
    {
        public short PreferenceId { get; set; }
        public string Id { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
