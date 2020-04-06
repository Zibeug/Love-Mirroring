using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Tags
    {
        public Tags()
        {
            PicturesTags = new HashSet<PicturesTags>();
        }

        public short TagId { get; set; }
        public string TagName { get; set; }

        public virtual ICollection<PicturesTags> PicturesTags { get; set; }
    }
}
