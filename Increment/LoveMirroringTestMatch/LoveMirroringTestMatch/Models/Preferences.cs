using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Preferences
    {
        public Preferences()
        {
            PreferenceCorpulences = new HashSet<PreferenceCorpulences>();
            PreferenceHairColors = new HashSet<PreferenceHairColors>();
            PreferenceHairSizes = new HashSet<PreferenceHairSizes>();
            PreferenceMusics = new HashSet<PreferenceMusics>();
            PreferenceReligions = new HashSet<PreferenceReligions>();
            PreferenceStyles = new HashSet<PreferenceStyles>();
        }

        public short PreferenceId { get; set; }
        public string Id { get; set; }
        public short SexualityId { get; set; }
        public short AgeMin { get; set; }
        public short AgeMax { get; set; }

        public virtual AspNetUsers IdNavigation { get; set; }
        public virtual Sexualities Sexuality { get; set; }
        public virtual ICollection<PreferenceCorpulences> PreferenceCorpulences { get; set; }
        public virtual ICollection<PreferenceHairColors> PreferenceHairColors { get; set; }
        public virtual ICollection<PreferenceHairSizes> PreferenceHairSizes { get; set; }
        public virtual ICollection<PreferenceMusics> PreferenceMusics { get; set; }
        public virtual ICollection<PreferenceReligions> PreferenceReligions { get; set; }
        public virtual ICollection<PreferenceStyles> PreferenceStyles { get; set; }
    }
}
