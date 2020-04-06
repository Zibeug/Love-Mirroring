using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace LoveMirroringTestMatch.Models
{
    public partial class LoveMirroringContext : IdentityDbContext<AspNetUsers,AspNetRoles,string,AspNetUserClaims,AspNetUserRoles,AspNetUserLogins,AspNetRoleClaims,AspNetUserTokens>
    {
        public LoveMirroringContext()
        {
        }

        public LoveMirroringContext(DbContextOptions<LoveMirroringContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Answers> Answers { get; set; }
        public virtual DbSet<AspNetRoleClaims> AspNetRoleClaims { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUserRoles> AspNetUserRoles { get; set; }
        public virtual DbSet<AspNetUserTokens> AspNetUserTokens { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<Corpulences> Corpulences { get; set; }
        public virtual DbSet<ExternalServices> ExternalServices { get; set; }
        public virtual DbSet<HairColors> HairColors { get; set; }
        public virtual DbSet<HairSizes> HairSizes { get; set; }
        public virtual DbSet<Messages> Messages { get; set; }
        public virtual DbSet<Musiques> Musiques { get; set; }
        public virtual DbSet<NewsLetters> NewsLetters { get; set; }
        public virtual DbSet<Pictures> Pictures { get; set; }
        public virtual DbSet<PicturesTags> PicturesTags { get; set; }
        public virtual DbSet<Preferences> Preferences { get; set; }
        public virtual DbSet<PreferencesCorpulences> PreferencesCorpulences { get; set; }
        public virtual DbSet<PreferencesHairColors> PreferencesHairColors { get; set; }
        public virtual DbSet<PreferencesHairSizes> PreferencesHairSizes { get; set; }
        public virtual DbSet<PreferencesMusiques> PreferencesMusiques { get; set; }
        public virtual DbSet<PreferencesReligions> PreferencesReligions { get; set; }
        public virtual DbSet<PreferencesStyles> PreferencesStyles { get; set; }
        public virtual DbSet<Profils> Profils { get; set; }
        public virtual DbSet<ProfilsPreferences> ProfilsPreferences { get; set; }
        public virtual DbSet<Questions> Questions { get; set; }
        public virtual DbSet<Religions> Religions { get; set; }
        public virtual DbSet<Sexes> Sexes { get; set; }
        public virtual DbSet<Sexualities> Sexualities { get; set; }
        public virtual DbSet<Styles> Styles { get; set; }
        public virtual DbSet<Subscriptions> Subscriptions { get; set; }
        public virtual DbSet<Tags> Tags { get; set; }
        public virtual DbSet<Talks> Talks { get; set; }
        public virtual DbSet<UsersExternalServices> UsersExternalServices { get; set; }
        public virtual DbSet<UsersMatch> UsersMatch { get; set; }
        public virtual DbSet<UsersNewsLetters> UsersNewsLetters { get; set; }
        public virtual DbSet<UsersPreferences> UsersPreferences { get; set; }
        public virtual DbSet<UsersProfils> UsersProfils { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {

            }
        }

        /// <summary>
        /// Permet de génér un id à la création d'un utilisateur
        /// </summary>
        /// <param name="modelBuilder"></param>
        protected override void OnModelCreating(ModelBuilder modelBuilder) 
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Answers>(entity =>
            {
                entity.HasKey(e => e.AnswerId)
                    .HasName("PK_Answer");

                entity.Property(e => e.AnswerId).HasColumnName("AnswerID");

                entity.Property(e => e.AnswerText)
                    .IsRequired()
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.HasOne(d => d.Profil)
                    .WithMany(p => p.Answers)
                    .HasForeignKey(d => d.ProfilId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Answers_PROFIL");

                entity.HasOne(d => d.Question)
                    .WithMany(p => p.Answers)
                    .HasForeignKey(d => d.QuestionId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Answers_QUESTION");
            });

            modelBuilder.Entity<AspNetRoleClaims>(entity =>
            {
                entity.HasIndex(e => e.RoleId);

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.RoleId).IsRequired();

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId);
            });

            modelBuilder.Entity<AspNetRoles>(entity =>
            {
                entity.HasIndex(e => e.NormalizedName)
                    .HasName("RoleNameIndex")
                    .IsUnique();

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.NormalizedName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetUserClaims>(entity =>
            {
                entity.HasIndex(e => e.UserId);

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserLogins>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.HasIndex(e => e.UserId);

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserRoles>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId });

                entity.HasIndex(e => e.RoleId);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.RoleId);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserTokens>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId);
            });

            ///     
            modelBuilder.Entity<AspNetUsers>().Property(u => u.Id).ValueGeneratedOnAdd();

            modelBuilder.Entity<AspNetUsers>(entity =>
            {
                entity.HasIndex(e => e.NormalizedEmail)
                    .HasName("EmailIndex");

                entity.HasIndex(e => e.NormalizedUserName)
                    .HasName("UserNameIndex")
                    .IsUnique();

                entity.Property(e => e.Birthday).HasDefaultValueSql("('0001-01-01T00:00:00.0000000')");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);

                entity.HasOne(d => d.Sexe)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.SexeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AspNetUsers_SEXE");

                entity.HasOne(d => d.Subscription)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.SubscriptionId)
                    .HasConstraintName("FK_AspNetUsers_SUBSCRIPTION");
            });

            modelBuilder.Entity<Corpulences>(entity =>
            {
                entity.HasKey(e => e.CorpulenceId)
                    .HasName("PK_Corpulence");

                entity.Property(e => e.CorpulenceName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<ExternalServices>(entity =>
            {
                entity.HasKey(e => e.ExternalServiceId)
                    .HasName("PK_ExternalService");

                entity.Property(e => e.ExternalServiceName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<HairColors>(entity =>
            {
                entity.HasKey(e => e.HairColorId)
                    .HasName("PK_HairColor");

                entity.Property(e => e.HairColorName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<HairSizes>(entity =>
            {
                entity.HasKey(e => e.HairSizeId)
                    .HasName("PK_HairSize");

                entity.Property(e => e.HairSizeName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Messages>(entity =>
            {
                entity.HasKey(e => e.MessageId)
                    .HasName("PK_Message");

                entity.Property(e => e.Id)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.MessageDate).HasColumnType("datetime");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.Messages)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MESSAGE_ASPNETUSERS");

                entity.HasOne(d => d.Talk)
                    .WithMany(p => p.Messages)
                    .HasForeignKey(d => d.TalkId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MESSAGE_TALK");
            });

            modelBuilder.Entity<Musiques>(entity =>
            {
                entity.HasKey(e => e.MusiqueId)
                    .HasName("PK_Musique");

                entity.Property(e => e.MusiqueName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<NewsLetters>(entity =>
            {
                entity.HasKey(e => e.NewsLetterId)
                    .HasName("PK_NewsLetter");

                entity.Property(e => e.NewsLetterName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Pictures>(entity =>
            {
                entity.HasKey(e => e.PictureId)
                    .HasName("PK_Picture");

                entity.Property(e => e.Id)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.PictureView)
                    .IsRequired()
                    .HasColumnType("image");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.Pictures)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PICTURE_ASPNETUSERS");
            });

            modelBuilder.Entity<PicturesTags>(entity =>
            {
                entity.HasKey(e => new { e.PictureId, e.TagId });

                entity.HasOne(d => d.Picture)
                    .WithMany(p => p.PicturesTags)
                    .HasForeignKey(d => d.PictureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PICTURETAG_PICTURE");

                entity.HasOne(d => d.Tag)
                    .WithMany(p => p.PicturesTags)
                    .HasForeignKey(d => d.TagId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PICTURETAG_TAG");
            });

            modelBuilder.Entity<Preferences>(entity =>
            {
                entity.HasKey(e => e.PreferenceId);

                entity.HasOne(d => d.Sexuality)
                    .WithMany(p => p.Preferences)
                    .HasForeignKey(d => d.SexualityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCE_SEXUALITY");
            });

            modelBuilder.Entity<PreferencesCorpulences>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.CorpulenceId })
                    .HasName("PK_PREFERENCECORPULENCE");

                entity.HasOne(d => d.Corpulence)
                    .WithMany(p => p.PreferencesCorpulences)
                    .HasForeignKey(d => d.CorpulenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCECORPULENCE_CORPULENCE");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferencesCorpulences)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCECORPULENCE_PREFERENCE");
            });

            modelBuilder.Entity<PreferencesHairColors>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.HairColorId })
                    .HasName("PK_PREFERENCEHAIRCOLOR");

                entity.HasOne(d => d.HairColor)
                    .WithMany(p => p.PreferencesHairColors)
                    .HasForeignKey(d => d.HairColorId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRCOLOR_HAIRCOLOR");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferencesHairColors)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRCOLOR_PREFERENCE");
            });

            modelBuilder.Entity<PreferencesHairSizes>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.HairSizeId });

                entity.HasOne(d => d.HairSize)
                    .WithMany(p => p.PreferencesHairSizes)
                    .HasForeignKey(d => d.HairSizeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRSIZE_HAIRSIZE");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferencesHairSizes)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRSIZE_PREFERENCE");
            });

            modelBuilder.Entity<PreferencesMusiques>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.MusiqueId });

                entity.HasOne(d => d.Musique)
                    .WithMany(p => p.PreferencesMusiques)
                    .HasForeignKey(d => d.MusiqueId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEMUSIQUE_MUSIQUE");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferencesMusiques)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEMUSIQUE_PREFERENCE");
            });

            modelBuilder.Entity<PreferencesReligions>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.ReligionId })
                    .HasName("PK_PREFERENCERELIGION");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferencesReligions)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCERELIGION_PREFERENCE");

                entity.HasOne(d => d.Religion)
                    .WithMany(p => p.PreferencesReligions)
                    .HasForeignKey(d => d.ReligionId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCERELIGION_RELIGION");
            });

            modelBuilder.Entity<PreferencesStyles>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.StyleId });

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferencesStyles)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCESTYLE_PREFERENCE");

                entity.HasOne(d => d.Style)
                    .WithMany(p => p.PreferencesStyles)
                    .HasForeignKey(d => d.StyleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCESTYLE_STYLE");
            });

            modelBuilder.Entity<Profils>(entity =>
            {
                entity.HasKey(e => e.ProfilId);

                entity.Property(e => e.ProfilDescription)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.ProfilName)
                    .IsRequired()
                    .HasMaxLength(64)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<ProfilsPreferences>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.ProfilId })
                    .HasName("PK_PROFILPREFERENCE");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.ProfilsPreferences)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PROFILPREFERENCE_PREFERENCE");

                entity.HasOne(d => d.Profil)
                    .WithMany(p => p.ProfilsPreferences)
                    .HasForeignKey(d => d.ProfilId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PROFILPREFERENCE_PROFIL");
            });

            modelBuilder.Entity<Questions>(entity =>
            {
                entity.HasKey(e => e.QuestionId);

                entity.Property(e => e.QuestionText)
                    .IsRequired()
                    .HasMaxLength(128)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Religions>(entity =>
            {
                entity.HasKey(e => e.ReligionId);

                entity.Property(e => e.ReligionName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Sexes>(entity =>
            {
                entity.HasKey(e => e.SexeId);

                entity.Property(e => e.SexeName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Sexualities>(entity =>
            {
                entity.HasKey(e => e.SexualityId);

                entity.Property(e => e.SexualityName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Styles>(entity =>
            {
                entity.HasKey(e => e.StyleId);

                entity.Property(e => e.StyleName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Subscriptions>(entity =>
            {
                entity.HasKey(e => e.SubscriptionId);

                entity.Property(e => e.SubscriptionDate).HasColumnType("datetime");

                entity.Property(e => e.SubscriptionName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SubscriptionPrice).HasColumnType("money");
            });

            modelBuilder.Entity<Tags>(entity =>
            {
                entity.HasKey(e => e.TagId);

                entity.Property(e => e.TagName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Talks>(entity =>
            {
                entity.HasKey(e => e.TalkId);

                entity.Property(e => e.Id)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.IdUser2Talks)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.TalkName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.TalksIdNavigation)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TALK_ASPNETUSERS");

                entity.HasOne(d => d.IdUser2TalksNavigation)
                    .WithMany(p => p.TalksIdUser2TalksNavigation)
                    .HasForeignKey(d => d.IdUser2Talks)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TALK_ASPNETUSERS1");
            });

            modelBuilder.Entity<UsersExternalServices>(entity =>
            {
                entity.HasKey(e => new { e.ExternalServiceId, e.Id });

                entity.HasOne(d => d.ExternalService)
                    .WithMany(p => p.UsersExternalServices)
                    .HasForeignKey(d => d.ExternalServiceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USEREXTERNALSERVICES_EXTERNALSERVICE");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UsersExternalServices)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USEREXTERNALSERVICES_ASPNETUSERS");
            });

            modelBuilder.Entity<UsersMatch>(entity =>
            {
                entity.HasKey(e => new { e.Id, e.Id1 });

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Id1).HasColumnName("ID_1");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UsersMatchIdNavigation)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERSMATCH_ASPNETUSERS");

                entity.HasOne(d => d.Id1Navigation)
                    .WithMany(p => p.UsersMatchId1Navigation)
                    .HasForeignKey(d => d.Id1)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERSMATCH_ASPNETUSERS1");
            });

            modelBuilder.Entity<UsersNewsLetters>(entity =>
            {
                entity.HasKey(e => new { e.NewsLetterId, e.Id });

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UsersNewsLetters)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERNEWSLETTER_ASPNETUSERS");

                entity.HasOne(d => d.NewsLetter)
                    .WithMany(p => p.UsersNewsLetters)
                    .HasForeignKey(d => d.NewsLetterId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERNEWSLETTER_NEWSLETTER");
            });

            modelBuilder.Entity<UsersPreferences>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.Id });

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UsersPreferences)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERPREFERENCE_ASPNETUSERS");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.UsersPreferences)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERPREFERENCE_PREFERENCE");
            });

            modelBuilder.Entity<UsersProfils>(entity =>
            {
                entity.HasKey(e => new { e.ProfilId, e.Id });

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UsersProfils)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERPROFIL_ASPNETUSERS");

                entity.HasOne(d => d.Profil)
                    .WithMany(p => p.UsersProfils)
                    .HasForeignKey(d => d.ProfilId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERPROFIL_PROFIL");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
