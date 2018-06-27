/****** Object:  Table [dbo].[Jobs_Applied]    Script Date: 6/27/2018 2:45:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Jobs_Applied](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[DateApplied] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jobs_Applied]  WITH CHECK ADD FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Employee_Login] ([Id])
GO

ALTER TABLE [dbo].[Jobs_Applied]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO

ALTER TABLE [dbo].[Jobs_Applied]  WITH CHECK ADD FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO

