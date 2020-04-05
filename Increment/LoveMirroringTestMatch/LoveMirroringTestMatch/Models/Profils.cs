using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Profils
    {
        public Profils()
        {
            Answers = new HashSet<Answers>();
            ProfilsPreferences = new HashSet<ProfilsPreferences>();
            UsersProfils = new HashSet<UsersProfils>();
        }

        public short ProfilId { get; set; }
        public string ProfilName { get; set; }
        public string ProfilDescription { get; set; }
        public short ProfilValue { get; set; }

        public virtual ICollection<Answers> Answers { get; set; }
        public virtual ICollection<ProfilsPreferences> ProfilsPreferences { get; set; }
        public virtual ICollection<UsersProfils> UsersProfils { get; set; }
    }
}
