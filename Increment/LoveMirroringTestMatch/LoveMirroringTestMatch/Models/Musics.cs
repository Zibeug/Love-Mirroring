using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Musics
    {
        public Musics()
        {
            PreferenceMusics = new HashSet<PreferenceMusics>();
            UserMusics = new HashSet<UserMusics>();
        }

        public short MusicId { get; set; }
        public string MusicName { get; set; }

        public virtual ICollection<PreferenceMusics> PreferenceMusics { get; set; }
        public virtual ICollection<UserMusics> UserMusics { get; set; }
    }
}
