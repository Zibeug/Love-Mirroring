USE [master]
GO
/****** Object:  Database [LoveMirroringTest]    Script Date: 29-03-2020 18:11:14 ******/
CREATE DATABASE [LoveMirroringTest]
 CONTAINMENT = NONE

ALTER DATABASE [LoveMirroringTest] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LoveMirroringTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LoveMirroringTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LoveMirroringTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LoveMirroringTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LoveMirroringTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LoveMirroringTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LoveMirroringTest] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LoveMirroringTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LoveMirroringTest] SET  MULTI_USER 
GO
ALTER DATABASE [LoveMirroringTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LoveMirroringTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LoveMirroringTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LoveMirroringTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LoveMirroringTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LoveMirroringTest] SET QUERY_STORE = OFF
GO
USE [LoveMirroringTest]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerID] [smallint] IDENTITY(1,1) NOT NULL,
	[ProfilId] [smallint] NOT NULL,
	[QuestionId] [smallint] NOT NULL,
	[AnswerText] [varchar](128) NOT NULL,
	[AnswerValue] [smallint] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Firstname] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[QuizCompleted] [bit] NOT NULL,
	[SexeId] [smallint] NOT NULL,
	[SubscriptionId] [smallint] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Corpulences]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corpulences](
	[CorpulenceId] [smallint] IDENTITY(1,1) NOT NULL,
	[CorpulenceName] [char](32) NOT NULL,
 CONSTRAINT [PK_Corpulence] PRIMARY KEY CLUSTERED 
(
	[CorpulenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalServices]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalServices](
	[ExternalServiceId] [smallint] IDENTITY(1,1) NOT NULL,
	[ExternalServiceName] [char](32) NOT NULL,
	[ExternalServiceStatus] [bit] NOT NULL,
 CONSTRAINT [PK_ExternalService] PRIMARY KEY CLUSTERED 
(
	[ExternalServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HairColors]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HairColors](
	[HairColorId] [smallint] IDENTITY(1,1) NOT NULL,
	[HairColorName] [char](32) NOT NULL,
 CONSTRAINT [PK_HairColor] PRIMARY KEY CLUSTERED 
(
	[HairColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HairSizes]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HairSizes](
	[HairSizeId] [smallint] IDENTITY(1,1) NOT NULL,
	[HairSizeName] [char](32) NOT NULL,
 CONSTRAINT [PK_HairSize] PRIMARY KEY CLUSTERED 
(
	[HairSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[TalkId] [smallint] NOT NULL,
	[MessageDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musiques]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musiques](
	[MusiqueId] [smallint] IDENTITY(1,1) NOT NULL,
	[MusiqueName] [char](32) NOT NULL,
 CONSTRAINT [PK_Musique] PRIMARY KEY CLUSTERED 
(
	[MusiqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetters]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetters](
	[NewsLetterId] [smallint] IDENTITY(1,1) NOT NULL,
	[NewsLetterName] [char](32) NOT NULL,
 CONSTRAINT [PK_NewsLetter] PRIMARY KEY CLUSTERED 
(
	[NewsLetterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[PictureId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[PictureView] [image] NOT NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PicturesTags]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PicturesTags](
	[PictureId] [smallint] NOT NULL,
	[TagId] [smallint] NOT NULL,
 CONSTRAINT [PK_PicturesTags] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferences](
	[PreferenceId] [smallint] IDENTITY(1,1) NOT NULL,
	[SexualityId] [smallint] NOT NULL,
	[Religions] [bit] NOT NULL,
	[Age] [bit] NOT NULL,
	[Corpulences] [bit] NOT NULL,
 CONSTRAINT [PK_Preferences] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferencesCorpulences]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferencesCorpulences](
	[PreferenceId] [smallint] NOT NULL,
	[CorpulenceId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCECORPULENCE] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[CorpulenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferencesHairColors]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferencesHairColors](
	[PreferenceId] [smallint] NOT NULL,
	[HairColorId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCEHAIRCOLOR] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[HairColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferencesHairSizes]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferencesHairSizes](
	[PreferenceId] [smallint] NOT NULL,
	[HairSizeId] [smallint] NOT NULL,
 CONSTRAINT [PK_PreferencesHairSizes] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[HairSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferencesMusiques]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferencesMusiques](
	[PreferenceId] [smallint] NOT NULL,
	[MusiqueId] [smallint] NOT NULL,
 CONSTRAINT [PK_PreferencesMusiques] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[MusiqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferencesReligions]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferencesReligions](
	[PreferenceId] [smallint] NOT NULL,
	[ReligionId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCERELIGION] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferencesStyles]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferencesStyles](
	[PreferenceId] [smallint] NOT NULL,
	[StyleId] [smallint] NOT NULL,
 CONSTRAINT [PK_PreferencesStyles] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[StyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profils]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profils](
	[ProfilId] [smallint] IDENTITY(1,1) NOT NULL,
	[ProfilName] [char](64) NOT NULL,
	[ProfilDescription] [char](255) NOT NULL,
	[ProfilValue] [smallint] NOT NULL,
 CONSTRAINT [PK_Profils] PRIMARY KEY CLUSTERED 
(
	[ProfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfilsPreferences]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfilsPreferences](
	[PreferenceId] [smallint] NOT NULL,
	[ProfilId] [smallint] NOT NULL,
 CONSTRAINT [PK_PROFILPREFERENCE] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[ProfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [smallint] IDENTITY(1,1) NOT NULL,
	[QuestionText] [varchar](128) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religions]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religions](
	[ReligionId] [smallint] IDENTITY(1,1) NOT NULL,
	[ReligionName] [char](32) NOT NULL,
 CONSTRAINT [PK_Religions] PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexes]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexes](
	[SexeId] [smallint] IDENTITY(1,1) NOT NULL,
	[SexeName] [char](32) NOT NULL,
 CONSTRAINT [PK_Sexes] PRIMARY KEY CLUSTERED 
(
	[SexeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexualities]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexualities](
	[SexualityId] [smallint] IDENTITY(1,1) NOT NULL,
	[SexualityName] [char](32) NOT NULL,
 CONSTRAINT [PK_Sexualities] PRIMARY KEY CLUSTERED 
(
	[SexualityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Styles]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Styles](
	[StyleId] [smallint] IDENTITY(1,1) NOT NULL,
	[StyleName] [char](32) NOT NULL,
 CONSTRAINT [PK_Styles] PRIMARY KEY CLUSTERED 
(
	[StyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[SubscriptionId] [smallint] IDENTITY(1,1) NOT NULL,
	[SubscriptionName] [char](32) NOT NULL,
	[SubscriptionPrice] [money] NOT NULL,
	[SubscriptionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [smallint] IDENTITY(1,1) NOT NULL,
	[TagName] [char](32) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Talks]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talks](
	[TalkId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[IdUser2Talks] [nvarchar](450) NOT NULL,
	[TalkName] [char](32) NOT NULL,
 CONSTRAINT [PK_Talks] PRIMARY KEY CLUSTERED 
(
	[TalkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersExternalServices]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersExternalServices](
	[ExternalServiceId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UsersExternalServices] PRIMARY KEY CLUSTERED 
(
	[ExternalServiceId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersNewsLetters]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersNewsLetters](
	[NewsLetterId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UsersNewsLetters] PRIMARY KEY CLUSTERED 
(
	[NewsLetterId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersPreferences]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPreferences](
	[PreferenceId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UsersPreferences] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersProfils]    Script Date: 29-03-2020 18:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersProfils](
	[ProfilId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UsersProfils] PRIMARY KEY CLUSTERED 
(
	[ProfilId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 29-03-2020 18:11:14 ******/
create table [dbo].[UsersMatch]
  (
     [ID] [nvarchar](450)  not null  ,
     [ID_1] [nvarchar](450)  not null  
     ,
     constraint PK_UsersMatch primary key (ID, ID_1)
  ) 
go
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 29-03-2020 18:11:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 29-03-2020 18:11:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 29-03-2020 18:11:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 29-03-2020 18:11:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 29-03-2020 18:11:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 29-03-2020 18:11:14 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 29-03-2020 18:11:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Birthday]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_PROFIL] FOREIGN KEY([ProfilId])
REFERENCES [dbo].[Profils] ([ProfilId])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_PROFIL]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_QUESTION] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_QUESTION]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_SEXE] FOREIGN KEY([SexeId])
REFERENCES [dbo].[Sexes] ([SexeId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_SEXE]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_SUBSCRIPTION] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscriptions] ([SubscriptionId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_SUBSCRIPTION]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_MESSAGE_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_MESSAGE_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_MESSAGE_TALK] FOREIGN KEY([TalkId])
REFERENCES [dbo].[Talks] ([TalkId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_MESSAGE_TALK]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_PICTURE_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_PICTURE_ASPNETUSERS]
GO
ALTER TABLE [dbo].[PicturesTags]  WITH CHECK ADD  CONSTRAINT [FK_PICTURETAG_PICTURE] FOREIGN KEY([PictureId])
REFERENCES [dbo].[Pictures] ([PictureId])
GO
ALTER TABLE [dbo].[PicturesTags] CHECK CONSTRAINT [FK_PICTURETAG_PICTURE]
GO
ALTER TABLE [dbo].[PicturesTags]  WITH CHECK ADD  CONSTRAINT [FK_PICTURETAG_TAG] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[PicturesTags] CHECK CONSTRAINT [FK_PICTURETAG_TAG]
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCE_SEXUALITY] FOREIGN KEY([SexualityId])
REFERENCES [dbo].[Sexualities] ([SexualityId])
GO
ALTER TABLE [dbo].[Preferences] CHECK CONSTRAINT [FK_PREFERENCE_SEXUALITY]
GO
ALTER TABLE [dbo].[PreferencesCorpulences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCECORPULENCE_CORPULENCE] FOREIGN KEY([CorpulenceId])
REFERENCES [dbo].[Corpulences] ([CorpulenceId])
GO
ALTER TABLE [dbo].[PreferencesCorpulences] CHECK CONSTRAINT [FK_PREFERENCECORPULENCE_CORPULENCE]
GO
ALTER TABLE [dbo].[PreferencesCorpulences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCECORPULENCE_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferencesCorpulences] CHECK CONSTRAINT [FK_PREFERENCECORPULENCE_PREFERENCE]
GO
ALTER TABLE [dbo].[PreferencesHairColors]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRCOLOR_HAIRCOLOR] FOREIGN KEY([HairColorId])
REFERENCES [dbo].[HairColors] ([HairColorId])
GO
ALTER TABLE [dbo].[PreferencesHairColors] CHECK CONSTRAINT [FK_PREFERENCEHAIRCOLOR_HAIRCOLOR]
GO
ALTER TABLE [dbo].[PreferencesHairColors]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRCOLOR_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferencesHairColors] CHECK CONSTRAINT [FK_PREFERENCEHAIRCOLOR_PREFERENCE]
GO
ALTER TABLE [dbo].[PreferencesHairSizes]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRSIZE_HAIRSIZE] FOREIGN KEY([HairSizeId])
REFERENCES [dbo].[HairSizes] ([HairSizeId])
GO
ALTER TABLE [dbo].[PreferencesHairSizes] CHECK CONSTRAINT [FK_PREFERENCEHAIRSIZE_HAIRSIZE]
GO
ALTER TABLE [dbo].[PreferencesHairSizes]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRSIZE_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferencesHairSizes] CHECK CONSTRAINT [FK_PREFERENCEHAIRSIZE_PREFERENCE]
GO
ALTER TABLE [dbo].[PreferencesMusiques]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEMUSIQUE_MUSIQUE] FOREIGN KEY([MusiqueId])
REFERENCES [dbo].[Musiques] ([MusiqueId])
GO
ALTER TABLE [dbo].[PreferencesMusiques] CHECK CONSTRAINT [FK_PREFERENCEMUSIQUE_MUSIQUE]
GO
ALTER TABLE [dbo].[PreferencesMusiques]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEMUSIQUE_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferencesMusiques] CHECK CONSTRAINT [FK_PREFERENCEMUSIQUE_PREFERENCE]
GO
ALTER TABLE [dbo].[PreferencesReligions]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCERELIGION_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferencesReligions] CHECK CONSTRAINT [FK_PREFERENCERELIGION_PREFERENCE]
GO
ALTER TABLE [dbo].[PreferencesReligions]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCERELIGION_RELIGION] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religions] ([ReligionId])
GO
ALTER TABLE [dbo].[PreferencesReligions] CHECK CONSTRAINT [FK_PREFERENCERELIGION_RELIGION]
GO
ALTER TABLE [dbo].[PreferencesStyles]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCESTYLE_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferencesStyles] CHECK CONSTRAINT [FK_PREFERENCESTYLE_PREFERENCE]
GO
ALTER TABLE [dbo].[PreferencesStyles]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCESTYLE_STYLE] FOREIGN KEY([StyleId])
REFERENCES [dbo].[Styles] ([StyleId])
GO
ALTER TABLE [dbo].[PreferencesStyles] CHECK CONSTRAINT [FK_PREFERENCESTYLE_STYLE]
GO
ALTER TABLE [dbo].[ProfilsPreferences]  WITH CHECK ADD  CONSTRAINT [FK_PROFILPREFERENCE_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[ProfilsPreferences] CHECK CONSTRAINT [FK_PROFILPREFERENCE_PREFERENCE]
GO
ALTER TABLE [dbo].[ProfilsPreferences]  WITH CHECK ADD  CONSTRAINT [FK_PROFILPREFERENCE_PROFIL] FOREIGN KEY([ProfilId])
REFERENCES [dbo].[Profils] ([ProfilId])
GO
ALTER TABLE [dbo].[ProfilsPreferences] CHECK CONSTRAINT [FK_PROFILPREFERENCE_PROFIL]
GO
ALTER TABLE [dbo].[Talks]  WITH CHECK ADD  CONSTRAINT [FK_TALK_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Talks] CHECK CONSTRAINT [FK_TALK_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Talks]  WITH CHECK ADD  CONSTRAINT [FK_TALK_ASPNETUSERS1] FOREIGN KEY([IdUser2Talks])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Talks] CHECK CONSTRAINT [FK_TALK_ASPNETUSERS1]
GO
ALTER TABLE [dbo].[UsersExternalServices]  WITH CHECK ADD  CONSTRAINT [FK_USEREXTERNALSERVICES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsersExternalServices] CHECK CONSTRAINT [FK_USEREXTERNALSERVICES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UsersExternalServices]  WITH CHECK ADD  CONSTRAINT [FK_USEREXTERNALSERVICES_EXTERNALSERVICE] FOREIGN KEY([ExternalServiceId])
REFERENCES [dbo].[ExternalServices] ([ExternalServiceId])
GO
ALTER TABLE [dbo].[UsersExternalServices] CHECK CONSTRAINT [FK_USEREXTERNALSERVICES_EXTERNALSERVICE]
GO
alter table [dbo].[UsersMatch] 
     add constraint FK_USERSMATCH_ASPNETUSERS foreign key (ID) 
               references [AspNetUsers] ([Id])
