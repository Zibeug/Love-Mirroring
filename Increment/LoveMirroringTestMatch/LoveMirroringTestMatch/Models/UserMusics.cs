using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UserMusics
    {
        public string Id { get; set; }
        public short MusicId { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Musics Music { get; set; }
    }
}
