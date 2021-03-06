USE [master]
GO
/****** Object:  Database [LoveMirroring]    Script Date: 08.06.2020 16:52:19 ******/
CREATE DATABASE [LoveMirroring]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LoveMirroring', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LoveMirroring.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LoveMirroring_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LoveMirroring_log.ldf' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LoveMirroring] SET COMPATIBILITY_LEVEL = 120
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
USE [LoveMirroring]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Ads]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Titre] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AdView] [nvarchar](450) NOT NULL,
	[Link] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerRequests]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerRequests](
	[AnswerId] [smallint] IDENTITY(1,1) NOT NULL,
	[AnswerDate] [datetime] NOT NULL,
	[AnswerText] [text] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[RequestId] [smallint] NOT NULL,
 CONSTRAINT [PK_ANSWERREQUESTS] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_ASPNETUSERCLAIMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08.06.2020 16:52:19 ******/
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
	[IsFacebookAccount] [bit] NULL,
 CONSTRAINT [PK_ASPNETUSERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[ContactRequests]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactRequests](
	[RequestId] [smallint] IDENTITY(1,1) NOT NULL,
	[RequestDate] [datetime] NOT NULL,
	[RequestText] [text] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_CONTACTREQUESTS] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Corpulences]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[ExternalServices]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[HairColor]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[HairSizes]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Insults]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insults](
	[InsultID] [int] IDENTITY(1,1) NOT NULL,
	[InsultName] [nvarchar](450) NULL,
 CONSTRAINT [PK_InsultIDID] PRIMARY KEY CLUSTERED 
(
	[InsultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Musics]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musics](
	[MusicId] [smallint] IDENTITY(1,1) NOT NULL,
	[MusicName] [varchar](32) NOT NULL,
	[ArtistName] [varchar](64) NOT NULL,
 CONSTRAINT [PK_MUSICS] PRIMARY KEY CLUSTERED 
(
	[MusicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletters]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Pictures]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PictureTag]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PreferenceCorpulences]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PreferenceHairColors]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PreferenceHairSizes]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PreferenceMusics]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PreferenceReligions]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Preferences]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[PreferenceStyles]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Profils]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Religions]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Sexes]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Sexualities]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Styles]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[Talks]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserExternalServices]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserLikes]    Script Date: 08.06.2020 16:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLikes](
	[Id] [nvarchar](450) NOT NULL,
	[ID_1] [nvarchar](450) NOT NULL,
	[Ignored] [bit] NULL,
 CONSTRAINT [PK_USERLIKES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMusics]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserNewsletters]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserProfils]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserStyles]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserSubscriptions]    Script Date: 08.06.2020 16:52:19 ******/
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
/****** Object:  Table [dbo].[UserTraces]    Script Date: 08.06.2020 16:52:19 ******/
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
SET IDENTITY_INSERT [dbo].[Ads] ON 

INSERT [dbo].[Ads] ([Id], [Titre], [Description], [AdView], [Link]) VALUES (8, N'jkldsjkldfsjkl', N'jkldsfjkldsf', N'Ads/_ad_2020-05-28_16-17-45lifecycle.png', N'#')
INSERT [dbo].[Ads] ([Id], [Titre], [Description], [AdView], [Link]) VALUES (9, N'Test', N'Test', N'Ads/_ad_2020-05-29_14-57-41_pub1.jpg', N'#')
INSERT [dbo].[Ads] ([Id], [Titre], [Description], [AdView], [Link]) VALUES (10, N'Test1', N'Test1', N'Ads/_ad_2020-05-29_15-00-02_pub2.jpg', N'#')
SET IDENTITY_INSERT [dbo].[Ads] OFF
SET IDENTITY_INSERT [dbo].[AnswerRequests] ON 