go
alter table [dbo].[UsersMatch] 
     add constraint FK_USERSMATCH_ASPNETUSERS1 foreign key (ID_1) 
               references [AspNetUsers] ([Id])
go
ALTER TABLE [dbo].[UsersNewsLetters]  WITH CHECK ADD  CONSTRAINT [FK_USERNEWSLETTER_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsersNewsLetters] CHECK CONSTRAINT [FK_USERNEWSLETTER_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UsersNewsLetters]  WITH CHECK ADD  CONSTRAINT [FK_USERNEWSLETTER_NEWSLETTER] FOREIGN KEY([NewsLetterId])
REFERENCES [dbo].[NewsLetters] ([NewsLetterId])
GO
ALTER TABLE [dbo].[UsersNewsLetters] CHECK CONSTRAINT [FK_USERNEWSLETTER_NEWSLETTER]
GO
ALTER TABLE [dbo].[UsersPreferences]  WITH CHECK ADD  CONSTRAINT [FK_USERPREFERENCE_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsersPreferences] CHECK CONSTRAINT [FK_USERPREFERENCE_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UsersPreferences]  WITH CHECK ADD  CONSTRAINT [FK_USERPREFERENCE_PREFERENCE] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[UsersPreferences] CHECK CONSTRAINT [FK_USERPREFERENCE_PREFERENCE]
GO
ALTER TABLE [dbo].[UsersProfils]  WITH CHECK ADD  CONSTRAINT [FK_USERPROFIL_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsersProfils] CHECK CONSTRAINT [FK_USERPROFIL_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UsersProfils]  WITH CHECK ADD  CONSTRAINT [FK_USERPROFIL_PROFIL] FOREIGN KEY([ProfilId])
REFERENCES [dbo].[Profils] ([ProfilId])
GO
ALTER TABLE [dbo].[UsersProfils] CHECK CONSTRAINT [FK_USERPROFIL_PROFIL]
GO
USE [master]
GO
ALTER DATABASE [LoveMirroringTest] SET  READ_WRITE 
GO
