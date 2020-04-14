using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Styles
    {
        public Styles()
        {
            PreferenceStyles = new HashSet<PreferenceStyles>();
            UserStyles = new HashSet<UserStyles>();
        }

        public short StyleId { get; set; }
        public string StyleName { get; set; }

        public virtual ICollection<PreferenceStyles> PreferenceStyles { get; set; }
        public virtual ICollection<UserStyles> UserStyles { get; set; }
    }
}
