using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Sexualities
    {
        public Sexualities()
        {
            Preferences = new HashSet<Preferences>();
        }

        public short SexualityId { get; set; }
        public string SexualityName { get; set; }

        public virtual ICollection<Preferences> Preferences { get; set; }
    }
}
