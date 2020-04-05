using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Pictures
    {
        public Pictures()
        {
            PicturesTags = new HashSet<PicturesTags>();
        }

        public short PictureId { get; set; }
        public string Id { get; set; }
        public byte[] PictureView { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual ICollection<PicturesTags> PicturesTags { get; set; }
    }
}
