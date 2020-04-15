using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Pictures
    {
        public Pictures()
        {
            PictureTag = new HashSet<PictureTag>();
        }

        public short PictureId { get; set; }
        public string Id { get; set; }
        public byte[] PictureView { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual ICollection<PictureTag> PictureTag { get; set; }
    }
}
