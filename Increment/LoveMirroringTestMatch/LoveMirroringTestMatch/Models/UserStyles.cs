using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UserStyles
    {
        public string Id { get; set; }
        public short StyleId { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Styles Style { get; set; }
    }
}
