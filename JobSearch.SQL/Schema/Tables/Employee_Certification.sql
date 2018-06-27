CREATE TABLE dbo.Employee_Certification
(
	Id UNIQUEIDENTIFIER NOT NULL,
	Certification VARCHAR(100) NOT NULL,
	StartDate DateTime NOT NULL,
	PRIMARY KEY CLUSTERED (Id, Certification)
)