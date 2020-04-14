using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Tags
    {
        public Tags()
        {
            PictureTag = new HashSet<PictureTag>();
        }

        public short TagId { get; set; }
        public string TagName { get; set; }

        public virtual ICollection<PictureTag> PictureTag { get; set; }
    }
}
