/*
 ----------------------------------------------------------------------------
             Génération d'une base de données pour
                        SQL Server 2005
                       (13/4/2020 15:02:47)
 ----------------------------------------------------------------------------
     Nom de la base : LoveMirroring
     Projet : Espace de travail
     Auteur : Morsch
     Date de dernière modification : 13/4/2020 15:02:14
 ----------------------------------------------------------------------------
*/

drop database LoveMirroring
go

/* -----------------------------------------------------------------------------
      OUVERTURE DE LA BASE LoveMirroring
----------------------------------------------------------------------------- */

create database LoveMirroring
go

use LoveMirroring
go



/* -----------------------------------------------------------------------------
      TABLE : ExternalServices
----------------------------------------------------------------------------- */

create table ExternalServices
  (
     ExternalServiceId smallint identity (1, 1)   ,
     ExternalServiceName varchar(32)  not null  ,
     ExternalServiceStatus bit  not null  
     ,
     constraint PK_EXTERNALSERVICES primary key (ExternalServiceId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Styles
----------------------------------------------------------------------------- */

create table Styles
  (
     StyleId smallint identity (1, 1)   ,
     StyleName varchar(32)  not null  
     ,
     constraint PK_STYLES primary key (StyleId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Tags
----------------------------------------------------------------------------- */

create table Tags
  (
     TagId smallint identity (1, 1)   ,
     TagName varchar(32)  not null  
     ,
     constraint PK_TAGS primary key (TagId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : AspNetRoles
----------------------------------------------------------------------------- */

create table AspNetRoles
  (
     Id nvarchar(450)  not null  ,
     ConcurrencyStamp text  null  ,
     Name varchar(256)  null  ,
     NormalizedName varchar(256)  null  
     ,
     constraint PK_ASPNETROLES primary key (Id)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : HairSizes
----------------------------------------------------------------------------- */

create table HairSizes
  (
     HairSizeId smallint identity (1, 1)   ,
     HairSizeName varchar(32)  not null  
     ,
     constraint PK_HAIRSIZES primary key (HairSizeId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Questions
----------------------------------------------------------------------------- */

create table Questions
  (
     QuestionId smallint identity (1, 1)   ,
     QuestionText varchar(128)  not null  
     ,
     constraint PK_QUESTIONS primary key (QuestionId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Preferences
----------------------------------------------------------------------------- */

create table Preferences
  (
     PreferenceId smallint identity (1, 1)   ,
     Id nvarchar(450)  not null  ,
     SexualityId smallint  not null  ,
     AgeMin smallint  not null  ,
     AgeMax smallint  not null  
     ,
     constraint PK_PREFERENCES primary key (PreferenceId)
  ) 
go



/*      INDEX DE Preferences      */



/* -----------------------------------------------------------------------------
      TABLE : Religions
----------------------------------------------------------------------------- */

create table Religions
  (
     ReligionId smallint identity (1, 1)   ,
     ReligionName varchar(32)  not null  
     ,
     constraint PK_RELIGIONS primary key (ReligionId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Subscriptions
----------------------------------------------------------------------------- */

create table Subscriptions
  (
     SubscriptionId smallint identity (1, 1)   ,
     SubscriptionName varchar(32)  not null  ,
     SubscriptionPrice money  not null  ,
     SubscriptionDate datetime  not null  
     ,
     constraint PK_SUBSCRIPTIONS primary key (SubscriptionId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Sexualities
----------------------------------------------------------------------------- */

create table Sexualities
  (
     SexualityId smallint identity (1, 1)   ,
     SexualityName varchar(32)  not null  
     ,
     constraint PK_SEXUALITIES primary key (SexualityId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : AspNetRoleClaims
----------------------------------------------------------------------------- */

create table AspNetRoleClaims
  (
     Id int  not null  ,
     RoleId nvarchar(450)  not null  ,
     ClaimType text  null  ,
     ClaimValue text  null  
     ,
     constraint PK_ASPNETROLECLAIMS primary key (Id)
  ) 
go



/*      INDEX DE AspNetRoleClaims      */



/* -----------------------------------------------------------------------------
      TABLE : AspNetUserClaims
----------------------------------------------------------------------------- */

create table AspNetUserClaims
  (
     Id int  not null  ,
     UserId nvarchar(450)  not null  ,
     ClaimType text  null  ,
     ClaimValue text  null  
     ,
     constraint PK_ASPNETUSERCLAIMS primary key (Id)
  ) 
go



/*      INDEX DE AspNetUserClaims      */



/* -----------------------------------------------------------------------------
      TABLE : Sexes
----------------------------------------------------------------------------- */

create table Sexes
  (
     SexeId smallint identity (1, 1)   ,
     SexeName varchar(32)  not null  
     ,
     constraint PK_SEXES primary key (SexeId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Pictures
----------------------------------------------------------------------------- */

create table Pictures
  (
     PictureId smallint identity (1, 1)   ,
     Id nvarchar(450)  not null  ,
     PictureView image  not null  
     ,
     constraint PK_PICTURES primary key (PictureId)
  ) 
go



/*      INDEX DE Pictures      */



/* -----------------------------------------------------------------------------
      TABLE : Corpulences
----------------------------------------------------------------------------- */

create table Corpulences
  (
     CorpulenceId smallint identity (1, 1)   ,
     CorpulenceName varchar(32)  not null  
     ,
     constraint PK_CORPULENCES primary key (CorpulenceId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Profils
----------------------------------------------------------------------------- */

create table Profils
  (
     ProfilId smallint identity (1, 1)   ,
     ProfilName varchar(32)  not null  ,
     ProfilDescription text  not null  
     ,
     constraint PK_PROFILS primary key (ProfilId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : AspNetUserLogins
----------------------------------------------------------------------------- */

create table AspNetUserLogins
  (
     LoginProvider varchar(450)  not null  ,
     ProviderKey varchar(450)  not null  ,
     Id nvarchar(450)  not null  ,
     ProviderDisplayName text  null  
     ,
     constraint PK_ASPNETUSERLOGINS primary key (LoginProvider, ProviderKey)
  ) 
go



/*      INDEX DE AspNetUserLogins      */



/* -----------------------------------------------------------------------------
      TABLE : Talks
----------------------------------------------------------------------------- */

create table Talks
  (
     TalkId smallint identity (1, 1)   ,
     Id nvarchar(450)  not null  ,
     IdUser2Talk nvarchar(450)  not null  ,
     TalkName varchar(64)  not null  
     ,
     constraint PK_TALKS primary key (TalkId)
  ) 
go



/*      INDEX DE Talks      */



/* -----------------------------------------------------------------------------
      TABLE : AspNetUserTokens
----------------------------------------------------------------------------- */

create table AspNetUserTokens
  (
     Id nvarchar(450)  not null  ,
     LoginProvider nvarchar(450)  not null  ,
     Name nvarchar(450)  not null  ,
     Value text  null  
     ,
     constraint PK_ASPNETUSERTOKENS primary key (Id, LoginProvider, Name)
  ) 
go



/*      INDEX DE AspNetUserTokens      */



/* -----------------------------------------------------------------------------
      TABLE : Messages
----------------------------------------------------------------------------- */

create table Messages
  (
     MessageId smallint identity (1, 1)   ,
     Id nvarchar(450)  not null  ,
     TalkId smallint  not null  ,
     MessageDate datetime  not null  ,
     MessageText varchar(128)  not null  
     ,
     constraint PK_MESSAGES primary key (MessageId)
  ) 
go



/*      INDEX DE Messages      */



/* -----------------------------------------------------------------------------
      TABLE : Musics
----------------------------------------------------------------------------- */

create table Musics
  (
     MusicId smallint identity (1, 1)   ,
     MusicName varchar(32)  not null  
     ,
     constraint PK_MUSICS primary key (MusicId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Answers
----------------------------------------------------------------------------- */

create table Answers
  (
     AnswerId smallint identity (1, 1)   ,
     ProfilId smallint  not null  ,
     QuestionId smallint  not null  ,
     AnswerText varchar(128)  not null  ,
     AnswerValue smallint  not null  
     ,
     constraint PK_ANSWERS primary key (AnswerId)
  ) 
go



/*      INDEX DE Answers      */



/* -----------------------------------------------------------------------------
      TABLE : AspNetUsers
----------------------------------------------------------------------------- */

create table AspNetUsers
  (
     Id nvarchar(450)  not null  ,
     HairColorId smallint  null  ,
     CorpulenceId smallint  null  ,
     SexeId smallint  null  ,
     HairSizeId smallint  null  ,
     SubscriptionId smallint  null  ,
     SexualityId smallint  null  ,
     AccessFailedCount int  not null  ,
     ConcurrencyStamp text  null  ,
     Email varchar(256)  null  ,
     EmailConfirmed bit  not null  ,
     LockoutEnabled bit  not null  ,
     LockoutEnd datetimeoffset(7)  null  ,
     NormalizedEmail varchar(256)  null  ,
     NormalizedUserName varchar(256)  null  ,
     PasswordHash text  null  ,
     PhoneNumber text  null  ,
     PhoneNumberConfirmed bit  not null  ,
     SecurityStamp text  null  ,
     TwoFactorEnabled bit  not null  ,
     UserName varchar(256)  null  ,
	 Birthday datetime2(7) NOT NULL,
	 Firstname varchar(42) NULL,
	 LastName varchar(42) NULL,
	 QuizCompleted bit NOT NULL
     ,
     constraint PK_ASPNETUSERS primary key (Id)
  ) 
go



/*      INDEX DE AspNetUsers      */



/* -----------------------------------------------------------------------------
      TABLE : HairColor
----------------------------------------------------------------------------- */

create table HairColor
  (
     HairColorId smallint identity (1, 1)   ,
     HairColorName varchar(32)  not null  
     ,
     constraint PK_HAIRCOLORS primary key (HairColorId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : Newsletters
----------------------------------------------------------------------------- */

create table Newsletters
  (
     NewsletterId smallint identity (1, 1)   ,
     NewsletterName varchar(32)  not null  ,
     NewsletterStatus bit  not null  
     ,
     constraint PK_NEWSLETTERS primary key (NewsletterId)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : UserMusics
----------------------------------------------------------------------------- */

create table UserMusics
  (
     Id nvarchar(450)  not null  ,
     MusicId smallint  not null  
     ,
     constraint PK_USERMUSICS primary key (Id, MusicId)
  ) 
go



/*      INDEX DE UserMusics      */



/* -----------------------------------------------------------------------------
      TABLE : PreferenceHairColors
----------------------------------------------------------------------------- */

create table PreferenceHairColors
  (
     PreferenceId smallint  not null  ,
     HairColorId smallint  not null  
     ,
     constraint PK_PREFERENCEHAIRCOLORS primary key (PreferenceId, HairColorId)
  ) 
go



/*      INDEX DE PreferenceHairColors      */



/* -----------------------------------------------------------------------------
      TABLE : PreferenceMusics
----------------------------------------------------------------------------- */

create table PreferenceMusics
  (
     PreferenceId smallint  not null  ,
     MusicId smallint  not null  
     ,
     constraint PK_PREFERENCEMUSICS primary key (PreferenceId, MusicId)
  ) 
go



/*      INDEX DE PreferenceMusics      */



/* -----------------------------------------------------------------------------
      TABLE : UserNewsletters
----------------------------------------------------------------------------- */

create table UserNewsletters
  (
     NewsletterId smallint  not null  ,
     Id nvarchar(450)  not null  
     ,
     constraint PK_USERNEWSLETTERS primary key (NewsletterId, Id)
  ) 
go



/*      INDEX DE UserNewsletters      */



/* -----------------------------------------------------------------------------
      TABLE : PictureTag
----------------------------------------------------------------------------- */

create table PictureTag
  (
     PictureId smallint  not null  ,
     TagId smallint  not null  
     ,
     constraint PK_PICTURETAG primary key (PictureId, TagId)
  ) 
go



/*      INDEX DE PictureTag      */



/* -----------------------------------------------------------------------------
      TABLE : UserStyles
----------------------------------------------------------------------------- */

create table UserStyles
  (
     Id nvarchar(450)  not null  ,
     StyleId smallint  not null  
     ,
     constraint PK_USERSTYLES primary key (Id, StyleId)
  ) 
go



/*      INDEX DE UserStyles      */



/* -----------------------------------------------------------------------------
      TABLE : PreferenceStyles
----------------------------------------------------------------------------- */

create table PreferenceStyles
  (
     PreferenceId smallint  not null  ,
     StyleId smallint  not null  
     ,
     constraint PK_PREFERENCESTYLES primary key (PreferenceId, StyleId)
  ) 
go



/*      INDEX DE PreferenceStyles      */



/* -----------------------------------------------------------------------------
      TABLE : PreferenceHairSizes
----------------------------------------------------------------------------- */

create table PreferenceHairSizes
  (
     PreferenceId smallint  not null  ,
     HairSizeId smallint  not null  
     ,
     constraint PK_PREFERENCEHAIRSIZES primary key (PreferenceId, HairSizeId)
  ) 
go



/*      INDEX DE PreferenceHairSizes      */



/* -----------------------------------------------------------------------------
      TABLE : PreferenceCorpulences
----------------------------------------------------------------------------- */

create table PreferenceCorpulences
  (
     PreferenceId smallint  not null  ,
     CorpulenceId smallint  not null  
     ,
     constraint PK_PREFERENCECORPULENCES primary key (PreferenceId, CorpulenceId)
  ) 
go



/*      INDEX DE PreferenceCorpulences      */



/* -----------------------------------------------------------------------------
      TABLE : PreferenceReligions
----------------------------------------------------------------------------- */

create table PreferenceReligions
  (
     PreferenceId smallint  not null  ,
     ReligionId smallint  not null  
     ,
     constraint PK_PREFERENCERELIGIONS primary key (PreferenceId, ReligionId)
  ) 
go



/*      INDEX DE PreferenceReligions      */



/* -----------------------------------------------------------------------------
      TABLE : UserLikes
----------------------------------------------------------------------------- */

create table UserLikes
  (
     Id nvarchar(450)  not null  ,
     ID_1 nvarchar(450)  not null  
     ,
     constraint PK_USERLIKES primary key (Id, ID_1)
  ) 
go



/*      INDEX DE UserLikes      */



/* -----------------------------------------------------------------------------
      TABLE : UserExternalServices
----------------------------------------------------------------------------- */

create table UserExternalServices
  (
     ExternalServiceId smallint  not null  ,
     Id nvarchar(450)  not null  
     ,
     constraint PK_USEREXTERNALSERVICES primary key (ExternalServiceId, Id)
  ) 
go



/*      INDEX DE UserExternalServices      */



/* -----------------------------------------------------------------------------
      TABLE : AspNetUserRoles
----------------------------------------------------------------------------- */

create table AspNetUserRoles
  (
     Id nvarchar(450)  not null  ,
     ID_1 nvarchar(450)  not null  
     ,
     constraint PK_ASPNETUSERROLES primary key (Id, ID_1)
  ) 
go



/*      INDEX DE AspNetUserRoles      */



/* -----------------------------------------------------------------------------
      TABLE : UserProfils
----------------------------------------------------------------------------- */

create table UserProfils
  (
     ProfilId smallint  not null  ,
     Id nvarchar(450)  not null  ,
     UserProfilValue smallint  null  
     ,
     constraint PK_USERPROFILS primary key (ProfilId, Id)
  ) 
go



/*      INDEX DE UserProfils      */



/* -----------------------------------------------------------------------------
      REFERENCES SUR LES TABLES
----------------------------------------------------------------------------- */



alter table Preferences 
     add constraint FK_PREFERENCES_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table Preferences 
     add constraint FK_PREFERENCES_SEXUALITIES foreign key (SexualityId) 
               references Sexualities (SexualityId)
go




alter table AspNetRoleClaims 
     add constraint FK_ASPNETROLECLAIMS_ASPNETROLES foreign key (RoleId) 
               references AspNetRoles (Id)
go




alter table AspNetUserClaims 
     add constraint FK_ASPNETUSERCLAIMS_ASPNETUSERS foreign key (UserId) 
               references AspNetUsers (Id)
go




alter table Pictures 
     add constraint FK_PICTURES_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table AspNetUserLogins 
     add constraint FK_ASPNETUSERLOGINS_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table Talks 
     add constraint FK_TALKS_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table Talks 
     add constraint FK_TALKS_ASPNETUSERS1 foreign key (IdUser2Talk) 
               references AspNetUsers (Id)
go




alter table AspNetUserTokens 
     add constraint FK_ASPNETUSERTOKENS_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table Messages 
     add constraint FK_MESSAGES_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table Messages 
     add constraint FK_MESSAGES_TALKS foreign key (TalkId) 
               references Talks (TalkId)
go




alter table Answers 
     add constraint FK_ANSWERS_PROFILS foreign key (ProfilId) 
               references Profils (ProfilId)
go




alter table Answers 
     add constraint FK_ANSWERS_QUESTIONS foreign key (QuestionId) 
               references Questions (QuestionId)
go




alter table AspNetUsers 
     add constraint FK_ASPNETUSERS_HAIRCOLORS foreign key (HairColorId) 
               references HairColor (HairColorId)
go




alter table AspNetUsers 
     add constraint FK_ASPNETUSERS_CORPULENCES foreign key (CorpulenceId) 
               references Corpulences (CorpulenceId)
go




alter table AspNetUsers 
     add constraint FK_ASPNETUSERS_SEXES foreign key (SexeId) 
               references Sexes (SexeId)
go




alter table AspNetUsers 
     add constraint FK_ASPNETUSERS_HAIRSIZES foreign key (HairSizeId) 
               references HairSizes (HairSizeId)
go




alter table AspNetUsers 
     add constraint FK_ASPNETUSERS_SUBSCRIPTIONS foreign key (SubscriptionId) 
               references Subscriptions (SubscriptionId)
go




alter table AspNetUsers 
     add constraint FK_ASPNETUSERS_SEXUALITIES foreign key (SexualityId) 
               references Sexualities (SexualityId)
go




alter table UserMusics 
     add constraint FK_USERMUSICS_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table UserMusics 
     add constraint FK_USERMUSICS_MUSICS foreign key (MusicId) 
               references Musics (MusicId)
go




alter table PreferenceHairColors 
     add constraint FK_PREFERENCEHAIRCOLORS_PREFERENCES foreign key (PreferenceId) 
               references Preferences (PreferenceId)
go




alter table PreferenceHairColors 
     add constraint FK_PREFERENCEHAIRCOLORS_HAIRCOLORS foreign key (HairColorId) 
               references HairColor (HairColorId)
go




alter table PreferenceMusics 
     add constraint FK_PREFERENCEMUSICS_PREFERENCES foreign key (PreferenceId) 
               references Preferences (PreferenceId)
go




alter table PreferenceMusics 
     add constraint FK_PREFERENCEMUSICS_MUSICS foreign key (MusicId) 
               references Musics (MusicId)
go




alter table UserNewsletters 
     add constraint FK_USERNEWSLETTERS_NEWSLETTERS foreign key (NewsletterId) 
               references Newsletters (NewsletterId)
go




alter table UserNewsletters 
     add constraint FK_USERNEWSLETTERS_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table PictureTag 
     add constraint FK_PICTURETAG_PICTURES foreign key (PictureId) 
               references Pictures (PictureId)
go




alter table PictureTag 
     add constraint FK_PICTURETAG_TAGS foreign key (TagId) 
               references Tags (TagId)
go




alter table UserStyles 
     add constraint FK_USERSTYLES_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table UserStyles 
     add constraint FK_USERSTYLES_STYLES foreign key (StyleId) 
               references Styles (StyleId)
go




alter table PreferenceStyles 
     add constraint FK_PREFERENCESTYLES_PREFERENCES foreign key (PreferenceId) 
               references Preferences (PreferenceId)
go




alter table PreferenceStyles 
     add constraint FK_PREFERENCESTYLES_STYLES foreign key (StyleId) 
               references Styles (StyleId)
go




alter table PreferenceHairSizes 
     add constraint FK_PREFERENCEHAIRSIZES_PREFERENCES foreign key (PreferenceId) 
               references Preferences (PreferenceId)
go




alter table PreferenceHairSizes 
     add constraint FK_PREFERENCEHAIRSIZES_HAIRSIZES foreign key (HairSizeId) 
               references HairSizes (HairSizeId)
go




alter table PreferenceCorpulences 
     add constraint FK_PREFERENCECORPULENCES_PREFERENCES foreign key (PreferenceId) 
               references Preferences (PreferenceId)
go




alter table PreferenceCorpulences 
     add constraint FK_PREFERENCECORPULENCES_CORPULENCES foreign key (CorpulenceId) 
               references Corpulences (CorpulenceId)
go




alter table PreferenceReligions 
     add constraint FK_PREFERENCERELIGIONS_PREFERENCES foreign key (PreferenceId) 
               references Preferences (PreferenceId)
go




alter table PreferenceReligions 
     add constraint FK_PREFERENCERELIGIONS_RELIGIONS foreign key (ReligionId) 
               references Religions (ReligionId)
go




alter table UserLikes 
     add constraint FK_USERLIKES_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table UserLikes 
     add constraint FK_USERLIKES_ASPNETUSERS1 foreign key (ID_1) 
               references AspNetUsers (Id)
go




alter table UserExternalServices 
     add constraint FK_USEREXTERNALSERVICES_EXTERNALSERVICES foreign key (ExternalServiceId) 
               references ExternalServices (ExternalServiceId)
go




alter table UserExternalServices 
     add constraint FK_USEREXTERNALSERVICES_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




alter table AspNetUserRoles 
     add constraint FK_ASPNETUSERROLES_ASPNETROLES foreign key (Id) 
               references AspNetRoles (Id)
go




alter table AspNetUserRoles 
     add constraint FK_ASPNETUSERROLES_ASPNETUSERS foreign key (ID_1) 
               references AspNetUsers (Id)
go




alter table UserProfils 
     add constraint FK_USERPROFILS_PROFILS foreign key (ProfilId) 
               references Profils (ProfilId)
go




alter table UserProfils 
     add constraint FK_USERPROFILS_ASPNETUSERS foreign key (Id) 
               references AspNetUsers (Id)
go




/*
 -----------------------------------------------------------------------------
               FIN DE GENERATION
 -----------------------------------------------------------------------------
*/