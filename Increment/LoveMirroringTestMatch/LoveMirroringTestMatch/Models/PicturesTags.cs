using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class PicturesTags
    {
        public short PictureId { get; set; }
        public short TagId { get; set; }

        public virtual Pictures Picture { get; set; }
        public virtual Tags Tag { get; set; }
    }
}
