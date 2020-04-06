using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class AspNetUsers : IdentityUser<string>
    {
        public AspNetUsers()
        {
            AspNetUserClaims = new HashSet<AspNetUserClaims>();
            AspNetUserLogins = new HashSet<AspNetUserLogins>();
            AspNetUserRoles = new HashSet<AspNetUserRoles>();
            AspNetUserTokens = new HashSet<AspNetUserTokens>();
            Messages = new HashSet<Messages>();
            Pictures = new HashSet<Pictures>();
            TalksIdNavigation = new HashSet<Talks>();
            TalksIdUser2TalksNavigation = new HashSet<Talks>();
            UsersExternalServices = new HashSet<UsersExternalServices>();
            UsersMatchId1Navigation = new HashSet<UsersMatch>();
            UsersMatchIdNavigation = new HashSet<UsersMatch>();
            UsersNewsLetters = new HashSet<UsersNewsLetters>();
            UsersPreferences = new HashSet<UsersPreferences>();
            UsersProfils = new HashSet<UsersProfils>();
        }

        public override string Id { get; set; }
        public override int AccessFailedCount { get; set; }
        public override string ConcurrencyStamp { get; set; }
        public override string Email { get; set; }
        public override bool EmailConfirmed { get; set; }
        public override bool LockoutEnabled { get; set; }
        public override DateTimeOffset? LockoutEnd { get; set; }
        public override string NormalizedEmail { get; set; }
        public override string NormalizedUserName { get; set; }
        public override string PasswordHash { get; set; }
        public override string PhoneNumber { get; set; }
        public override bool PhoneNumberConfirmed { get; set; }
        public override string SecurityStamp { get; set; }
        public override bool TwoFactorEnabled { get; set; }
        public override string UserName { get; set; }
        public DateTime Birthday { get; set; }
        public string Firstname { get; set; }
        public string LastName { get; set; }
        public bool QuizCompleted { get; set; }
        public short SexeId { get; set; }
        public short? SubscriptionId { get; set; }

        public virtual Sexes Sexe { get; set; }
        public virtual Subscriptions Subscription { get; set; }
        public virtual ICollection<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual ICollection<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual ICollection<AspNetUserRoles> AspNetUserRoles { get; set; }
        public virtual ICollection<AspNetUserTokens> AspNetUserTokens { get; set; }
        public virtual ICollection<Messages> Messages { get; set; }
        public virtual ICollection<Pictures> Pictures { get; set; }
        public virtual ICollection<Talks> TalksIdNavigation { get; set; }
        public virtual ICollection<Talks> TalksIdUser2TalksNavigation { get; set; }
        public virtual ICollection<UsersExternalServices> UsersExternalServices { get; set; }
        public virtual ICollection<UsersMatch> UsersMatchId1Navigation { get; set; }
        public virtual ICollection<UsersMatch> UsersMatchIdNavigation { get; set; }
        public virtual ICollection<UsersNewsLetters> UsersNewsLetters { get; set; }
        public virtual ICollection<UsersPreferences> UsersPreferences { get; set; }
        public virtual ICollection<UsersProfils> UsersProfils { get; set; }
    }
}
