using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Preferences
    {
        public Preferences()
        {
            PreferencesCorpulences = new HashSet<PreferencesCorpulences>();
            PreferencesHairColors = new HashSet<PreferencesHairColors>();
            PreferencesHairSizes = new HashSet<PreferencesHairSizes>();
            PreferencesMusiques = new HashSet<PreferencesMusiques>();
            PreferencesReligions = new HashSet<PreferencesReligions>();
            PreferencesStyles = new HashSet<PreferencesStyles>();
            ProfilsPreferences = new HashSet<ProfilsPreferences>();
            UsersPreferences = new HashSet<UsersPreferences>();
        }

        public short PreferenceId { get; set; }
        public short SexualityId { get; set; }
        public bool Religions { get; set; }
        public bool Age { get; set; }
        public bool Corpulences { get; set; }

        public virtual Sexualities Sexuality { get; set; }
        public virtual ICollection<PreferencesCorpulences> PreferencesCorpulences { get; set; }
        public virtual ICollection<PreferencesHairColors> PreferencesHairColors { get; set; }
        public virtual ICollection<PreferencesHairSizes> PreferencesHairSizes { get; set; }
        public virtual ICollection<PreferencesMusiques> PreferencesMusiques { get; set; }
        public virtual ICollection<PreferencesReligions> PreferencesReligions { get; set; }
        public virtual ICollection<PreferencesStyles> PreferencesStyles { get; set; }
        public virtual ICollection<ProfilsPreferences> ProfilsPreferences { get; set; }
        public virtual ICollection<UsersPreferences> UsersPreferences { get; set; }
    }
}
