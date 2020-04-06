using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UsersNewsLetters
    {
        public short NewsLetterId { get; set; }
        public string Id { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual NewsLetters NewsLetter { get; set; }
    }
}
