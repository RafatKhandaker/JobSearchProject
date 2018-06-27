CREATE TABLE dbo.Resume_Work_History
(
	Id UNIQUEIDENTIFIER NOT NULL,
	CompanyName VARCHAR(100) NOT NULL,
	JobTitleName VARCHAR(100) NOT NULL,
	StartDate DateTime NULL,
	EndDate DateTime NULL,
	Description VARCHAR(MAX) NULL,
	PRIMARY KEY CLUSTERED(Id, CompanyName, JobTitleName)
);