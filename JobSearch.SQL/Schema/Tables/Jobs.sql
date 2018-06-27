/****** Object:  Table [dbo].[Jobs]    Script Date: 6/27/2018 2:45:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [varchar](50) NOT NULL,
	[JobTypeId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[DatePosted] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO

ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD FOREIGN KEY([JobTypeId])
REFERENCES [dbo].[Job_Type] ([Id])
GO

