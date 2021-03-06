USE [master]
GO
/****** Object:  Database [LoveMirroring]    Script Date: 15.05.2020 14:00:12 ******/
CREATE DATABASE [LoveMirroring]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LoveMirroring', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LoveMirroring.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LoveMirroring_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LoveMirroring_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Answers]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 15.05.2020 14:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_ASPNETUSERCLAIMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 15.05.2020 14:00:12 ******/
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
	[ReligionId] [smallint] NULL,
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
	[AccountCompleted] [bit] NOT NULL,
 CONSTRAINT [PK_ASPNETUSERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Corpulences]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[ExternalServices]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[HairColor]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[HairSizes]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Messages]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Musics]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Newsletters]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Pictures]    Script Date: 15.05.2020 14:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[PictureId] [smallint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[PictureView] [nvarchar](450) NOT NULL,
	[PictureConfirmed] [bit] NOT NULL,
 CONSTRAINT [PK_PICTURES] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PictureTag]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[PreferenceCorpulences]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[PreferenceHairColors]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[PreferenceHairSizes]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[PreferenceMusics]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[PreferenceReligions]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Preferences]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[PreferenceStyles]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Profils]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Religions]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Sexes]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Sexualities]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Styles]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[Talks]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserExternalServices]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserLikes]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserMusics]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserNewsletters]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserProfils]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserStyles]    Script Date: 15.05.2020 14:00:12 ******/
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
/****** Object:  Table [dbo].[UserSubscriptions]    Script Date: 15.05.2020 14:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSubscriptions](
	[UserSubscriptionsID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[UserSubscriptionsDATE] [datetime] NOT NULL,
	[UserSubscriptionsAmount] [decimal](18, 0) NOT NULL,
	[SubscriptionsID] [smallint] NOT NULL,
 CONSTRAINT [PK_UserSubscriptionsIDID] PRIMARY KEY CLUSTERED 
(
	[UserSubscriptionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTraces]    Script Date: 15.05.2020 14:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTraces](
	[LOGID] [smallint] IDENTITY(1,1) NOT NULL,
	[ID] [nvarchar](450) NULL,
	[LOGDATE] [datetime] NOT NULL,
	[PAGEVISITED] [varchar](128) NOT NULL,
	[IPADRESS] [varchar](128) NOT NULL,
 CONSTRAINT [PK_USERTRACES] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (2, 1, 1, N'sensible, chaleureux, compatissant', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (4, 3, 1, N'logique, responsable, organisé, pragmatique, sérieux, ordonné, efficace', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (5, 4, 1, N'conscencieux, engagé, observateur, personne de parole, défend son point de vue avec férocité', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (6, 5, 1, N'adaptable, charmeur, plein de ressources, intuitif, aime le risque', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (7, 6, 1, N'calme, imaginatif, réfléchi, résistant au stress', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (8, 7, 1, N'créatif, ludique, spontané, rayonnant, enthousiaste, social, joueur, plaisantin', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (9, 1, 2, N'métiers relationels', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (10, 1, 2, N'métiers sensoriels', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (11, 3, 2, N'ingénieur', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (12, 3, 2, N'technicien', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (13, 3, 2, N'scientifique', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (14, 3, 2, N'gestionnaire', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (15, 4, 2, N'politique', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (16, 5, 2, N'vente', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (17, 5, 2, N'sports', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (19, 6, 2, N'chercheur', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (20, 6, 2, N'artisan', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (21, 6, 2, N'artiste', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (22, 6, 2, N'écrivain', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (23, 7, 2, N'créatif', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (24, 7, 2, N'métier dans le loisir', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (25, 7, 2, N'artiste', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (26, 7, 2, N'indépendant', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (27, 1, 3, N's''adapte trop, ne s''affirme pas', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (28, 3, 3, N'aime le contrôle, se surmener, faire les choses par soi-même', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (29, 4, 3, N'partir en croisade', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (30, 5, 3, N'manipulateur, tirer avantage de la situation', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (32, 6, 3, N'se replier sur soi-même, mauvaise gestion du stress', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (33, 7, 3, N'conteste facilement, aime blâmer les autres, éviter les reponsabilités', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (34, 1, 4, N'vous habiller pour plaire', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (35, 1, 4, N'sourire', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (36, 1, 4, N'travailler en groupe', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (38, 1, 4, N'décorer ou personnaliser votre environnement', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (39, 3, 4, N'vous habiller selon la situation', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (40, 3, 4, N'travailler en petit groupe', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (41, 3, 4, N'vous aimer les environnements fonctionnels', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (42, 4, 4, N'vous habiller selon des normes', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (43, 4, 4, N'être dans le traditionnel', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (44, 4, 4, N'vous aimer les normes culturelles', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (45, 4, 4, N'vous aimer les normes professionelles', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (46, 5, 4, N'ne pas vous occuper de votre aspect extérieur', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (47, 5, 4, N'vous aimer travailler seul', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (48, 5, 4, N'être efficace sur les tâches répétitives', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (49, 7, 4, N'vous habiller pour être original', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (51, 7, 4, N'être expressif', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (52, 7, 4, N'rire', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (53, 7, 4, N'travailler en groupe', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (54, 6, 4, N'à aimer les lieux tranquilles', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (55, 6, 4, N'à ne pas vous occuper de votre aspect extérieur', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (56, 1, 5, N'être reconnu comme personne', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (57, 1, 5, N'se sentir aimé via sa personnalité', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (58, 3, 5, N'aime être reconnu par son talent', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (59, 3, 5, N'aime être reconnu par se qu''il fait', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (60, 3, 5, N'aime être reconnu par ses idées', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (61, 4, 5, N'aime être reconnue par ses opinions', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (62, 4, 5, N'aime être reconnue par la qualité de son travail', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (63, 5, 5, N'besoin d''excitation', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (64, 5, 5, N'cherche des sensations fortes', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (65, 6, 5, N'calme', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (66, 6, 5, N'solitude', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (67, 7, 5, N'cherche les contacts ludiques', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (68, 7, 5, N'cherche les contacts dynamiques', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (69, 1, 6, N'vous vous basez sur vos ressentis', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (70, 1, 6, N'utiliser un language émotionnel', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (72, 3, 6, N'aimez classifier les personnes', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (73, 3, 6, N'aimez classifier les idées', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (74, 3, 6, N'aimez classifier les événements', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (75, 3, 6, N'utilisez un language basé sur les idées', 3)
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'Administrateur', NULL, N'Administrateur', N'ADMINISTRATEUR')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'Utilisateur', NULL, N'Utilisateur', N'UTILISATEUR')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd416a9f8-83c8-4c98-9736-6d1461b5024c', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', N'Administrateur')
GO
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted]) VALUES (N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', 1, 1, 1, 1, NULL, 1, 1, 0, N'8d254e77-6bde-4a95-9ef5-10e2165c65b9', N'sebastien.berger@eduvaud.ch', 1, 1, NULL, N'SEBASTIEN.BERGER@EDUVAUD.CH', N'SEB1', N'AQAAAAEAACcQAAAAEDsvPEdTkSXGpRrGpS8jvIjrl1cStT2YuKJifbqid6LZCOcQFxmPclAF6oV00D17/w==', N'+41793084965', 1, N'273L5ETTBSRZUHEGY5TOJVIEVQPWOB3J', 0, N'seb1', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted]) VALUES (N'd416a9f8-83c8-4c98-9736-6d1461b5024c', 1, 1, 1, 1, NULL, 1, 1, 0, N'89219fa9-6e75-49e5-9cd5-7dfbb7e1a4e8', N'berger.sebastien@bluewin.ch', 1, 1, NULL, N'BERGER.SEBASTIEN@BLUEWIN.CH', N'SEB2', N'AQAAAAEAACcQAAAAEJoStDTxEORTtN1vm4r6g5et2zqsm0YyO/AvYsaLakjs8ArBfYIErAAb6UZUJ+cO4g==', N'+41793084965', 1, N'BM6DSK55XDP5UJUR6ZEBCHX3UPWKT2NQ', 0, N'seb2', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted]) VALUES (N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 1, 1, 1, 1, NULL, 2, 1, 0, N'bbdd8672-cdcb-4194-ab36-211541865fc5', N'sfdsf@gmail.com', 1, 1, NULL, N'SFDSF@GMAIL.COM', N'SEB', N'AQAAAAEAACcQAAAAEMeuxYMsNCYqIfKNQVAeZ/n6Ld4OOzdUOoHJjlWuDUOzH98pYZY2eil8Z2bt1rlYog==', N'+41793084965', 1, N'3RQLBACJUBOPHFL3LLIEADWL4EZRKRQ2', 0, N'seb', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Corpulences] ON 

INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (1, N'Enrobé')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (2, N'Maigre')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (3, N'Sportif')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (4, N'Normal')
SET IDENTITY_INSERT [dbo].[Corpulences] OFF
GO
SET IDENTITY_INSERT [dbo].[HairColor] ON 

INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (1, N'Rouge')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (2, N'Noir')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (3, N'Brun')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (4, N'Blond')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (5, N'Roux')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (6, N'Vert')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (7, N'Bleu')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (8, N'Pas mentionné')
SET IDENTITY_INSERT [dbo].[HairColor] OFF
GO
SET IDENTITY_INSERT [dbo].[HairSizes] ON 

INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (1, N'Court')
INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (2, N'Long')
INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (3, N'Volumineux')
SET IDENTITY_INSERT [dbo].[HairSizes] OFF
GO
INSERT [dbo].[PreferenceCorpulences] ([PreferenceId], [CorpulenceId]) VALUES (1, 1)
GO
INSERT [dbo].[PreferenceHairColors] ([PreferenceId], [HairColorId]) VALUES (1, 1)
GO
INSERT [dbo].[PreferenceHairSizes] ([PreferenceId], [HairSizeId]) VALUES (1, 1)
GO
INSERT [dbo].[PreferenceReligions] ([PreferenceId], [ReligionId]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[Preferences] ON 

INSERT [dbo].[Preferences] ([PreferenceId], [Id], [SexualityId], [AgeMin], [AgeMax]) VALUES (1, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 2, 18, 30)
SET IDENTITY_INSERT [dbo].[Preferences] OFF
GO
INSERT [dbo].[PreferenceStyles] ([PreferenceId], [StyleId]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[Profils] ON 

INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (1, N'Empathique', N'Empathique')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (3, N'Travaillomane', N'Travaillomane')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (4, N'Persévérant', N'Persévérant')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (5, N'Promoteur', N'Promoteur')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (6, N'Rêveur', N'Rêveur')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (7, N'Rebelle', N'Rebelle')
SET IDENTITY_INSERT [dbo].[Profils] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (1, N'Quels sont vos points fort ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (2, N'Quel est votre activité professionnelle ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (3, N'Quel est sont vos points négatifs ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (4, N'Vous aimez plutôt ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (5, N'Quels sont vos besoins psychologique ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (6, N'En général vous ?')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Religions] ON 

INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (1, N'Musulman')
INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (2, N'Chrétien')
INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (3, N'Athé')
SET IDENTITY_INSERT [dbo].[Religions] OFF
GO
SET IDENTITY_INSERT [dbo].[Sexes] ON 

INSERT [dbo].[Sexes] ([SexeId], [SexeName]) VALUES (1, N'Homme')
INSERT [dbo].[Sexes] ([SexeId], [SexeName]) VALUES (2, N'Femme')
SET IDENTITY_INSERT [dbo].[Sexes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sexualities] ON 

INSERT [dbo].[Sexualities] ([SexualityId], [SexualityName]) VALUES (1, N'Hétérosexuel')
INSERT [dbo].[Sexualities] ([SexualityId], [SexualityName]) VALUES (2, N'Homosexuel')
SET IDENTITY_INSERT [dbo].[Sexualities] OFF
GO
SET IDENTITY_INSERT [dbo].[Styles] ON 

INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (1, N'Urban')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (2, N'Punk')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (3, N'HipHop')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (4, N'Classique')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (5, N'Fashion')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (6, N'Classe')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (7, N'Négligé')
SET IDENTITY_INSERT [dbo].[Styles] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscriptions] ON 

INSERT [dbo].[Subscriptions] ([SubscriptionId], [SubscriptionName], [SubscriptionPrice], [SubscriptionDate]) VALUES (1, N'1 Mois', 10.0000, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Subscriptions] ([SubscriptionId], [SubscriptionName], [SubscriptionPrice], [SubscriptionDate]) VALUES (2, N'1 Année', 60.0000, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Subscriptions] OFF
GO
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'd416a9f8-83c8-4c98-9736-6d1461b5024c', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 1)
GO
SET IDENTITY_INSERT [dbo].[UserTraces] ON 

INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (4, NULL, CAST(N'2020-04-30T15:47:46.477' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (5, NULL, CAST(N'2020-04-30T15:47:50.730' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (6, NULL, CAST(N'2020-04-30T15:49:00.777' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (7, NULL, CAST(N'2020-04-30T15:51:28.293' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (8, NULL, CAST(N'2020-04-30T15:52:41.340' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (9, NULL, CAST(N'2020-04-30T15:53:39.730' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (11, NULL, CAST(N'2020-05-04T13:53:18.153' AS DateTime), N'SignUp : A User is trying to sign up', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (12, NULL, CAST(N'2020-05-04T13:53:59.103' AS DateTime), N'SignUp : A User is trying to sign up', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (19, NULL, CAST(N'2020-05-07T09:06:48.223' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (20, NULL, CAST(N'2020-05-07T09:09:28.497' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (21, NULL, CAST(N'2020-05-07T09:25:24.590' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (22, NULL, CAST(N'2020-05-07T09:25:39.493' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (23, NULL, CAST(N'2020-05-07T09:27:18.433' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (24, NULL, CAST(N'2020-05-07T09:29:13.810' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (25, NULL, CAST(N'2020-05-07T09:31:26.810' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (26, NULL, CAST(N'2020-05-07T09:32:51.740' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (27, NULL, CAST(N'2020-05-07T09:33:38.620' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (28, NULL, CAST(N'2020-05-07T09:33:51.967' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (29, NULL, CAST(N'2020-05-07T09:35:43.483' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (30, NULL, CAST(N'2020-05-07T09:36:32.823' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (31, NULL, CAST(N'2020-05-07T09:37:52.100' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (32, NULL, CAST(N'2020-05-07T09:39:40.630' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (33, NULL, CAST(N'2020-05-07T09:41:53.617' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (34, NULL, CAST(N'2020-05-07T09:44:46.593' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (35, NULL, CAST(N'2020-05-07T09:58:12.787' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (36, NULL, CAST(N'2020-05-07T10:00:05.207' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (37, NULL, CAST(N'2020-05-07T10:03:31.307' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (38, NULL, CAST(N'2020-05-07T10:03:31.307' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (39, NULL, CAST(N'2020-05-07T10:04:52.000' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (46, NULL, CAST(N'2020-05-09T13:23:17.400' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (55, NULL, CAST(N'2020-05-09T16:18:48.600' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (56, NULL, CAST(N'2020-05-09T16:19:36.310' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (57, NULL, CAST(N'2020-05-09T16:19:54.180' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (63, NULL, CAST(N'2020-05-10T12:03:31.967' AS DateTime), N'SignUp : A User is trying to sign up', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (64, NULL, CAST(N'2020-05-10T13:41:59.780' AS DateTime), N'SignUp : A User is trying to sign up', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (65, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-10T13:42:32.440' AS DateTime), N'SignUp : User created a new account', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (66, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-10T13:44:59.323' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (67, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-14T13:52:18.347' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (68, NULL, CAST(N'2020-05-14T13:56:22.663' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (69, N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', CAST(N'2020-05-14T13:56:55.707' AS DateTime), N'SignUp : User created a new account', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (70, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-14T13:58:09.057' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (71, NULL, CAST(N'2020-05-14T14:12:35.803' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (72, NULL, CAST(N'2020-05-14T14:14:14.953' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (73, N'd416a9f8-83c8-4c98-9736-6d1461b5024c', CAST(N'2020-05-14T14:14:47.560' AS DateTime), N'SignUp : User created a new account', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (74, N'd416a9f8-83c8-4c98-9736-6d1461b5024c', CAST(N'2020-05-14T14:16:12.337' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (75, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-14T14:29:42.727' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (76, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-14T14:32:02.910' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (77, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-14T14:58:53.843' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (78, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-14T15:02:18.273' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (79, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-15T13:47:38.463' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (80, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-15T13:56:54.303' AS DateTime), N'Login : A User signs in ', N'::1')
SET IDENTITY_INSERT [dbo].[UserTraces] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AC_Email]    Script Date: 15.05.2020 14:00:13 ******/
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [AC_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_ASPNETUSERS_RELIGION] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religions] ([ReligionId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_ASPNETUSERS_RELIGION]
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
ON DELETE CASCADE
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
ON DELETE CASCADE
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
ON DELETE CASCADE
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
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PreferenceMusics] CHECK CONSTRAINT [FK_PREFERENCEMUSICS_PREFERENCES]
GO
ALTER TABLE [dbo].[PreferenceReligions]  WITH CHECK ADD  CONSTRAINT [FK_PREFERENCERELIGIONS_PREFERENCES] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
ON DELETE CASCADE
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
ON DELETE CASCADE
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
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Talks] CHECK CONSTRAINT [FK_TALKS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[Talks]  WITH CHECK ADD  CONSTRAINT [FK_TALKS_ASPNETUSERS1] FOREIGN KEY([IdUser2Talk])
REFERENCES [dbo].[AspNetUsers] ([Id])
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
ALTER TABLE [dbo].[UserSubscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_ASPNETUSERS] FOREIGN KEY([SubscriptionsID])
REFERENCES [dbo].[Subscriptions] ([SubscriptionId])
GO
ALTER TABLE [dbo].[UserSubscriptions] CHECK CONSTRAINT [FK_Subscriptions_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserSubscriptions]  WITH CHECK ADD  CONSTRAINT [FK_UserSubscriptions_ASPNETUSERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserSubscriptions] CHECK CONSTRAINT [FK_UserSubscriptions_ASPNETUSERS]
GO
ALTER TABLE [dbo].[UserTraces]  WITH CHECK ADD  CONSTRAINT [FK_USERTRACES_ASPNETUSERS] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTraces] CHECK CONSTRAINT [FK_USERTRACES_ASPNETUSERS]
GO
USE [master]
GO
ALTER DATABASE [LoveMirroring] SET  READ_WRITE 
GO
