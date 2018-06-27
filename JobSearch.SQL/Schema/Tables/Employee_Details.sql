/****** Object:  Table [dbo].[Employee_Details]    Script Date: 6/27/2018 2:23:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [int] NOT NULL,
	[Firstname] [varchar](25) NULL,
	[Lastname] [varchar](25) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[JobTitleId] [int] NOT NULL,
	[SignUpDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee_Details]  WITH CHECK ADD FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[Job_Type] ([Id])
GO

ALTER TABLE [dbo].[Employee_Details]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Employee_Login] ([Id])
GO


