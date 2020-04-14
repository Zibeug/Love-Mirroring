using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Profils
    {
        public Profils()
        {
            Answers = new HashSet<Answers>();
            UserProfils = new HashSet<UserProfils>();
        }

        public short ProfilId { get; set; }
        public string ProfilName { get; set; }
        public string ProfilDescription { get; set; }

        public virtual ICollection<Answers> Answers { get; set; }
        public virtual ICollection<UserProfils> UserProfils { get; set; }
    }
}
