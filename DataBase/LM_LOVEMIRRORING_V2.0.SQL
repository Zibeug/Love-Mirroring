/*
 ----------------------------------------------------------------------------
             Génération d'une base de données pour
                        SQL Server 2005
                       (30/4/2020 13:53:31)
 ----------------------------------------------------------------------------
     Nom de la base : LM_LoveMirroring_V3.0
     Projet : Espace de travail
     Auteur : OSEF
     Date de dernière modification : 30/4/2020 13:52:59
 ----------------------------------------------------------------------------
*/

drop database LM_LoveMirroring_V3.0
go

/* -----------------------------------------------------------------------------
      OUVERTURE DE LA BASE LM_LoveMirroring_V3.0
----------------------------------------------------------------------------- */

create database LM_LoveMirroring_V3.0
go

use LM_LoveMirroring_V3.0
go



/* -----------------------------------------------------------------------------
      TABLE : EXTERNALSERVICES
----------------------------------------------------------------------------- */

create table EXTERNALSERVICES
  (
     EXTERNALSERVICEID smallint identity (1, 1)   ,
     EXTERNALSERVICENAME varchar(32)  not null  ,
     EXTERNALSERVICESTATUS bit  not null  
     ,
     constraint PK_EXTERNALSERVICES primary key (EXTERNALSERVICEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : STYLES
----------------------------------------------------------------------------- */

create table STYLES
  (
     STYLEID smallint identity (1, 1)   ,
     STYLENAME varchar(32)  not null  
     ,
     constraint PK_STYLES primary key (STYLEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : TAGS
----------------------------------------------------------------------------- */

create table TAGS
  (
     TAGID smallint identity (1, 1)   ,
     TAGNAME varchar(32)  not null  
     ,
     constraint PK_TAGS primary key (TAGID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETROLES
----------------------------------------------------------------------------- */

create table ASPNETROLES
  (
     ID varchar(450)  not null  ,
     CONCURRENCYSTAMP text  null  ,
     NAME varchar(256)  null  ,
     NORMALIZEDNAME varchar(256)  null  
     ,
     constraint PK_ASPNETROLES primary key (ID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : HAIRSIZES
----------------------------------------------------------------------------- */

create table HAIRSIZES
  (
     HAIRSIZEID smallint identity (1, 1)   ,
     HAIRSIZENAME varchar(32)  not null  
     ,
     constraint PK_HAIRSIZES primary key (HAIRSIZEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : QUESTIONS
----------------------------------------------------------------------------- */

create table QUESTIONS
  (
     QUESTIONID smallint identity (1, 1)   ,
     QUESTIONTEXT varchar(128)  not null  
     ,
     constraint PK_QUESTIONS primary key (QUESTIONID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCES
----------------------------------------------------------------------------- */

create table PREFERENCES
  (
     PREFERENCEID smallint identity (1, 1)   ,
     ID varchar(450)  not null  ,
     SEXUALITYID smallint  not null  ,
     AGEMIN smallint  not null  ,
     AGEMAX smallint  not null  
     ,
     constraint PK_PREFERENCES primary key (PREFERENCEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : RELIGIONS
----------------------------------------------------------------------------- */

create table RELIGIONS
  (
     RELIGIONID smallint identity (1, 1)   ,
     RELIGIONNAME varchar(32)  not null  
     ,
     constraint PK_RELIGIONS primary key (RELIGIONID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : SUBSCRIPTIONS
----------------------------------------------------------------------------- */

create table SUBSCRIPTIONS
  (
     SUBSCRIPTIONID smallint identity (1, 1)   ,
     SUBSCRIPTIONNAME varchar(32)  not null  ,
     SUBSCRIPTIONPRICE money  not null  ,
     SUBSCRIPTIONDATE datetime  not null  
     ,
     constraint PK_SUBSCRIPTIONS primary key (SUBSCRIPTIONID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : SEXUALITIES
----------------------------------------------------------------------------- */

create table SEXUALITIES
  (
     SEXUALITYID smallint identity (1, 1)   ,
     SEXUALITYNAME varchar(32)  not null  
     ,
     constraint PK_SEXUALITIES primary key (SEXUALITYID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETROLECLAIMS
----------------------------------------------------------------------------- */

create table ASPNETROLECLAIMS
  (
     ID int  not null  ,
     ID_FK_ASPNETROLECLAIMS_ASPNETROLES_ROLEID varchar(450)  not null  ,
     CLAIMTYPE text  null  ,
     CLAIMVALUE text  null  
     ,
     constraint PK_ASPNETROLECLAIMS primary key (ID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USERTRACES
----------------------------------------------------------------------------- */

create table USERTRACES
  (
     LOGID smallint identity (1, 1)   ,
     ID varchar(450)  null  ,
     LOGDATE datetime  not null  ,
     PAGEVISITED varchar(128)  not null  
     ,
     constraint PK_USERTRACES primary key (LOGID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETUSERCLAIMS
----------------------------------------------------------------------------- */

create table ASPNETUSERCLAIMS
  (
     ID int  not null  ,
     ID_FK_ASPNETUSERCLAIMS_ASPNETUSERS_USERID varchar(450)  not null  ,
     CLAIMTYPE text  null  ,
     CLAIMVALUE text  null  
     ,
     constraint PK_ASPNETUSERCLAIMS primary key (ID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : SEXES
----------------------------------------------------------------------------- */

create table SEXES
  (
     SEXEID smallint identity (1, 1)   ,
     SEXENAME varchar(32)  not null  
     ,
     constraint PK_SEXES primary key (SEXEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PICTURES
----------------------------------------------------------------------------- */

create table PICTURES
  (
     PICTUREID smallint identity (1, 1)   ,
     ID varchar(450)  not null  ,
     PICTUREVIEW image(1000)  not null  
     ,
     constraint PK_PICTURES primary key (PICTUREID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : CORPULENCES
----------------------------------------------------------------------------- */

create table CORPULENCES
  (
     CORPULENCEID smallint identity (1, 1)   ,
     CORPULENCENAME varchar(32)  not null  
     ,
     constraint PK_CORPULENCES primary key (CORPULENCEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PROFILS
----------------------------------------------------------------------------- */

create table PROFILS
  (
     PROFILID smallint identity (1, 1)   ,
     PROFILNAME varchar(32)  not null  ,
     PROFILDESCRIPTION text  not null  
     ,
     constraint PK_PROFILS primary key (PROFILID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETUSERLOGINS
----------------------------------------------------------------------------- */

create table ASPNETUSERLOGINS
  (
     LOGINPROVIDER varchar(450)  not null  ,
     PROVIDERKEY varchar(450)  not null  ,
     ID varchar(450)  not null  ,
     PROVIDERDISPLAYNAME text  null  
     ,
     constraint PK_ASPNETUSERLOGINS primary key (LOGINPROVIDER, PROVIDERKEY)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : TALKS
----------------------------------------------------------------------------- */

create table TALKS
  (
     TALKID smallint identity (1, 1)   ,
     ID varchar(450)  not null  ,
     ID_USER2TALK varchar(450)  not null  ,
     TALKNAME varchar(64)  not null  
     ,
     constraint PK_TALKS primary key (TALKID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETUSERTOKENS
----------------------------------------------------------------------------- */

create table ASPNETUSERTOKENS
  (
     ID varchar(450)  not null  ,
     LOGINPROVIDER varchar(450)  not null  ,
     NAME varchar(450)  not null  ,
     VALUE text  null  
     ,
     constraint PK_ASPNETUSERTOKENS primary key (ID, LOGINPROVIDER, NAME)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : MESSAGES
----------------------------------------------------------------------------- */

create table MESSAGES
  (
     MESSAGEID smallint identity (1, 1)   ,
     ID varchar(450)  not null  ,
     TALKID smallint  not null  ,
     MESSAGEDATE datetime  not null  ,
     MESSAGETEXT varchar(128)  not null  
     ,
     constraint PK_MESSAGES primary key (MESSAGEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : MUSICS
----------------------------------------------------------------------------- */

create table MUSICS
  (
     MUSICID smallint identity (1, 1)   ,
     MUSICNAME varchar(32)  not null  
     ,
     constraint PK_MUSICS primary key (MUSICID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ANSWERS
----------------------------------------------------------------------------- */

create table ANSWERS
  (
     ANSWERID smallint identity (1, 1)   ,
     PROFILID smallint  not null  ,
     QUESTIONID smallint  not null  ,
     ANSWERTEXT varchar(128)  not null  ,
     ANSWERVALUE smallint  not null  
     ,
     constraint PK_ANSWERS primary key (ANSWERID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETUSERS
----------------------------------------------------------------------------- */

create table ASPNETUSERS
  (
     ID varchar(450)  not null  ,
     HAIRCOLORID smallint  null  ,
     CORPULENCEID smallint  null  ,
     SEXEID smallint  null  ,
     HAIRSIZEID smallint  null  ,
     SUBSCRIPTIONID smallint  null  ,
     SEXUALITYID smallint  null  ,
     ACCESSFAILEDCOUNT int  not null  ,
     CONCURRENCYSTAMP text  null  ,
     EMAIL varchar(256)  null  ,
     EMAILCONFIRMED bit  not null  ,
     LOCKOUTENABLED bit  not null  ,
     LOCKOUTEND datetimeoffset(34)  null  ,
     NORMALIZEDEMAIL varchar(256)  null  ,
     NORMALIZEDUSERNAME varchar(256)  null  ,
     PASSWORDHASH text  null  ,
     PHONENUMBER text  null  ,
     PHONENUMBERCONFIRMED bit  not null  ,
     SECURITYSTAMP text  null  ,
     TWOFACTORENABLED bit  not null  ,
     USERNAME varchar(256)  null  
     ,
     constraint PK_ASPNETUSERS primary key (ID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : HAIRCOLORS
----------------------------------------------------------------------------- */

create table HAIRCOLORS
  (
     HAIRCOLORID smallint identity (1, 1)   ,
     HAIRCOLORNAME varchar(32)  not null  
     ,
     constraint PK_HAIRCOLORS primary key (HAIRCOLORID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : NEWSLETTERS
----------------------------------------------------------------------------- */

create table NEWSLETTERS
  (
     NEWSLETTERID smallint identity (1, 1)   ,
     NEWSLETTERNAME varchar(32)  not null  ,
     NEWSLETTERSTATUS bit  not null  
     ,
     constraint PK_NEWSLETTERS primary key (NEWSLETTERID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USERMUSICS
----------------------------------------------------------------------------- */

create table USERMUSICS
  (
     ID varchar(450)  not null  ,
     MUSICID smallint  not null  
     ,
     constraint PK_USERMUSICS primary key (ID, MUSICID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCEHAIRCOLORS
----------------------------------------------------------------------------- */

create table PREFERENCEHAIRCOLORS
  (
     PREFERENCEID smallint  not null  ,
     HAIRCOLORID smallint  not null  
     ,
     constraint PK_PREFERENCEHAIRCOLORS primary key (PREFERENCEID, HAIRCOLORID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCEMUSICS
----------------------------------------------------------------------------- */

create table PREFERENCEMUSICS
  (
     PREFERENCEID smallint  not null  ,
     MUSICID smallint  not null  
     ,
     constraint PK_PREFERENCEMUSICS primary key (PREFERENCEID, MUSICID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USERNEWSLETTERS
----------------------------------------------------------------------------- */

create table USERNEWSLETTERS
  (
     NEWSLETTERID smallint  not null  ,
     ID varchar(450)  not null  
     ,
     constraint PK_USERNEWSLETTERS primary key (NEWSLETTERID, ID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PICTURETAG
----------------------------------------------------------------------------- */

create table PICTURETAG
  (
     PICTUREID smallint  not null  ,
     TAGID smallint  not null  
     ,
     constraint PK_PICTURETAG primary key (PICTUREID, TAGID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USERSTYLES
----------------------------------------------------------------------------- */

create table USERSTYLES
  (
     ID varchar(450)  not null  ,
     STYLEID smallint  not null  
     ,
     constraint PK_USERSTYLES primary key (ID, STYLEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCESTYLES
----------------------------------------------------------------------------- */

create table PREFERENCESTYLES
  (
     PREFERENCEID smallint  not null  ,
     STYLEID smallint  not null  
     ,
     constraint PK_PREFERENCESTYLES primary key (PREFERENCEID, STYLEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCEHAIRSIZES
----------------------------------------------------------------------------- */

create table PREFERENCEHAIRSIZES
  (
     PREFERENCEID smallint  not null  ,
     HAIRSIZEID smallint  not null  
     ,
     constraint PK_PREFERENCEHAIRSIZES primary key (PREFERENCEID, HAIRSIZEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCECORPULENCES
----------------------------------------------------------------------------- */

create table PREFERENCECORPULENCES
  (
     PREFERENCEID smallint  not null  ,
     CORPULENCEID smallint  not null  
     ,
     constraint PK_PREFERENCECORPULENCES primary key (PREFERENCEID, CORPULENCEID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : PREFERENCERELIGIONS
----------------------------------------------------------------------------- */

create table PREFERENCERELIGIONS
  (
     PREFERENCEID smallint  not null  ,
     RELIGIONID smallint  not null  
     ,
     constraint PK_PREFERENCERELIGIONS primary key (PREFERENCEID, RELIGIONID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USERLIKES
----------------------------------------------------------------------------- */

create table USERLIKES
  (
     ID varchar(450)  not null  ,
     ID_1 varchar(450)  not null  
     ,
     constraint PK_USERLIKES primary key (ID, ID_1)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USEREXTERNALSERVICES
----------------------------------------------------------------------------- */

create table USEREXTERNALSERVICES
  (
     EXTERNALSERVICEID smallint  not null  ,
     ID varchar(450)  not null  
     ,
     constraint PK_USEREXTERNALSERVICES primary key (EXTERNALSERVICEID, ID)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : ASPNETUSERROLES
----------------------------------------------------------------------------- */

create table ASPNETUSERROLES
  (
     ID varchar(450)  not null  ,
     ID_1 varchar(450)  not null  
     ,
     constraint PK_ASPNETUSERROLES primary key (ID, ID_1)
  ) 
go



/* -----------------------------------------------------------------------------
      TABLE : USERPROFILS
----------------------------------------------------------------------------- */

create table USERPROFILS
  (
     PROFILID smallint  not null  ,
     ID varchar(450)  not null  ,
     USERPROFILVALUE smallint  null  
     ,
     constraint PK_USERPROFILS primary key (PROFILID, ID)
  ) 
go



/* -----------------------------------------------------------------------------
      REFERENCES SUR LES TABLES
----------------------------------------------------------------------------- */



alter table PREFERENCES 
     add constraint FK_PREFERENCES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table PREFERENCES 
     add constraint FK_PREFERENCES_SEXUALITIES foreign key (SEXUALITYID) 
               references SEXUALITIES (SEXUALITYID)
go




alter table ASPNETROLECLAIMS 
     add constraint FK_ASPNETROLECLAIMS_ASPNETROLES foreign key (ID_FK_ASPNETROLECLAIMS_ASPNETROLES_ROLEID) 
               references ASPNETROLES (ID)
go




alter table USERTRACES 
     add constraint FK_USERTRACES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table ASPNETUSERCLAIMS 
     add constraint FK_ASPNETUSERCLAIMS_ASPNETUSERS foreign key (ID_FK_ASPNETUSERCLAIMS_ASPNETUSERS_USERID) 
               references ASPNETUSERS (ID)
go




alter table PICTURES 
     add constraint FK_PICTURES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table ASPNETUSERLOGINS 
     add constraint FK_ASPNETUSERLOGINS_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table TALKS 
     add constraint FK_TALKS_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table TALKS 
     add constraint FK_TALKS_ASPNETUSERS1 foreign key (ID_USER2TALK) 
               references ASPNETUSERS (ID)
go




alter table ASPNETUSERTOKENS 
     add constraint FK_ASPNETUSERTOKENS_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table MESSAGES 
     add constraint FK_MESSAGES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table MESSAGES 
     add constraint FK_MESSAGES_TALKS foreign key (TALKID) 
               references TALKS (TALKID)
go




alter table ANSWERS 
     add constraint FK_ANSWERS_PROFILS foreign key (PROFILID) 
               references PROFILS (PROFILID)
go




alter table ANSWERS 
     add constraint FK_ANSWERS_QUESTIONS foreign key (QUESTIONID) 
               references QUESTIONS (QUESTIONID)
go




alter table ASPNETUSERS 
     add constraint FK_ASPNETUSERS_HAIRCOLORS foreign key (HAIRCOLORID) 
               references HAIRCOLORS (HAIRCOLORID)
go




alter table ASPNETUSERS 
     add constraint FK_ASPNETUSERS_CORPULENCES foreign key (CORPULENCEID) 
               references CORPULENCES (CORPULENCEID)
go




alter table ASPNETUSERS 
     add constraint FK_ASPNETUSERS_SEXES foreign key (SEXEID) 
               references SEXES (SEXEID)
go




alter table ASPNETUSERS 
     add constraint FK_ASPNETUSERS_HAIRSIZES foreign key (HAIRSIZEID) 
               references HAIRSIZES (HAIRSIZEID)
go




alter table ASPNETUSERS 
     add constraint FK_ASPNETUSERS_SUBSCRIPTIONS foreign key (SUBSCRIPTIONID) 
               references SUBSCRIPTIONS (SUBSCRIPTIONID)
go




alter table ASPNETUSERS 
     add constraint FK_ASPNETUSERS_SEXUALITIES foreign key (SEXUALITYID) 
               references SEXUALITIES (SEXUALITYID)
go




alter table USERMUSICS 
     add constraint FK_USERMUSICS_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table USERMUSICS 
     add constraint FK_USERMUSICS_MUSICS foreign key (MUSICID) 
               references MUSICS (MUSICID)
go




alter table PREFERENCEHAIRCOLORS 
     add constraint FK_PREFERENCEHAIRCOLORS_PREFERENCES foreign key (PREFERENCEID) 
               references PREFERENCES (PREFERENCEID)
go




alter table PREFERENCEHAIRCOLORS 
     add constraint FK_PREFERENCEHAIRCOLORS_HAIRCOLORS foreign key (HAIRCOLORID) 
               references HAIRCOLORS (HAIRCOLORID)
go




alter table PREFERENCEMUSICS 
     add constraint FK_PREFERENCEMUSICS_PREFERENCES foreign key (PREFERENCEID) 
               references PREFERENCES (PREFERENCEID)
go




alter table PREFERENCEMUSICS 
     add constraint FK_PREFERENCEMUSICS_MUSICS foreign key (MUSICID) 
               references MUSICS (MUSICID)
go




alter table USERNEWSLETTERS 
     add constraint FK_USERNEWSLETTERS_NEWSLETTERS foreign key (NEWSLETTERID) 
               references NEWSLETTERS (NEWSLETTERID)
go




alter table USERNEWSLETTERS 
     add constraint FK_USERNEWSLETTERS_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table PICTURETAG 
     add constraint FK_PICTURETAG_PICTURES foreign key (PICTUREID) 
               references PICTURES (PICTUREID)
go




alter table PICTURETAG 
     add constraint FK_PICTURETAG_TAGS foreign key (TAGID) 
               references TAGS (TAGID)
go




alter table USERSTYLES 
     add constraint FK_USERSTYLES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table USERSTYLES 
     add constraint FK_USERSTYLES_STYLES foreign key (STYLEID) 
               references STYLES (STYLEID)
go




alter table PREFERENCESTYLES 
     add constraint FK_PREFERENCESTYLES_PREFERENCES foreign key (PREFERENCEID) 
               references PREFERENCES (PREFERENCEID)
go




alter table PREFERENCESTYLES 
     add constraint FK_PREFERENCESTYLES_STYLES foreign key (STYLEID) 
               references STYLES (STYLEID)
go




alter table PREFERENCEHAIRSIZES 
     add constraint FK_PREFERENCEHAIRSIZES_PREFERENCES foreign key (PREFERENCEID) 
               references PREFERENCES (PREFERENCEID)
go




alter table PREFERENCEHAIRSIZES 
     add constraint FK_PREFERENCEHAIRSIZES_HAIRSIZES foreign key (HAIRSIZEID) 
               references HAIRSIZES (HAIRSIZEID)
go




alter table PREFERENCECORPULENCES 
     add constraint FK_PREFERENCECORPULENCES_PREFERENCES foreign key (PREFERENCEID) 
               references PREFERENCES (PREFERENCEID)
go




alter table PREFERENCECORPULENCES 
     add constraint FK_PREFERENCECORPULENCES_CORPULENCES foreign key (CORPULENCEID) 
               references CORPULENCES (CORPULENCEID)
go




alter table PREFERENCERELIGIONS 
     add constraint FK_PREFERENCERELIGIONS_PREFERENCES foreign key (PREFERENCEID) 
               references PREFERENCES (PREFERENCEID)
go




alter table PREFERENCERELIGIONS 
     add constraint FK_PREFERENCERELIGIONS_RELIGIONS foreign key (RELIGIONID) 
               references RELIGIONS (RELIGIONID)
go




alter table USERLIKES 
     add constraint FK_USERLIKES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table USERLIKES 
     add constraint FK_USERLIKES_ASPNETUSERS1 foreign key (ID_1) 
               references ASPNETUSERS (ID)
go




alter table USEREXTERNALSERVICES 
     add constraint FK_USEREXTERNALSERVICES_EXTERNALSERVICES foreign key (EXTERNALSERVICEID) 
               references EXTERNALSERVICES (EXTERNALSERVICEID)
go




alter table USEREXTERNALSERVICES 
     add constraint FK_USEREXTERNALSERVICES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




alter table ASPNETUSERROLES 
     add constraint FK_ASPNETUSERROLES_ASPNETROLES foreign key (ID) 
               references ASPNETROLES (ID)
go




alter table ASPNETUSERROLES 
     add constraint FK_ASPNETUSERROLES_ASPNETUSERS foreign key (ID_1) 
               references ASPNETUSERS (ID)
go




alter table USERPROFILS 
     add constraint FK_USERPROFILS_PROFILS foreign key (PROFILID) 
               references PROFILS (PROFILID)
go




alter table USERPROFILS 
     add constraint FK_USERPROFILS_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go




/*
 -----------------------------------------------------------------------------
               FIN DE GENERATION
 -----------------------------------------------------------------------------
*/