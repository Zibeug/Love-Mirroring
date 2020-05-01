USE [master]
GO
DROP DATABASE [LoveMirroring]
/****** Object:  Database [LoveMirroring]    Script Date: 14-04-2020 15:31:01 ******/
CREATE DATABASE [LoveMirroring]

GO
ALTER DATABASE [LoveMirroring] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LoveMirroring].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LoveMirroring] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LoveMirroring] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LoveMirroring] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LoveMirroring] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LoveMirroring] SET ARITHABORT OFF 
GO
ALTER DATABASE [LoveMirroring] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LoveMirroring] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LoveMirroring] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LoveMirroring] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LoveMirroring] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LoveMirroring] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LoveMirroring] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LoveMirroring] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LoveMirroring] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LoveMirroring] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LoveMirroring] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LoveMirroring] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LoveMirroring] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LoveMirroring] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LoveMirroring] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LoveMirroring] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LoveMirroring] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LoveMirroring] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LoveMirroring] SET  MULTI_USER 
GO
ALTER DATABASE [LoveMirroring] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LoveMirroring] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LoveMirroring] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LoveMirroring] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LoveMirroring] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LoveMirroring] SET QUERY_STORE = OFF
GO
USE [LoveMirroring]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14-04-2020 15:31:01 ******/
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
/****** Object:  Table [dbo].[Answers]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerId] [smallint] IDENTITY(1,1) NOT NULL,
	[ProfilId] [smallint] NOT NULL,
	[QuestionId] [smallint] NOT NULL,
	[AnswerText] [varchar](128) NOT NULL,
	[AnswerValue] [smallint] NOT NULL,
 CONSTRAINT [PK_ANSWERS] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_ASPNETROLECLAIMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [varchar](256) NULL,
	[NormalizedName] [varchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_ASPNETUSERCLAIMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [varchar](450) NOT NULL,
	[ProviderKey] [varchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [text] NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14-04-2020 15:31:01 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[HairColorId] [smallint] NULL,
	[CorpulenceId] [smallint] NULL,
	[SexeId] [smallint] NULL,
	[HairSizeId] [smallint] NULL,
	[SubscriptionId] [smallint] NULL,
	[SexualityId] [smallint] NULL,
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
 CONSTRAINT [PK_ASPNETUSERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AC_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14-04-2020 15:31:01 ******/
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
/****** Object:  Table [dbo].[Corpulences]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corpulences](
	[CorpulenceId] [smallint] IDENTITY(1,1) NOT NULL,
	[CorpulenceName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_CORPULENCES] PRIMARY KEY CLUSTERED 
(
	[CorpulenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalServices]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalServices](
	[ExternalServiceId] [smallint] IDENTITY(1,1) NOT NULL,
	[ExternalServiceName] [varchar](32) NOT NULL,
	[ExternalServiceStatus] [bit] NOT NULL,
 CONSTRAINT [PK_EXTERNALSERVICES] PRIMARY KEY CLUSTERED 
(
	[ExternalServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HairColor]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HairColor](
	[HairColorId] [smallint] IDENTITY(1,1) NOT NULL,
	[HairColorName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_HAIRCOLORS] PRIMARY KEY CLUSTERED 
(
	[HairColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HairSizes]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HairSizes](
	[HairSizeId] [smallint] IDENTITY(1,1) NOT NULL,
	[HairSizeName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_HAIRSIZES] PRIMARY KEY CLUSTERED 
(
	[HairSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[TalkId] [smallint] NOT NULL,
	[MessageDate] [datetime] NOT NULL,
	[MessageText] [varchar](128) NOT NULL,
 CONSTRAINT [PK_MESSAGES] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musics]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musics](
	[MusicId] [smallint] IDENTITY(1,1) NOT NULL,
	[MusicName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_MUSICS] PRIMARY KEY CLUSTERED 
(
	[MusicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletters]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletters](
	[NewsletterId] [smallint] IDENTITY(1,1) NOT NULL,
	[NewsletterName] [varchar](32) NOT NULL,
	[NewsletterStatus] [bit] NOT NULL,
 CONSTRAINT [PK_NEWSLETTERS] PRIMARY KEY CLUSTERED 
(
	[NewsletterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[PictureId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[PictureView] [image] NOT NULL,
 CONSTRAINT [PK_PICTURES] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PictureTag]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PictureTag](
	[PictureId] [smallint] NOT NULL,
	[TagId] [smallint] NOT NULL,
 CONSTRAINT [PK_PICTURETAG] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceCorpulences]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceCorpulences](
	[PreferenceId] [smallint] NOT NULL,
	[CorpulenceId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCECORPULENCES] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[CorpulenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceHairColors]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceHairColors](
	[PreferenceId] [smallint] NOT NULL,
	[HairColorId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCEHAIRCOLORS] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[HairColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceHairSizes]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceHairSizes](
	[PreferenceId] [smallint] NOT NULL,
	[HairSizeId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCEHAIRSIZES] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[HairSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceMusics]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceMusics](
	[PreferenceId] [smallint] NOT NULL,
	[MusicId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCEMUSICS] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[MusicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceReligions]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceReligions](
	[PreferenceId] [smallint] NOT NULL,
	[ReligionId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCERELIGIONS] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferences](
	[PreferenceId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[SexualityId] [smallint] NOT NULL,
	[AgeMin] [smallint] NOT NULL,
	[AgeMax] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCES] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceStyles]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceStyles](
	[PreferenceId] [smallint] NOT NULL,
	[StyleId] [smallint] NOT NULL,
 CONSTRAINT [PK_PREFERENCESTYLES] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC,
	[StyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profils]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profils](
	[ProfilId] [smallint] IDENTITY(1,1) NOT NULL,
	[ProfilName] [varchar](32) NOT NULL,
	[ProfilDescription] [text] NOT NULL,
 CONSTRAINT [PK_PROFILS] PRIMARY KEY CLUSTERED 
(
	[ProfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [smallint] IDENTITY(1,1) NOT NULL,
	[QuestionText] [varchar](128) NOT NULL,
 CONSTRAINT [PK_QUESTIONS] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religions]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religions](
	[ReligionId] [smallint] IDENTITY(1,1) NOT NULL,
	[ReligionName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_RELIGIONS] PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexes]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexes](
	[SexeId] [smallint] IDENTITY(1,1) NOT NULL,
	[SexeName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_SEXES] PRIMARY KEY CLUSTERED 
(
	[SexeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexualities]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexualities](
	[SexualityId] [smallint] IDENTITY(1,1) NOT NULL,
	[SexualityName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_SEXUALITIES] PRIMARY KEY CLUSTERED 
(
	[SexualityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Styles]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Styles](
	[StyleId] [smallint] IDENTITY(1,1) NOT NULL,
	[StyleName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_STYLES] PRIMARY KEY CLUSTERED 
(
	[StyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[SubscriptionId] [smallint] IDENTITY(1,1) NOT NULL,
	[SubscriptionName] [varchar](32) NOT NULL,
	[SubscriptionPrice] [money] NOT NULL,
	[SubscriptionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SUBSCRIPTIONS] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [smallint] IDENTITY(1,1) NOT NULL,
	[TagName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_TAGS] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Talks]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talks](
	[TalkId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[IdUser2Talk] [nvarchar](450) NOT NULL,
	[TalkName] [varchar](64) NOT NULL,
 CONSTRAINT [PK_TALKS] PRIMARY KEY CLUSTERED 
(
	[TalkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserExternalServices]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserExternalServices](
	[ExternalServiceId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_USEREXTERNALSERVICES] PRIMARY KEY CLUSTERED 
(
	[ExternalServiceId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLikes]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLikes](
	[Id] [nvarchar](450) NOT NULL,
	[ID_1] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_USERLIKES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMusics]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMusics](
	[Id] [nvarchar](450) NOT NULL,
	[MusicId] [smallint] NOT NULL,
 CONSTRAINT [PK_USERMUSICS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[MusicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNewsletters]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNewsletters](
	[NewsletterId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_USERNEWSLETTERS] PRIMARY KEY CLUSTERED 
(
	[NewsletterId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfils]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfils](
	[ProfilId] [smallint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[UserProfilValue] [smallint] NULL,
 CONSTRAINT [PK_USERPROFILS] PRIMARY KEY CLUSTERED 
(
	[ProfilId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStyles]    Script Date: 14-04-2020 15:31:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStyles](
	[Id] [nvarchar](450) NOT NULL,
	[StyleId] [smallint] NOT NULL,
 CONSTRAINT [PK_USERSTYLES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[StyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* -----------------------------------------------------------------------------
      TABLE : USERTRACES
----------------------------------------------------------------------------- */

