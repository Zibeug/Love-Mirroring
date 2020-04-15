using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Sexualities
    {
        public Sexualities()
        {
            AspNetUsers = new HashSet<AspNetUsers>();
            Preferences = new HashSet<Preferences>();
        }

        public short SexualityId { get; set; }
        public string SexualityName { get; set; }

        public virtual ICollection<AspNetUsers> AspNetUsers { get; set; }
        public virtual ICollection<Preferences> Preferences { get; set; }
    }
}
