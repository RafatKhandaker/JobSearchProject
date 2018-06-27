/****** Object:  Table [dbo].[Job_Details]    Script Date: 6/27/2018 2:29:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Job_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NULL,
	[JobDescription] [varchar](max) NULL,
	[SalaryMin] [money] NULL,
	[SalaryMax] [money] NULL,
	[SalaryType] [int] NOT NULL,
	[MinWorkAuthorization] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Job_Details]  WITH CHECK ADD FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO

ALTER TABLE [dbo].[Job_Details]  WITH CHECK ADD FOREIGN KEY([MinWorkAuthorization])
REFERENCES [dbo].[Work_Authorization_Type] ([Id])
GO

ALTER TABLE [dbo].[Job_Details]  WITH CHECK ADD FOREIGN KEY([SalaryType])
REFERENCES [dbo].[Salary_Type] ([Id])
GO

