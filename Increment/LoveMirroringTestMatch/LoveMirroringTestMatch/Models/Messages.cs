using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Messages
    {
        public short MessageId { get; set; }
        public string Id { get; set; }
        public short TalkId { get; set; }
        public DateTime MessageDate { get; set; }
        public string MessageText { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Talks Talk { get; set; }
    }
}
