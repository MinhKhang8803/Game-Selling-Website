USE [master]
GO
/****** Object:  Database [Gamestore]    Script Date: 04/06/2023 9:38:26 CH ******/
CREATE DATABASE [Gamestore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gamestore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Gamestore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gamestore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Gamestore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Gamestore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gamestore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gamestore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gamestore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gamestore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gamestore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gamestore] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gamestore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gamestore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gamestore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gamestore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gamestore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gamestore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gamestore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gamestore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gamestore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gamestore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gamestore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gamestore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gamestore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gamestore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gamestore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gamestore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gamestore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gamestore] SET RECOVERY FULL 
GO
ALTER DATABASE [Gamestore] SET  MULTI_USER 
GO
ALTER DATABASE [Gamestore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gamestore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gamestore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gamestore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gamestore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gamestore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Gamestore', N'ON'
GO
ALTER DATABASE [Gamestore] SET QUERY_STORE = ON
GO
ALTER DATABASE [Gamestore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Gamestore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [nvarchar](30) NOT NULL,
	[AUsername] [nvarchar](50) NOT NULL,
	[APassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[UserID] [nvarchar](30) NOT NULL,
	[GameID] [nvarchar](30) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[GameID] [nvarchar](30) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[Price] [int] NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
	[SystemRequirement] [nvarchar](50) NOT NULL,
	[ShopID] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerID] [nvarchar](30) NOT NULL,
	[ShopID] [nvarchar](30) NOT NULL,
	[AdminID] [nvarchar](30) NOT NULL,
	[MUsername] [nvarchar](50) NOT NULL,
	[MPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ShopID] [nvarchar](30) NOT NULL,
	[ShopName] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopGame]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopGame](
	[ShopID] [nvarchar](30) NOT NULL,
	[GameID] [nvarchar](30) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShopGame] PRIMARY KEY CLUSTERED 
(
	[ShopID] ASC,
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/06/2023 9:38:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nvarchar](30) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AccountCreationDate] [date] NOT NULL,
	[ManagerID] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Game] FOREIGN KEY([GameID])
REFERENCES [dbo].[Game] ([GameID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Game]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Admin] FOREIGN KEY([AdminID])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Admin]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ShopID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Shop]
GO
ALTER TABLE [dbo].[ShopGame]  WITH CHECK ADD  CONSTRAINT [FK_ShopGame_Game] FOREIGN KEY([GameID])
REFERENCES [dbo].[Game] ([GameID])
GO
ALTER TABLE [dbo].[ShopGame] CHECK CONSTRAINT [FK_ShopGame_Game]
GO
ALTER TABLE [dbo].[ShopGame]  WITH CHECK ADD  CONSTRAINT [FK_ShopGame_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ShopID])
GO
ALTER TABLE [dbo].[ShopGame] CHECK CONSTRAINT [FK_ShopGame_Shop]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Manager] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Manager] ([ManagerID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Manager]
GO
USE [master]
GO
ALTER DATABASE [Gamestore] SET  READ_WRITE 
GO
