/****** Object:  Table [dbo].[Employee_Roles]    Script Date: 6/27/2018 2:25:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee_Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [int] NOT NULL,
	[Rolename] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee_Roles]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Employee_Login] ([Id])
GO

