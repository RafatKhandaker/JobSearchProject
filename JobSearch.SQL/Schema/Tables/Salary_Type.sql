﻿/****** Object:  Table [dbo].[Salary_Type]    Script Date: 6/27/2018 2:49:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Salary_Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PayType] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

