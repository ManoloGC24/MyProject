USE [master]
GO

/****** Object:  Database [BDClientes]    Script Date: 19/12/2024 16:07:47 ******/
CREATE DATABASE [BDClientes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDClientes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDClientes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDClientes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDClientes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [BDClientes] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDClientes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BDClientes] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BDClientes] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BDClientes] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BDClientes] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BDClientes] SET ARITHABORT OFF 
GO

ALTER DATABASE [BDClientes] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BDClientes] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BDClientes] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BDClientes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BDClientes] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BDClientes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BDClientes] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BDClientes] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BDClientes] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BDClientes] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BDClientes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BDClientes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BDClientes] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BDClientes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BDClientes] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BDClientes] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BDClientes] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BDClientes] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [BDClientes] SET  MULTI_USER 
GO

ALTER DATABASE [BDClientes] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BDClientes] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BDClientes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BDClientes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BDClientes] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BDClientes] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BDClientes] SET  READ_WRITE 
GO
