using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Sexes
    {
        public Sexes()
        {
            AspNetUsers = new HashSet<AspNetUsers>();
        }

        public short SexeId { get; set; }
        public string SexeName { get; set; }

        public virtual ICollection<AspNetUsers> AspNetUsers { get; set; }
    }
}
