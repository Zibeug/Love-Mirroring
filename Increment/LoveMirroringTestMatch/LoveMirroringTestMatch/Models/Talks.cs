using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Talks
    {
        public Talks()
        {
            Messages = new HashSet<Messages>();
        }

        public short TalkId { get; set; }
        public string Id { get; set; }
        public string IdUser2Talk { get; set; }
        public string TalkName { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual AspNetUsers IdUser2TalkNavigation { get; set; }
        public virtual ICollection<Messages> Messages { get; set; }
    }
}
