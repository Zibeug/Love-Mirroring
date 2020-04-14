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
            Preferences = new HashSet<Preferences>();
            TalksIdNavigation = new HashSet<Talks>();
            TalksIdUser2TalkNavigation = new HashSet<Talks>();
            UserExternalServices = new HashSet<UserExternalServices>();
            UserLikesId1Navigation = new HashSet<UserLikes>();
            UserLikesIdNavigation = new HashSet<UserLikes>();
            UserMusics = new HashSet<UserMusics>();
            UserNewsletters = new HashSet<UserNewsletters>();
            UserProfils = new HashSet<UserProfils>();
            UserStyles = new HashSet<UserStyles>();
        }

        public override string Id { get; set; }
        public short? HairColorId { get; set; }
        public short? CorpulenceId { get; set; }
        public short? SexeId { get; set; }
        public short? HairSizeId { get; set; }
        public short? SubscriptionId { get; set; }
        public short? SexualityId { get; set; }
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

        public virtual Corpulences Corpulence { get; set; }
        public virtual HairColor HairColor { get; set; }
        public virtual HairSizes HairSize { get; set; }
        public virtual Sexes Sexe { get; set; }
        public virtual Sexualities Sexuality { get; set; }
        public virtual Subscriptions Subscription { get; set; }
        public virtual ICollection<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual ICollection<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual ICollection<AspNetUserRoles> AspNetUserRoles { get; set; }
        public virtual ICollection<AspNetUserTokens> AspNetUserTokens { get; set; }
        public virtual ICollection<Messages> Messages { get; set; }
        public virtual ICollection<Pictures> Pictures { get; set; }
        public virtual ICollection<Preferences> Preferences { get; set; }
        public virtual ICollection<Talks> TalksIdNavigation { get; set; }
        public virtual ICollection<Talks> TalksIdUser2TalkNavigation { get; set; }
        public virtual ICollection<UserExternalServices> UserExternalServices { get; set; }
        public virtual ICollection<UserLikes> UserLikesId1Navigation { get; set; }
        public virtual ICollection<UserLikes> UserLikesIdNavigation { get; set; }
        public virtual ICollection<UserMusics> UserMusics { get; set; }
        public virtual ICollection<UserNewsletters> UserNewsletters { get; set; }
        public virtual ICollection<UserProfils> UserProfils { get; set; }
        public virtual ICollection<UserStyles> UserStyles { get; set; }
    }
}