INSERT [dbo].[AnswerRequests] ([AnswerId], [AnswerDate], [AnswerText], [Id], [RequestId]) VALUES (1, CAST(N'2020-06-04T16:31:16.623' AS DateTime), N'test reponse', N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 1)
INSERT [dbo].[AnswerRequests] ([AnswerId], [AnswerDate], [AnswerText], [Id], [RequestId]) VALUES (2, CAST(N'2020-06-04T16:31:16.623' AS DateTime), N'test reponse2', N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 1)
SET IDENTITY_INSERT [dbo].[AnswerRequests] OFF
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
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'Administrateur', NULL, N'Administrateur', N'ADMINISTRATEUR')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'Utilisateur', NULL, N'Utilisateur', N'UTILISATEUR')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'452baaab-f016-4fa0-982b-0b11b2107c10', N'name', N'Sébastien Berger')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'452baaab-f016-4fa0-982b-0b11b2107c10', N'email', N'zibeug@gmail.com')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId], [ProviderDisplayName]) VALUES (N'Facebook', N'3000327263387339', N'452baaab-f016-4fa0-982b-0b11b2107c10', N'Facebook')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3bd03e15-28cb-4887-a291-728dca919c1a', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'452baaab-f016-4fa0-982b-0b11b2107c10', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8bb0af69-13f2-4510-906f-b3df199283ec', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ba31d3ab-19a2-4e91-87eb-baebc7f1d2f3', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c80346df-6132-4457-8412-0253c9b7a60d', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd416a9f8-83c8-4c98-9736-6d1461b5024c', N'Utilisateur')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', N'Administrateur')
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'3bd03e15-28cb-4887-a291-728dca919c1a', 1, 1, 1, 1, NULL, 1, 1, 0, N'e4b3e83b-e04e-4ed6-84f2-279f9f68a4ee', N'thermituoadf@gmailc.om', 1, 1, NULL, N'THERMITUOADF@GMAILC.OM', N'BOBO', N'AQAAAAEAACcQAAAAELQ/S0FbP5BprxJSGbCFWHLboX6PiFlxWl9W+66DIQMXDYI3a5ZJ9Nlj53vjSHmLxg==', N'+41788235454', 1, N'32IQOKIBMWRSN2OYYFAOSW3MJEYPDZUB', 0, N'Bobo', CAST(N'1950-06-05T00:00:00.0000000' AS DateTime2), N'Tim', N'Allemann', 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'452baaab-f016-4fa0-982b-0b11b2107c10', 1, 2, 1, 1, NULL, 1, 1, 0, N'6868ea28-ceec-49d4-bda6-c2a444bd5567', N'zibeug@gmail.com', 1, 1, NULL, N'ZIBEUG@GMAIL.COM', N'FBSBASTIENBERGER', NULL, NULL, 1, N'ERNIAUOKAERALM2N4UAXO5MUEYZCUQRV', 0, N'fbsbastienberger', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'8bb0af69-13f2-4510-906f-b3df199283ec', 1, 1, 1, 1, NULL, 1, 1, 0, N'deb7ecdb-84f7-4648-bf81-40eb558fe6d3', N'dfkdsjfs@fldjs.com', 1, 1, NULL, N'DFKDSJFS@FLDJS.COM', N'SEB4', N'AQAAAAEAACcQAAAAECIfsuJDCaWU/d31WBLFUOhuu/WFbORCQ0FS2WoL5Nke4xIVPeQqpyW1A3v/lCuvPQ==', N'+41793084965', 1, N'XAHC7JNVMU4W66IW7WFTG3JUQQTEIYBY', 0, N'seb4', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', 1, 1, 1, 1, NULL, 1, 1, 0, N'8d254e77-6bde-4a95-9ef5-10e2165c65b9', N'sebastien.berger@eduvaud.ch', 1, 1, NULL, N'SEBASTIEN.BERGER@EDUVAUD.CH', N'SEB1', N'AQAAAAEAACcQAAAAEDsvPEdTkSXGpRrGpS8jvIjrl1cStT2YuKJifbqid6LZCOcQFxmPclAF6oV00D17/w==', N'+41793084965', 1, N'273L5ETTBSRZUHEGY5TOJVIEVQPWOB3J', 0, N'seb1', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'ba31d3ab-19a2-4e91-87eb-baebc7f1d2f3', 2, 4, 1, 2, NULL, 1, 3, 0, N'10eeacc1-2800-47e7-ac6e-2e302d4a8876', N'margot@lol.ch', 1, 1, NULL, N'MARGOT@LOL.CH', N'MARGOT', N'AQAAAAEAACcQAAAAEFotDT1UQSBYCVyJbA02pYnUJPr7FGPUPuWfg8sFVF8nqpqxJypIAc7bd22QEIPEfA==', N'+41770000000', 1, N'7VDZKQO5UOEPJEU5ESEULCSJZTRYMRT4', 0, N'margot', CAST(N'1995-05-05T00:00:00.0000000' AS DateTime2), N'Margot', N'Du Puits', 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'c80346df-6132-4457-8412-0253c9b7a60d', 5, 1, 1, 1, NULL, 1, 3, 0, N'c9fb9cc2-2d43-4883-9954-c69c6d5ae397', N'fred@lol.ch', 1, 1, NULL, N'FRED@LOL.CH', N'FRED', N'AQAAAAEAACcQAAAAEMX4P9wVXTNSk080iWIJSVq13BbzP3f0RCYM2hels6BGiEkQCMlCPZTAdKFr9Aajkw==', N'+41770000000', 1, N'OQ3AW2ZL3HJTSAXLTGRII5PU532VXVUN', 0, N'fred', CAST(N'1994-04-04T00:00:00.0000000' AS DateTime2), N'Fred', N'Le Fou', 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'd416a9f8-83c8-4c98-9736-6d1461b5024c', 1, 1, 1, 1, NULL, 1, 1, 0, N'89219fa9-6e75-49e5-9cd5-7dfbb7e1a4e8', N'berger.sebastien@bluewin.ch', 1, 1, NULL, N'BERGER.SEBASTIEN@BLUEWIN.CH', N'SEB2', N'AQAAAAEAACcQAAAAEJoStDTxEORTtN1vm4r6g5et2zqsm0YyO/AvYsaLakjs8ArBfYIErAAb6UZUJ+cO4g==', N'+41793084965', 1, N'BM6DSK55XDP5UJUR6ZEBCHX3UPWKT2NQ', 0, N'seb2', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [ReligionId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted], [AccountCompleted], [IsFacebookAccount]) VALUES (N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 1, 1, 1, 1, NULL, 2, 1, 0, N'7ed50a1b-9a29-4adc-927d-c552350a22fa', N'sfdsf@gmail.com', 1, 1, NULL, N'SFDSF@GMAIL.COM', N'SEB', N'AQAAAAEAACcQAAAAEMeuxYMsNCYqIfKNQVAeZ/n6Ld4OOzdUOoHJjlWuDUOzH98pYZY2eil8Z2bt1rlYog==', N'+41793084965', 1, N'3RQLBACJUBOPHFL3LLIEADWL4EZRKRQ2', 0, N'seb', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0, 1, 0)
SET IDENTITY_INSERT [dbo].[ContactRequests] ON 

