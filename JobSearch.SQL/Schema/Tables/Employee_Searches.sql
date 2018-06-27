/****** Object:  Table [dbo].[Employee_Searches]    Script Date: 6/27/2018 2:28:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee_Searches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[SearchDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee_Searches]  WITH CHECK ADD FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO

ALTER TABLE [dbo].[Employee_Searches]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Employee_Login] ([Id])
GO