create table UserTraces
  (
     LOGID [smallint] IDENTITY(1,1) NOT NULL,
     ID [nvarchar](450)  null  ,
     LOGDATE datetime  not null  ,
     PAGEVISITED varchar(128)  not null  ,
	 IPADRESS varchar(128)  not null  
     ,
     constraint PK_USERTRACES primary key (LOGID)
  ) 
go

alter table USERTRACES 
     add constraint FK_USERTRACES_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
			   ON DELETE CASCADE
go
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_ANSWERS_PROFILS] FOREIGN KEY([ProfilId])
REFERENCES [dbo].[Profils] ([ProfilId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_ANSWERS_PROFILS]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_ANSWERS_QUESTIONS] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_ANSWERS_QUESTIONS]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETROLECLAIMS_ASPNETROLES] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_ASPNETROLECLAIMS_ASPNETROLES]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERCLAIMS_ASPNETUSERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_ASPNETUSERCLAIMS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERLOGINS_ASPNETUSERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_ASPNETUSERLOGINS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERROLES_ASPNETROLES] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_ASPNETUSERROLES_ASPNETROLES]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERROLES_ASPNETUSERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_ASPNETUSERROLES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_CORPULENCES] FOREIGN KEY([CorpulenceId])
REFERENCES [dbo].[Corpulences] ([CorpulenceId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_CORPULENCES]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_HAIRCOLORS] FOREIGN KEY([HairColorId])
REFERENCES [dbo].[HairColor] ([HairColorId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_HAIRCOLORS]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_HAIRSIZES] FOREIGN KEY([HairSizeId])
REFERENCES [dbo].[HairSizes] ([HairSizeId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_HAIRSIZES]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_SEXES] FOREIGN KEY([SexeId])
REFERENCES [dbo].[Sexes] ([SexeId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_SEXES]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_SEXUALITIES] FOREIGN KEY([SexualityId])
REFERENCES [dbo].[Sexualities] ([SexualityId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_SEXUALITIES]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_SUBSCRIPTIONS] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscriptions] ([SubscriptionId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_SUBSCRIPTIONS]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERTOKENS_ASPNETUSERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_ASPNETUSERTOKENS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_MESSAGES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_MESSAGES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_MESSAGES_TALKS] FOREIGN KEY([TalkId])
REFERENCES [dbo].[Talks] ([TalkId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_MESSAGES_TALKS]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_PICTURES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_PICTURES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[PictureTag]  WITH CHECK ADD  CONSTRAINT [FK_PICTURETAG_PICTURES] FOREIGN KEY([PictureId])
REFERENCES [dbo].[Pictures] ([PictureId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PictureTag] CHECK CONSTRAINT [FK_PICTURETAG_PICTURES]
GO
ALTER TABLE [dbo].[PictureTag]  WITH CHECK ADD  CONSTRAINT [FK_PICTURETAG_TAGS] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[PictureTag] CHECK CONSTRAINT [FK_PICTURETAG_TAGS]
GO
ALTER TABLE [dbo].[PreferenceCorpulences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCECORPULENCES_CORPULENCES] FOREIGN KEY([CorpulenceId])
REFERENCES [dbo].[Corpulences] ([CorpulenceId])
GO
ALTER TABLE [dbo].[PreferenceCorpulences] CHECK CONSTRAINT [FK_PREFERENCECORPULENCES_CORPULENCES]
GO
ALTER TABLE [dbo].[PreferenceCorpulences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCECORPULENCES_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferenceCorpulences] CHECK CONSTRAINT [FK_PREFERENCECORPULENCES_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceHairColors]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRCOLORS_HAIRCOLORS] FOREIGN KEY([HairColorId])
REFERENCES [dbo].[HairColor] ([HairColorId])
GO
ALTER TABLE [dbo].[PreferenceHairColors] CHECK CONSTRAINT [FK_PREFERENCEHAIRCOLORS_HAIRCOLORS]
GO
ALTER TABLE [dbo].[PreferenceHairColors]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRCOLORS_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferenceHairColors] CHECK CONSTRAINT [FK_PREFERENCEHAIRCOLORS_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceHairSizes]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRSIZES_HAIRSIZES] FOREIGN KEY([HairSizeId])
REFERENCES [dbo].[HairSizes] ([HairSizeId])
GO
ALTER TABLE [dbo].[PreferenceHairSizes] CHECK CONSTRAINT [FK_PREFERENCEHAIRSIZES_HAIRSIZES]
GO
ALTER TABLE [dbo].[PreferenceHairSizes]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEHAIRSIZES_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferenceHairSizes] CHECK CONSTRAINT [FK_PREFERENCEHAIRSIZES_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceMusics]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEMUSICS_MUSICS] FOREIGN KEY([MusicId])
REFERENCES [dbo].[Musics] ([MusicId])
GO
ALTER TABLE [dbo].[PreferenceMusics] CHECK CONSTRAINT [FK_PREFERENCEMUSICS_MUSICS]
GO
ALTER TABLE [dbo].[PreferenceMusics]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCEMUSICS_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferenceMusics] CHECK CONSTRAINT [FK_PREFERENCEMUSICS_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceReligions]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCERELIGIONS_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferenceReligions] CHECK CONSTRAINT [FK_PREFERENCERELIGIONS_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceReligions]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCERELIGIONS_RELIGIONS] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religions] ([ReligionId])
GO
ALTER TABLE [dbo].[PreferenceReligions] CHECK CONSTRAINT [FK_PREFERENCERELIGIONS_RELIGIONS]
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Preferences] CHECK CONSTRAINT [FK_PREFERENCES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCES_SEXUALITIES] FOREIGN KEY([SexualityId])
REFERENCES [dbo].[Sexualities] ([SexualityId])
GO
ALTER TABLE [dbo].[Preferences] CHECK CONSTRAINT [FK_PREFERENCES_SEXUALITIES]
GO
ALTER TABLE [dbo].[PreferenceStyles]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCESTYLES_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[PreferenceStyles] CHECK CONSTRAINT [FK_PREFERENCESTYLES_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceStyles]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCESTYLES_STYLES] FOREIGN KEY([StyleId])
REFERENCES [dbo].[Styles] ([StyleId])
GO
ALTER TABLE [dbo].[PreferenceStyles] CHECK CONSTRAINT [FK_PREFERENCESTYLES_STYLES]
GO
ALTER TABLE [dbo].[Talks]  WITH CHECK ADD  CONSTRAINT [FK_TALKS_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Talks] CHECK CONSTRAINT [FK_TALKS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Talks]  WITH CHECK ADD  CONSTRAINT [FK_TALKS_ASPNETUSERS1] FOREIGN KEY([IdUser2Talk])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Talks] CHECK CONSTRAINT [FK_TALKS_ASPNETUSERS1]
GO
ALTER TABLE [dbo].[UserExternalServices]  WITH CHECK ADD  CONSTRAINT [FK_USEREXTERNALSERVICES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExternalServices] CHECK CONSTRAINT [FK_USEREXTERNALSERVICES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserExternalServices]  WITH CHECK ADD  CONSTRAINT [FK_USEREXTERNALSERVICES_EXTERNALSERVICES] FOREIGN KEY([ExternalServiceId])
REFERENCES [dbo].[ExternalServices] ([ExternalServiceId])
GO
ALTER TABLE [dbo].[UserExternalServices] CHECK CONSTRAINT [FK_USEREXTERNALSERVICES_EXTERNALSERVICES]
GO
ALTER TABLE [dbo].[UserLikes]  WITH CHECK ADD  CONSTRAINT [FK_USERLIKES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLikes] CHECK CONSTRAINT [FK_USERLIKES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserLikes]  WITH CHECK ADD  CONSTRAINT [FK_USERLIKES_ASPNETUSERS1] FOREIGN KEY([ID_1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserLikes] CHECK CONSTRAINT [FK_USERLIKES_ASPNETUSERS1]
GO
ALTER TABLE [dbo].[UserMusics]  WITH CHECK ADD  CONSTRAINT [FK_USERMUSICS_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserMusics] CHECK CONSTRAINT [FK_USERMUSICS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserMusics]  WITH CHECK ADD  CONSTRAINT [FK_USERMUSICS_MUSICS] FOREIGN KEY([MusicId])
REFERENCES [dbo].[Musics] ([MusicId])
GO
ALTER TABLE [dbo].[UserMusics] CHECK CONSTRAINT [FK_USERMUSICS_MUSICS]
GO
ALTER TABLE [dbo].[UserNewsletters]  WITH CHECK ADD  CONSTRAINT [FK_USERNEWSLETTERS_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserNewsletters] CHECK CONSTRAINT [FK_USERNEWSLETTERS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserNewsletters]  WITH CHECK ADD  CONSTRAINT [FK_USERNEWSLETTERS_NEWSLETTERS] FOREIGN KEY([NewsletterId])
REFERENCES [dbo].[Newsletters] ([NewsletterId])
GO
ALTER TABLE [dbo].[UserNewsletters] CHECK CONSTRAINT [FK_USERNEWSLETTERS_NEWSLETTERS]
GO
ALTER TABLE [dbo].[UserProfils]  WITH CHECK ADD  CONSTRAINT [FK_USERPROFILS_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfils] CHECK CONSTRAINT [FK_USERPROFILS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserProfils]  WITH CHECK ADD  CONSTRAINT [FK_USERPROFILS_PROFILS] FOREIGN KEY([ProfilId])
REFERENCES [dbo].[Profils] ([ProfilId])
GO
ALTER TABLE [dbo].[UserProfils] CHECK CONSTRAINT [FK_USERPROFILS_PROFILS]
GO
ALTER TABLE [dbo].[UserStyles]  WITH CHECK ADD  CONSTRAINT [FK_USERSTYLES_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserStyles] CHECK CONSTRAINT [FK_USERSTYLES_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserStyles]  WITH CHECK ADD  CONSTRAINT [FK_USERSTYLES_STYLES] FOREIGN KEY([StyleId])
REFERENCES [dbo].[Styles] ([StyleId])
GO
ALTER TABLE [dbo].[UserStyles] CHECK CONSTRAINT [FK_USERSTYLES_STYLES]
GO
USE [master]
GO
ALTER DATABASE [LoveMirroring] SET  READ_WRITE 
GO


