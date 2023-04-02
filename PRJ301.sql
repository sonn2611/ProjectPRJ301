

ALTER DATABASE [Assignment_PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment_PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment_PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment_PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment_PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment_PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment_PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment_PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment_PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment_PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment_PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assignment_PRJ301] SET QUERY_STORE = OFF
GO
USE [Assignment_PRJ301]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 27/02/2023 9:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usename] [nvarchar](50) NULL,
	[password] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([id], [usename], [password], [email], [role]) VALUES (1, N'admin', N'admin', N'admin@gmail.com', 1)
INSERT [dbo].[Accounts] ([id], [usename], [password], [email], [role]) VALUES (2, N'admin1', N'admin1', N'admin1@gmail.com', 1)
INSERT [dbo].[Accounts] ([id], [usename], [password], [email], [role]) VALUES (3, N'son', N'son', N'son@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO

select * from Accounts
Drop table Diary
CREATE TABLE [dbo].[Diary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[crday] [datetime] NOT NULL,
	[uday] [datetime] NOT NULL,
	[aid] [int] NULL,
	[fid] [int] NULL,
 CONSTRAINT [PK_Diary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
select * from Diary


SET IDENTITY_INSERT [dbo].[Diary] ON 

INSERT [dbo].[Diary] ([id], [Title], [Note], [crday], [uday], [aid]) VALUES (1, N'Note1',N' hello diary', CAST(N'2023-02-11T13:23:44.000' AS DateTime), CAST(N'2023-02-11T13:23:44.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Diary] OFF
GO

INSERT INTO [dbo].[Diary]([Title], [Note], [crday], [uday], [aid]) Values ('?','?','?','?','?')