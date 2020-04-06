using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Styles
    {
        public Styles()
        {
            PreferencesStyles = new HashSet<PreferencesStyles>();
        }

        public short StyleId { get; set; }
        public string StyleName { get; set; }

        public virtual ICollection<PreferencesStyles> PreferencesStyles { get; set; }
    }
}
