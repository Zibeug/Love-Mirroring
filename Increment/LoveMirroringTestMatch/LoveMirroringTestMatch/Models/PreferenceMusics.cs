using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PreferenceMusics
    {
        public short PreferenceId { get; set; }
        public short MusicId { get; set; }

        public virtual Musics Music { get; set; }
        public virtual Preferences Preference { get; set; }
    }
}
