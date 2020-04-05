using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Musiques
    {
        public Musiques()
        {
            PreferencesMusiques = new HashSet<PreferencesMusiques>();
        }

        public short MusiqueId { get; set; }
        public string MusiqueName { get; set; }

        public virtual ICollection<PreferencesMusiques> PreferencesMusiques { get; set; }
    }
}
