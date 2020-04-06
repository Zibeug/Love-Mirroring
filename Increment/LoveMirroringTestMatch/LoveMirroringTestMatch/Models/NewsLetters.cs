using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class NewsLetters
    {
        public NewsLetters()
        {
            UsersNewsLetters = new HashSet<UsersNewsLetters>();
        }

        public short NewsLetterId { get; set; }
        public string NewsLetterName { get; set; }

        public virtual ICollection<UsersNewsLetters> UsersNewsLetters { get; set; }
    }
}
