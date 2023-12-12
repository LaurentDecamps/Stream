USE [Streaming]
GO

/****** Object:  Table [dbo].[User]    Script Date: 12/12/2023 11:47:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[id] [uniqueidentifier] NOT NULL,
	[email] [nchar](320) NOT NULL,
	[password] [nchar](64) NOT NULL
);

CREATE TABLE [dbo].[UserFavoriteMovie](
	[idUser] [uniqueidentifier] NOT NULL,
	[idFavoriteMovie] [uniqueidentifier] NOT NULL
);

ALTER TABLE [dbo].[UserFavoriteMovie]  WITH NOCHECK ADD  CONSTRAINT [FK_UserFavoriteMovie_User_Movie] FOREIGN KEY([idFavoriteMovie])
REFERENCES [dbo].[Section] ([id])
ON DELETE CASCADE