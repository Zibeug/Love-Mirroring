using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace LoveMirroringTestMatch.Models
{
    public partial class LoveMirroringDbContext : IdentityDbContext<AspNetUsers, AspNetRoles, string, AspNetUserClaims, AspNetUserRoles, AspNetUserLogins, AspNetRoleClaims, AspNetUserTokens>
    {
        public LoveMirroringDbContext()
        {
        }

        public LoveMirroringDbContext(DbContextOptions<LoveMirroringDbContext> options)
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
        public virtual DbSet<HairColor> HairColor { get; set; }
        public virtual DbSet<HairSizes> HairSizes { get; set; }
        public virtual DbSet<Messages> Messages { get; set; }
        public virtual DbSet<Musics> Musics { get; set; }
        public virtual DbSet<Newsletters> Newsletters { get; set; }
        public virtual DbSet<PictureTag> PictureTag { get; set; }
        public virtual DbSet<Pictures> Pictures { get; set; }
        public virtual DbSet<PreferenceCorpulences> PreferenceCorpulences { get; set; }
        public virtual DbSet<PreferenceHairColors> PreferenceHairColors { get; set; }
        public virtual DbSet<PreferenceHairSizes> PreferenceHairSizes { get; set; }
        public virtual DbSet<PreferenceMusics> PreferenceMusics { get; set; }
        public virtual DbSet<PreferenceReligions> PreferenceReligions { get; set; }
        public virtual DbSet<PreferenceStyles> PreferenceStyles { get; set; }
        public virtual DbSet<Preferences> Preferences { get; set; }
        public virtual DbSet<Profils> Profils { get; set; }
        public virtual DbSet<Questions> Questions { get; set; }
        public virtual DbSet<Religions> Religions { get; set; }
        public virtual DbSet<Sexes> Sexes { get; set; }
        public virtual DbSet<Sexualities> Sexualities { get; set; }
        public virtual DbSet<Styles> Styles { get; set; }
        public virtual DbSet<Subscriptions> Subscriptions { get; set; }
        public virtual DbSet<Tags> Tags { get; set; }
        public virtual DbSet<Talks> Talks { get; set; }
        public virtual DbSet<UserExternalServices> UserExternalServices { get; set; }
        public virtual DbSet<UserLikes> UserLikes { get; set; }
        public virtual DbSet<UserMusics> UserMusics { get; set; }
        public virtual DbSet<UserNewsletters> UserNewsletters { get; set; }
        public virtual DbSet<UserProfils> UserProfils { get; set; }
        public virtual DbSet<UserStyles> UserStyles { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=localhost;Database=LoveMirroring;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Answers>(entity =>
            {
                entity.HasKey(e => e.AnswerId)
                    .HasName("PK_ANSWERS");

                entity.Property(e => e.AnswerText)
                    .IsRequired()
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.HasOne(d => d.Profil)
                    .WithMany(p => p.Answers)
                    .HasForeignKey(d => d.ProfilId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ANSWERS_PROFILS");

                entity.HasOne(d => d.Question)
                    .WithMany(p => p.Answers)
                    .HasForeignKey(d => d.QuestionId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ANSWERS_QUESTIONS");
            });

            modelBuilder.Entity<AspNetRoleClaims>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.RoleId)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ASPNETROLECLAIMS_ASPNETROLES");
            });

            modelBuilder.Entity<AspNetRoles>(entity =>
            {
                entity.Property(e => e.Name)
                    .HasMaxLength(256)
                    .IsUnicode(false);

                entity.Property(e => e.NormalizedName)
                    .HasMaxLength(256)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<AspNetUserClaims>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ASPNETUSERCLAIMS_ASPNETUSERS");
            });

            modelBuilder.Entity<AspNetUserLogins>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.Property(e => e.LoginProvider)
                    .HasMaxLength(450)
                    .IsUnicode(false);

                entity.Property(e => e.ProviderKey)
                    .HasMaxLength(450)
                    .IsUnicode(false);

                entity.Property(e => e.ProviderDisplayName).HasColumnType("text");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ASPNETUSERLOGINS_ASPNETUSERS");
            });

            modelBuilder.Entity<AspNetUserRoles>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId });

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ASPNETUSERROLES_ASPNETROLES");

                entity.HasOne(d => d.UserNavigation)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ASPNETUSERROLES_ASPNETUSERS");
            });

            modelBuilder.Entity<AspNetUserTokens>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ASPNETUSERTOKENS_ASPNETUSERS");
            });

            modelBuilder.Entity<AspNetUsers>(entity =>
            {
                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);

                entity.HasOne(d => d.Corpulence)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.CorpulenceId)
                    .HasConstraintName("FK_ASPNETUSERS_CORPULENCES");

                entity.HasOne(d => d.HairColor)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.HairColorId)
                    .HasConstraintName("FK_ASPNETUSERS_HAIRCOLORS");

                entity.HasOne(d => d.HairSize)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.HairSizeId)
                    .HasConstraintName("FK_ASPNETUSERS_HAIRSIZES");

                entity.HasOne(d => d.Sexe)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.SexeId)
                    .HasConstraintName("FK_ASPNETUSERS_SEXES");

                entity.HasOne(d => d.Sexuality)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.SexualityId)
                    .HasConstraintName("FK_ASPNETUSERS_SEXUALITIES");

                entity.HasOne(d => d.Subscription)
                    .WithMany(p => p.AspNetUsers)
                    .HasForeignKey(d => d.SubscriptionId)
                    .HasConstraintName("FK_ASPNETUSERS_SUBSCRIPTIONS");
            });

            modelBuilder.Entity<Corpulences>(entity =>
            {
                entity.HasKey(e => e.CorpulenceId)
                    .HasName("PK_CORPULENCES");

                entity.Property(e => e.CorpulenceName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<ExternalServices>(entity =>
            {
                entity.HasKey(e => e.ExternalServiceId)
                    .HasName("PK_EXTERNALSERVICES");

                entity.Property(e => e.ExternalServiceName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<HairColor>(entity =>
            {
                entity.Property(e => e.HairColorName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<HairSizes>(entity =>
            {
                entity.HasKey(e => e.HairSizeId)
                    .HasName("PK_HAIRSIZES");

                entity.Property(e => e.HairSizeName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Messages>(entity =>
            {
                entity.HasKey(e => e.MessageId)
                    .HasName("PK_MESSAGES");

                entity.Property(e => e.Id)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.MessageDate).HasColumnType("datetime");

                entity.Property(e => e.MessageText)
                    .IsRequired()
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.Messages)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MESSAGES_ASPNETUSERS");

                entity.HasOne(d => d.Talk)
                    .WithMany(p => p.Messages)
                    .HasForeignKey(d => d.TalkId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MESSAGES_TALKS");
            });

            modelBuilder.Entity<Musics>(entity =>
            {
                entity.HasKey(e => e.MusicId)
                    .HasName("PK_MUSICS");

                entity.Property(e => e.MusicName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Newsletters>(entity =>
            {
                entity.HasKey(e => e.NewsletterId)
                    .HasName("PK_NEWSLETTERS");

                entity.Property(e => e.NewsletterName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<PictureTag>(entity =>
            {
                entity.HasKey(e => new { e.PictureId, e.TagId })
                    .HasName("PK_PICTURETAG");

                entity.HasOne(d => d.Picture)
                    .WithMany(p => p.PictureTag)
                    .HasForeignKey(d => d.PictureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PICTURETAG_PICTURES");

                entity.HasOne(d => d.Tag)
                    .WithMany(p => p.PictureTag)
                    .HasForeignKey(d => d.TagId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PICTURETAG_TAGS");
            });

            modelBuilder.Entity<Pictures>(entity =>
            {
                entity.HasKey(e => e.PictureId)
                    .HasName("PK_PICTURES");

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
                    .HasConstraintName("FK_PICTURES_ASPNETUSERS");
            });

            modelBuilder.Entity<PreferenceCorpulences>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.CorpulenceId })
                    .HasName("PK_PREFERENCECORPULENCES");

                entity.HasOne(d => d.Corpulence)
                    .WithMany(p => p.PreferenceCorpulences)
                    .HasForeignKey(d => d.CorpulenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCECORPULENCES_CORPULENCES");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferenceCorpulences)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCECORPULENCES_PREFERENCES");
            });

            modelBuilder.Entity<PreferenceHairColors>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.HairColorId })
                    .HasName("PK_PREFERENCEHAIRCOLORS");

                entity.HasOne(d => d.HairColor)
                    .WithMany(p => p.PreferenceHairColors)
                    .HasForeignKey(d => d.HairColorId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRCOLORS_HAIRCOLORS");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferenceHairColors)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRCOLORS_PREFERENCES");
            });

            modelBuilder.Entity<PreferenceHairSizes>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.HairSizeId })
                    .HasName("PK_PREFERENCEHAIRSIZES");

                entity.HasOne(d => d.HairSize)
                    .WithMany(p => p.PreferenceHairSizes)
                    .HasForeignKey(d => d.HairSizeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRSIZES_HAIRSIZES");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferenceHairSizes)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEHAIRSIZES_PREFERENCES");
            });

            modelBuilder.Entity<PreferenceMusics>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.MusicId })
                    .HasName("PK_PREFERENCEMUSICS");

                entity.HasOne(d => d.Music)
                    .WithMany(p => p.PreferenceMusics)
                    .HasForeignKey(d => d.MusicId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEMUSICS_MUSICS");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferenceMusics)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCEMUSICS_PREFERENCES");
            });

            modelBuilder.Entity<PreferenceReligions>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.ReligionId })
                    .HasName("PK_PREFERENCERELIGIONS");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferenceReligions)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCERELIGIONS_PREFERENCES");

                entity.HasOne(d => d.Religion)
                    .WithMany(p => p.PreferenceReligions)
                    .HasForeignKey(d => d.ReligionId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCERELIGIONS_RELIGIONS");
            });

            modelBuilder.Entity<PreferenceStyles>(entity =>
            {
                entity.HasKey(e => new { e.PreferenceId, e.StyleId })
                    .HasName("PK_PREFERENCESTYLES");

                entity.HasOne(d => d.Preference)
                    .WithMany(p => p.PreferenceStyles)
                    .HasForeignKey(d => d.PreferenceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCESTYLES_PREFERENCES");

                entity.HasOne(d => d.Style)
                    .WithMany(p => p.PreferenceStyles)
                    .HasForeignKey(d => d.StyleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCESTYLES_STYLES");
            });

            modelBuilder.Entity<Preferences>(entity =>
            {
                entity.HasKey(e => e.PreferenceId)
                    .HasName("PK_PREFERENCES");

                entity.Property(e => e.Id)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.Preferences)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCES_ASPNETUSERS");

                entity.HasOne(d => d.Sexuality)
                    .WithMany(p => p.Preferences)
                    .HasForeignKey(d => d.SexualityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PREFERENCES_SEXUALITIES");
            });

            modelBuilder.Entity<Profils>(entity =>
            {
                entity.HasKey(e => e.ProfilId)
                    .HasName("PK_PROFILS");

                entity.Property(e => e.ProfilDescription)
                    .IsRequired()
                    .HasColumnType("text");

                entity.Property(e => e.ProfilName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Questions>(entity =>
            {
                entity.HasKey(e => e.QuestionId)
                    .HasName("PK_QUESTIONS");

                entity.Property(e => e.QuestionText)
                    .IsRequired()
                    .HasMaxLength(128)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Religions>(entity =>
            {
                entity.HasKey(e => e.ReligionId)
                    .HasName("PK_RELIGIONS");

                entity.Property(e => e.ReligionName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Sexes>(entity =>
            {
                entity.HasKey(e => e.SexeId)
                    .HasName("PK_SEXES");

                entity.Property(e => e.SexeName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Sexualities>(entity =>
            {
                entity.HasKey(e => e.SexualityId)
                    .HasName("PK_SEXUALITIES");

                entity.Property(e => e.SexualityName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Styles>(entity =>
            {
                entity.HasKey(e => e.StyleId)
                    .HasName("PK_STYLES");

                entity.Property(e => e.StyleName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Subscriptions>(entity =>
            {
                entity.HasKey(e => e.SubscriptionId)
                    .HasName("PK_SUBSCRIPTIONS");

                entity.Property(e => e.SubscriptionDate).HasColumnType("datetime");

                entity.Property(e => e.SubscriptionName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);

                entity.Property(e => e.SubscriptionPrice).HasColumnType("money");
            });

            modelBuilder.Entity<Tags>(entity =>
            {
                entity.HasKey(e => e.TagId)
                    .HasName("PK_TAGS");

                entity.Property(e => e.TagName)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Talks>(entity =>
            {
                entity.HasKey(e => e.TalkId)
                    .HasName("PK_TALKS");

                entity.Property(e => e.Id)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.IdUser2Talk)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.TalkName)
                    .IsRequired()
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.TalksIdNavigation)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TALKS_ASPNETUSERS");

                entity.HasOne(d => d.IdUser2TalkNavigation)
                    .WithMany(p => p.TalksIdUser2TalkNavigation)
                    .HasForeignKey(d => d.IdUser2Talk)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TALKS_ASPNETUSERS1");
            });

            modelBuilder.Entity<UserExternalServices>(entity =>
            {
                entity.HasKey(e => new { e.ExternalServiceId, e.Id })
                    .HasName("PK_USEREXTERNALSERVICES");

                entity.HasOne(d => d.ExternalService)
                    .WithMany(p => p.UserExternalServices)
                    .HasForeignKey(d => d.ExternalServiceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USEREXTERNALSERVICES_EXTERNALSERVICES");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UserExternalServices)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USEREXTERNALSERVICES_ASPNETUSERS");
            });

            modelBuilder.Entity<UserLikes>(entity =>
            {
                entity.HasKey(e => new { e.Id, e.Id1 })
                    .HasName("PK_USERLIKES");

                entity.Property(e => e.Id1).HasColumnName("ID_1");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UserLikesIdNavigation)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERLIKES_ASPNETUSERS");

                entity.HasOne(d => d.Id1Navigation)
                    .WithMany(p => p.UserLikesId1Navigation)
                    .HasForeignKey(d => d.Id1)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERLIKES_ASPNETUSERS1");
            });

            modelBuilder.Entity<UserMusics>(entity =>
            {
                entity.HasKey(e => new { e.Id, e.MusicId })
                    .HasName("PK_USERMUSICS");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UserMusics)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERMUSICS_ASPNETUSERS");

                entity.HasOne(d => d.Music)
                    .WithMany(p => p.UserMusics)
                    .HasForeignKey(d => d.MusicId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERMUSICS_MUSICS");
            });

            modelBuilder.Entity<UserNewsletters>(entity =>
            {
                entity.HasKey(e => new { e.NewsletterId, e.Id })
                    .HasName("PK_USERNEWSLETTERS");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UserNewsletters)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERNEWSLETTERS_ASPNETUSERS");

                entity.HasOne(d => d.Newsletter)
                    .WithMany(p => p.UserNewsletters)
                    .HasForeignKey(d => d.NewsletterId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERNEWSLETTERS_NEWSLETTERS");
            });

            modelBuilder.Entity<UserProfils>(entity =>
            {
                entity.HasKey(e => new { e.ProfilId, e.Id })
                    .HasName("PK_USERPROFILS");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UserProfils)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERPROFILS_ASPNETUSERS");

                entity.HasOne(d => d.Profil)
                    .WithMany(p => p.UserProfils)
                    .HasForeignKey(d => d.ProfilId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERPROFILS_PROFILS");
            });

            modelBuilder.Entity<UserStyles>(entity =>
            {
                entity.HasKey(e => new { e.Id, e.StyleId })
                    .HasName("PK_USERSTYLES");

                entity.HasOne(d => d.IdNavigation)
                    .WithMany(p => p.UserStyles)
                    .HasForeignKey(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERSTYLES_ASPNETUSERS");

                entity.HasOne(d => d.Style)
                    .WithMany(p => p.UserStyles)
                    .HasForeignKey(d => d.StyleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USERSTYLES_STYLES");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