INSERT [dbo].[ContactRequests] ([RequestId], [RequestDate], [RequestText], [Id]) VALUES (1, CAST(N'2020-06-04T16:31:16.620' AS DateTime), N'Test request', N'452baaab-f016-4fa0-982b-0b11b2107c10')
SET IDENTITY_INSERT [dbo].[ContactRequests] OFF
SET IDENTITY_INSERT [dbo].[Corpulences] ON 

INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (1, N'Enrobé')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (2, N'Maigre')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (3, N'Sportif')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (4, N'Normal')
SET IDENTITY_INSERT [dbo].[Corpulences] OFF
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
SET IDENTITY_INSERT [dbo].[HairSizes] ON 

INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (1, N'Court')
INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (2, N'Long')
INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (3, N'Volumineux')
SET IDENTITY_INSERT [dbo].[HairSizes] OFF
SET IDENTITY_INSERT [dbo].[Insults] ON 

INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (3, N'abruti')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (4, N'aller chier dans sa caisse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (5, N'aller niquer sa mère')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (6, N'aller se faire enculer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (7, N'aller se faire endauffer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (8, N'aller se faire foutre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (9, N'aller se faire mettre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (10, N'andouille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (11, N'appareilleuse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (12, N'assimilé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (13, N'assimilée')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (14, N'astèque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (15, N'avorton')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (16, N'bachi-bouzouk')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (17, N'baleine')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (18, N'bande d’abrutis')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (19, N'baraki')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (20, N'bâtard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (21, N'baudet')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (22, N'beauf')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (23, N'bellicole')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (24, N'bête')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (25, N'bête à pleurer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (26, N'bête comme ses pieds')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (27, N'bête comme un chou')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (28, N'bête comme un cochon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (29, N'biatch')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (30, N'bic')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (31, N'bicot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (32, N'bicotte')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (33, N'bite')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (34, N'bitembois')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (35, N'Bitembois')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (36, N'bordille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (37, N'boucaque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (38, N'boudin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (39, N'bouffi')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (40, N'bouffon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (41, N'bougnoul')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (42, N'bougnoule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (43, N'Bougnoulie')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (44, N'bougnoulisation')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (45, N'bougnouliser')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (46, N'bougre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (47, N'boukak')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (48, N'boulet')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (49, N'bounioul')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (50, N'bounioule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (51, N'bourdille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (52, N'bourricot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (53, N'branleur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (54, N'bridé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (55, N'bridée')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (56, N'brigand')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (57, N'brise-burnes')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (58, N'bulot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (59, N'cacou')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (60, N'cafre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (61, N'cageot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (62, N'caldoche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (63, N'casse-bonbon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (64, N'casse-couille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (65, N'casse-couilles')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (66, N'cave')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (67, N'chagasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (68, N'chaoui')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (69, N'charlot de vogue')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (70, N'charogne')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (71, N'chauffard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (72, N'chbeb')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (73, N'cheveux bleus')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (74, N'chien de chrétien')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (75, N'chiennasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (76, N'chienne')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (77, N'chier')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (78, N'chinetoc')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (79, N'chinetoque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (80, N'Chinetoque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (81, N'chintok')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (82, N'chleuh')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (83, N'chnoque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (84, N'citrouille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (85, N'coche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (86, N'colon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (87, N'complotiste')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (88, N'con')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (89, N'con comme la lune')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (90, N'con comme ses pieds')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (91, N'con comme un balai')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (92, N'con comme un manche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (93, N'con comme une chaise')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (94, N'con comme une valise')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (95, N'con comme une valise à poignée intérieure')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (96, N'con comme une valise sans poignée')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (97, N'conasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (98, N'conchier')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (99, N'connard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (100, N'connarde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (101, N'connasse')
GO
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (102, N'conspirationniste')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (103, N'couille molle')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (104, N'counifle')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (105, N'courtaud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (106, N'CPF')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (107, N'crétin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (108, N'crevure')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (109, N'cricri')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (110, N'crotté')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (111, N'crouillat')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (112, N'crouille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (113, N'croûton')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (114, N'dago')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (115, N'débile')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (116, N'débougnouliser')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (117, N'doryphore')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (118, N'doxosophe')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (119, N'doxosophie')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (120, N'drouille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (121, N'du schnoc')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (122, N'ducon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (123, N'duconnot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (124, N'dugenoux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (125, N'dugland')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (126, N'duschnock')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (127, N'emmanché')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (128, N'emmerder')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (129, N'emmerdeur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (130, N'emmerdeuse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (131, N'empafé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (132, N'empapaouté')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (133, N'enculé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (134, N'enculé de ta race')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (135, N'enculer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (136, N'enfant de garce')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (137, N'enfant de putain')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (138, N'enfant de pute')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (139, N'enfant de salaud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (140, N'enflure')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (141, N'enfoiré')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (142, N'envaselineur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (143, N'envoyer faire foutre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (144, N'épais')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (145, N'espèce de')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (146, N'espingoin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (147, N'espingouin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (148, N'étron')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (149, N'face de chien')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (150, N'face de craie')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (151, N'face de pet')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (152, N'face de rat')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (153, N'fachiste')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (154, N'FDP')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (155, N'fell')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (156, N'fermer sa gueule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (157, N'fils de bâtard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (158, N'fils de chien')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (159, N'fils de chienne')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (160, N'fils de garce')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (161, N'fils de pute')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (162, N'fils de ta race')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (163, N'fiotte')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (164, N'folle')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (165, N'fouteur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (166, N'fripouille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (167, N'frisé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (168, N'fritz')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (169, N'Fritz')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (170, N'fumelard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (171, N'fumier')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (172, N'garage à bite')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (173, N'garce')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (174, N'gaupe')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (175, N'GDM')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (176, N'gestapette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (177, N'Gestapette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (178, N'gland')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (179, N'glandeur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (180, N'glandeuse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (181, N'glandouillou')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (182, N'glandu')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (183, N'gnoul')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (184, N'gnoule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (185, N'Godon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (186, N'gogol')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (187, N'gogolito')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (188, N'goï')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (189, N'gook')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (190, N'gouer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (191, N'gouilland')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (192, N'gouine')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (193, N'gourdasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (194, N'gourde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (195, N'gourgandine')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (196, N'grognasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (197, N'gueniche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (198, N'guide de merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (199, N'guindoule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (200, N'gwer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (201, N'habitant')
GO
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (202, N'halouf')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (203, N'imbécile')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (204, N'incapable')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (205, N'islamo-gauchisme')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (206, N'jean-foutre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (207, N'jean-fesse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (208, N'jeannette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (209, N'journalope')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (210, N'juivaillon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (211, N'kahlouche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (212, N'karlouche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (213, N'kawish')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (214, N'khel')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (215, N'Khmer rouge')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (216, N'Khmer vert')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (217, N'kikoo')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (218, N'kikou')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (219, N'Kraut')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (220, N'la fermer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (221, N'lâche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (222, N'lâcheux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (223, N'lavette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (224, N'loche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (225, N'lopette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (226, N'magot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (227, N'makoumé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (228, N'mal blanchi')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (229, N'manche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (230, N'mange-merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (231, N'mangeux de marde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (232, N'marchandot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (233, N'margouilliste')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (234, N'marsouin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (235, N'mauviette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (236, N'melon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (237, N'mercon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (238, N'merdaille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (239, N'merdaillon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (240, N'merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (241, N'merdeux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (242, N'merdouillard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (243, N'michto')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (244, N'minable')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (245, N'minus')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (246, N'misérable')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (247, N'moinaille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (248, N'moins-que-rien')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (249, N'mollusque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (250, N'monacaille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (251, N'mongol')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (252, N'mongol à batteries')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (253, N'moricaud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (254, N'mort aux vaches')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (255, N'morue')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (256, N'moule à gaufres')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (257, N'moule à merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (258, N'mouloud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (259, N'muzz')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (260, N'naze')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (261, N'nazi')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (262, N'nèg')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (263, N'négraille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (264, N'nègre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (265, N'négrillon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (266, N'négrillonne')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (267, N'négro')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (268, N'nez de bœuf')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (269, N'niac')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (270, N'niafou')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (271, N'niaiseux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (272, N'niakoué')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (273, N'nique sa mère')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (274, N'nique ta mère')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (275, N'niquer')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (276, N'niquer sa mère')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (277, N'niquer sa reum')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (278, N'niquez votre mère')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (279, N'nodocéphale')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (280, N'nœud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (281, N'noob')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (282, N'nord-phocéen')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (283, N'NTM')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (284, N'nul')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (285, N'nulle')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (286, N'orchidoclaste')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (287, N'ordure')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (288, N'ortho')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (289, N'pakos')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (290, N'panoufle')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (291, N'patarin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (292, N'PD')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (293, N'peau')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (294, N'peau de couille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (295, N'peau de fesse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (296, N'peau de vache')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (297, N'pecque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (298, N'pédale')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (299, N'pédé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (300, N'pédoque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (301, N'pelle à merde')
GO
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (302, N'péquenaud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (303, N'personnage de comédie')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (304, N'petite bite')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (305, N'petite merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (306, N'pignouf')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (307, N'pignoufe')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (308, N'pissou')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (309, N'pithécanthrope')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (310, N'pleutre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (311, N'plouc')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (312, N'pochard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (313, N'pompe à vélo')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (314, N'porc')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (315, N'porcas')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (316, N'porcasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (317, N'pouf')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (318, N'pouffiasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (319, N'poufiasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (320, N'poulet')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (321, N'poundé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (322, N'pourriture')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (323, N'punaise')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (324, N'putain')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (325, N'putain de ta race')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (326, N'pute')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (327, N'pute borgne')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (328, N'putois')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (329, N'raclure')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (330, N'raclure de bidet')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (331, N'radoteur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (332, N'rat')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (333, N'raté')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (334, N'raton')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (335, N'résidu de capote')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (336, N'retourne aux asperges')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (337, N'ripopée')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (338, N'robespierrot')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (339, N'roi des cons')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (340, N'rosbif')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (341, N'roulure')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (342, N'sac à foutre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (343, N'sac à merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (344, N'sac à papier')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (345, N'sagouin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (346, N'sagouine')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (347, N'salaud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (348, N'sale')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (349, N'salop')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (350, N'salope')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (351, N'sans-couilles')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (352, N'satrouille')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (353, N'sauvage')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (354, N'schbeb')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (355, N'schlague')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (356, N'schleu')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (357, N'Schleu')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (358, N'Schleue')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (359, N'schnock')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (360, N'schnoque')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (361, N'sent-la-pisse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (362, N'sidi')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (363, N'social-traître')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (364, N'sorcière')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (365, N'sottiseux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (366, N'sous-merde')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (367, N'stéarique')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (368, N'ta bouche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (369, N'ta gueule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (370, N'ta mère')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (371, N'ta mère la pute')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (372, N'ta race')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (373, N'ta yeule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (374, N'tache')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (375, N'tafiole')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (376, N'tantouserie')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (377, N'tantouze')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (378, N'tapette')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (379, N'tapettitude')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (380, N'tarlouze')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (381, N'tata')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (382, N'tchoutche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (383, N'tebé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (384, N'tête carrée')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (385, N'tête de boche')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (386, N'tête de cochon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (387, N'tête de gland')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (388, N'tête de linotte')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (389, N'tête de mule')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (390, N'tête de nœud')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (391, N'tête de veau')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (392, N'téteux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (393, N'teubé')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (394, N'Thénardier')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (395, N'thon')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (396, N'tocard')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (397, N'traînée')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (398, N'travail d’Arabe')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (399, N'triple buse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (400, N'trou de cul')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (401, N'trou du cul')
GO
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (402, N'trouduc')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (403, N'truiasse')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (404, N'truie')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (405, N'va te faire foutre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (406, N'va te faire une soupe d’esques')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (407, N'vaurien')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (408, N'vaurienne')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (409, N'vendu')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (410, N'vert-de-gris')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (411, N'vide-couilles')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (412, N'viédase')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (413, N'vier')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (414, N'vieux')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (415, N'vieux blanc')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (416, N'vipère lubrique')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (417, N'weeaboo')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (418, N'xéropineur')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (419, N'youd')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (420, N'youp')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (421, N'youpin')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (422, N'youpine')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (423, N'youpinisation')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (424, N'youpiniser')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (425, N'youtre')
INSERT [dbo].[Insults] ([InsultID], [InsultName]) VALUES (426, N'zguègue')
SET IDENTITY_INSERT [dbo].[Insults] OFF
INSERT [dbo].[PreferenceCorpulences] ([PreferenceId], [CorpulenceId]) VALUES (1, 1)
INSERT [dbo].[PreferenceHairColors] ([PreferenceId], [HairColorId]) VALUES (1, 1)
INSERT [dbo].[PreferenceHairSizes] ([PreferenceId], [HairSizeId]) VALUES (1, 1)
INSERT [dbo].[PreferenceReligions] ([PreferenceId], [ReligionId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Preferences] ON 

INSERT [dbo].[Preferences] ([PreferenceId], [Id], [SexualityId], [AgeMin], [AgeMax]) VALUES (1, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 2, 18, 30)
SET IDENTITY_INSERT [dbo].[Preferences] OFF
INSERT [dbo].[PreferenceStyles] ([PreferenceId], [StyleId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Profils] ON 

INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (1, N'Empathique', N'Empathique')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (3, N'Travaillomane', N'Travaillomane')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (4, N'Persévérant', N'Persévérant')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (5, N'Promoteur', N'Promoteur')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (6, N'Rêveur', N'Rêveur')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (7, N'Rebelle', N'Rebelle')
SET IDENTITY_INSERT [dbo].[Profils] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (1, N'Quels sont vos points fort ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (2, N'Quel est votre activité professionnelle ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (3, N'Quel est sont vos points négatifs ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (4, N'Vous aimez plutôt ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (5, N'Quels sont vos besoins psychologique ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (6, N'En général vous ?')
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Religions] ON 

INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (1, N'Musulman')
INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (2, N'Chrétien')
INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (3, N'Athé')
SET IDENTITY_INSERT [dbo].[Religions] OFF
SET IDENTITY_INSERT [dbo].[Sexes] ON 

INSERT [dbo].[Sexes] ([SexeId], [SexeName]) VALUES (1, N'Homme')
INSERT [dbo].[Sexes] ([SexeId], [SexeName]) VALUES (2, N'Femme')
SET IDENTITY_INSERT [dbo].[Sexes] OFF
SET IDENTITY_INSERT [dbo].[Sexualities] ON 

INSERT [dbo].[Sexualities] ([SexualityId], [SexualityName]) VALUES (1, N'Hétérosexuel')
INSERT [dbo].[Sexualities] ([SexualityId], [SexualityName]) VALUES (2, N'Homosexuel')
SET IDENTITY_INSERT [dbo].[Sexualities] OFF
SET IDENTITY_INSERT [dbo].[Styles] ON 

INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (1, N'Urban')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (2, N'Punk')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (3, N'HipHop')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (4, N'Classique')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (5, N'Fashion')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (6, N'Classe')
INSERT [dbo].[Styles] ([StyleId], [StyleName]) VALUES (7, N'Négligé')
SET IDENTITY_INSERT [dbo].[Styles] OFF
SET IDENTITY_INSERT [dbo].[Subscriptions] ON 

INSERT [dbo].[Subscriptions] ([SubscriptionId], [SubscriptionName], [SubscriptionPrice], [SubscriptionDate]) VALUES (1, N'1 Mois', 10.0000, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Subscriptions] ([SubscriptionId], [SubscriptionName], [SubscriptionPrice], [SubscriptionDate]) VALUES (2, N'1 Année', 60.0000, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Subscriptions] OFF
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'3bd03e15-28cb-4887-a291-728dca919c1a', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'452baaab-f016-4fa0-982b-0b11b2107c10', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'8bb0af69-13f2-4510-906f-b3df199283ec', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'b30b3d6a-f2f7-4742-a51b-3fa001fcbb9e', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'ba31d3ab-19a2-4e91-87eb-baebc7f1d2f3', 5)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'c80346df-6132-4457-8412-0253c9b7a60d', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'd416a9f8-83c8-4c98-9736-6d1461b5024c', 1)
INSERT [dbo].[UserStyles] ([Id], [StyleId]) VALUES (N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', 1)
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
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (81, NULL, CAST(N'2020-05-21T12:18:50.783' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (82, NULL, CAST(N'2020-05-21T12:19:22.313' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (83, NULL, CAST(N'2020-05-21T12:20:21.683' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (84, NULL, CAST(N'2020-05-21T12:20:52.080' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (85, NULL, CAST(N'2020-05-21T12:21:50.333' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (86, NULL, CAST(N'2020-05-21T12:22:57.763' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (87, NULL, CAST(N'2020-05-21T12:24:03.217' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (88, N'8bb0af69-13f2-4510-906f-b3df199283ec', CAST(N'2020-05-21T12:24:40.207' AS DateTime), N'SignUp : User created a new account', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (89, NULL, CAST(N'2020-05-21T12:36:04.600' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (90, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-21T12:50:36.290' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (91, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-23T12:35:14.910' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (92, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-23T14:37:23.223' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (93, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-23T14:59:32.683' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (94, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-23T15:04:00.013' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (95, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-26T18:04:35.653' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (96, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-28T08:00:50.337' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (97, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-28T09:00:53.690' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (98, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-28T13:22:12.467' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (99, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-28T14:51:46.847' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (100, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-28T15:59:24.637' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (101, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-05-29T14:55:02.310' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (102, NULL, CAST(N'2020-06-04T16:41:47.837' AS DateTime), N'SignUp : A User is trying to sign up', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (103, NULL, CAST(N'2020-06-04T16:42:14.593' AS DateTime), N'SignUp : A User is trying to sign up', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (104, N'3bd03e15-28cb-4887-a291-728dca919c1a', CAST(N'2020-06-04T16:42:35.407' AS DateTime), N'SignUp : User created a new account', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (105, N'3bd03e15-28cb-4887-a291-728dca919c1a', CAST(N'2020-06-04T16:42:57.647' AS DateTime), N'Login : A User signs in ', N'127.0.0.1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (106, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-06-08T15:58:52.360' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (107, NULL, CAST(N'2020-06-08T15:59:42.333' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (108, NULL, CAST(N'2020-06-08T16:01:18.487' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (109, N'c80346df-6132-4457-8412-0253c9b7a60d', CAST(N'2020-06-08T16:01:40.997' AS DateTime), N'SignUp : User created a new account', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (110, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-06-08T16:03:27.763' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (111, N'c80346df-6132-4457-8412-0253c9b7a60d', CAST(N'2020-06-08T16:04:34.510' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (112, NULL, CAST(N'2020-06-08T16:40:25.950' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (113, N'ba31d3ab-19a2-4e91-87eb-baebc7f1d2f3', CAST(N'2020-06-08T16:41:40.337' AS DateTime), N'SignUp : User created a new account', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (114, N'e62eaa53-f67b-43aa-b27d-8a9d2662624e', CAST(N'2020-06-08T16:48:04.183' AS DateTime), N'Login : A User signs in ', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (115, N'ba31d3ab-19a2-4e91-87eb-baebc7f1d2f3', CAST(N'2020-06-08T16:49:26.697' AS DateTime), N'Login : A User signs in ', N'::1')
SET IDENTITY_INSERT [dbo].[UserTraces] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [AC_Email]    Script Date: 08.06.2020 16:52:19 ******/
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [AC_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnswerRequests]  WITH CHECK ADD  CONSTRAINT [FK_ANSWERREQUESTS_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AnswerRequests] CHECK CONSTRAINT [FK_ANSWERREQUESTS_ASPNETUSERS]
GO
ALTER TABLE [dbo].[AnswerRequests]  WITH CHECK ADD  CONSTRAINT [FK_ANSWERREQUESTS_CONTACTREQUESTS] FOREIGN KEY([RequestId])
REFERENCES [dbo].[ContactRequests] ([RequestId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnswerRequests] CHECK CONSTRAINT [FK_ANSWERREQUESTS_CONTACTREQUESTS]
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
ALTER TABLE [dbo].[ContactRequests]  WITH CHECK ADD  CONSTRAINT [FK_CONTACTREQUESTS_ASPNETUSERS] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContactRequests] CHECK CONSTRAINT [FK_CONTACTREQUESTS_ASPNETUSERS]
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
