
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/01/2018 23:18:38
-- Generated from EDMX file: C:\Users\SysAdmin\GitProjects\JobSearch\JobSearch.Data\JobSeachDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [JobSearchDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Employee___EmpId__05D8E0BE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Education] DROP CONSTRAINT [FK__Employee___EmpId__05D8E0BE];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___EmpId__08B54D69]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Associations_Clubs] DROP CONSTRAINT [FK__Employee___EmpId__08B54D69];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___EmpId__2180FB33]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Resumes] DROP CONSTRAINT [FK__Employee___EmpId__2180FB33];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___JobId__74AE54BC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Searches] DROP CONSTRAINT [FK__Employee___JobId__74AE54BC];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___JobTi__5165187F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Details] DROP CONSTRAINT [FK__Employee___JobTi__5165187F];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___Login__4BAC3F29]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Roles] DROP CONSTRAINT [FK__Employee___Login__4BAC3F29];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___Login__5070F446]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Details] DROP CONSTRAINT [FK__Employee___Login__5070F446];
GO
IF OBJECT_ID(N'[dbo].[FK__Employee___UserI__75A278F5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Searches] DROP CONSTRAINT [FK__Employee___UserI__75A278F5];
GO
IF OBJECT_ID(N'[dbo].[FK__Job_Detai__JobId__7C4F7684]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Job_Details] DROP CONSTRAINT [FK__Job_Detai__JobId__7C4F7684];
GO
IF OBJECT_ID(N'[dbo].[FK__Job_Detai__MinWo__7E37BEF6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Job_Details] DROP CONSTRAINT [FK__Job_Detai__MinWo__7E37BEF6];
GO
IF OBJECT_ID(N'[dbo].[FK__Job_Detai__Salar__7D439ABD]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Job_Details] DROP CONSTRAINT [FK__Job_Detai__Salar__7D439ABD];
GO
IF OBJECT_ID(N'[dbo].[FK__Job_Revie__Compa__68487DD7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Job_Reviews] DROP CONSTRAINT [FK__Job_Revie__Compa__68487DD7];
GO
IF OBJECT_ID(N'[dbo].[FK__Job_Revie__Emplo__6754599E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Job_Reviews] DROP CONSTRAINT [FK__Job_Revie__Emplo__6754599E];
GO
IF OBJECT_ID(N'[dbo].[FK__Job_Revie__JobId__693CA210]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Job_Reviews] DROP CONSTRAINT [FK__Job_Revie__JobId__693CA210];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs__CompanyId__571DF1D5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs] DROP CONSTRAINT [FK__Jobs__CompanyId__571DF1D5];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs_Appl__Appli__5DCAEF64]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs_Applied] DROP CONSTRAINT [FK__Jobs_Appl__Appli__5DCAEF64];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs_Appl__Compa__5EBF139D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs_Applied] DROP CONSTRAINT [FK__Jobs_Appl__Compa__5EBF139D];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs_Appl__JobId__5FB337D6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs_Applied] DROP CONSTRAINT [FK__Jobs_Appl__JobId__5FB337D6];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs_Hire__Compa__6383C8BA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs_Hired] DROP CONSTRAINT [FK__Jobs_Hire__Compa__6383C8BA];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs_Hire__Emplo__628FA481]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs_Hired] DROP CONSTRAINT [FK__Jobs_Hire__Emplo__628FA481];
GO
IF OBJECT_ID(N'[dbo].[FK__Jobs_Hire__JobId__6477ECF3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs_Hired] DROP CONSTRAINT [FK__Jobs_Hire__JobId__6477ECF3];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Companies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Companies];
GO
IF OBJECT_ID(N'[dbo].[Employee_Associations_Clubs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Associations_Clubs];
GO
IF OBJECT_ID(N'[dbo].[Employee_Certification]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Certification];
GO
IF OBJECT_ID(N'[dbo].[Employee_Details]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Details];
GO
IF OBJECT_ID(N'[dbo].[Employee_Education]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Education];
GO
IF OBJECT_ID(N'[dbo].[Employee_Key_Skills]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Key_Skills];
GO
IF OBJECT_ID(N'[dbo].[Employee_Login]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Login];
GO
IF OBJECT_ID(N'[dbo].[Employee_Resumes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Resumes];
GO
IF OBJECT_ID(N'[dbo].[Employee_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Roles];
GO
IF OBJECT_ID(N'[dbo].[Employee_Searches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Searches];
GO
IF OBJECT_ID(N'[dbo].[Job_Details]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Job_Details];
GO
IF OBJECT_ID(N'[dbo].[Job_Reviews]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Job_Reviews];
GO
IF OBJECT_ID(N'[dbo].[Job_Type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Job_Type];
GO
IF OBJECT_ID(N'[dbo].[Jobs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Jobs];
GO
IF OBJECT_ID(N'[dbo].[Jobs_Applied]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Jobs_Applied];
GO
IF OBJECT_ID(N'[dbo].[Jobs_Hired]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Jobs_Hired];
GO
IF OBJECT_ID(N'[dbo].[Resume_Work_History]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Resume_Work_History];
GO
IF OBJECT_ID(N'[dbo].[Salary_Type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Salary_Type];
GO
IF OBJECT_ID(N'[dbo].[Work_Authorization_Type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Work_Authorization_Type];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Companies'
CREATE TABLE [dbo].[Companies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(25)  NOT NULL,
    [Description] varchar(max)  NULL
);
GO

-- Creating table 'Employee_Details'
CREATE TABLE [dbo].[Employee_Details] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LoginId] int  NOT NULL,
    [Firstname] varchar(25)  NULL,
    [Lastname] varchar(25)  NULL,
    [Email] varchar(50)  NULL,
    [Address] varchar(100)  NULL,
    [JobTitleId] int  NOT NULL,
    [SignUpDate] datetime  NOT NULL
);
GO

-- Creating table 'Employee_Login'
CREATE TABLE [dbo].[Employee_Login] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Username] varchar(25)  NOT NULL,
    [Password] varchar(25)  NOT NULL,
    [RoleId] int  NOT NULL,
    [TwoFKey] uniqueidentifier  NULL
);
GO

-- Creating table 'Employee_Roles'
CREATE TABLE [dbo].[Employee_Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LoginId] int  NOT NULL,
    [Rolename] varchar(25)  NULL
);
GO

-- Creating table 'Employee_Searches'
CREATE TABLE [dbo].[Employee_Searches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JobId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [SearchDate] datetime  NOT NULL
);
GO

-- Creating table 'Job_Reviews'
CREATE TABLE [dbo].[Job_Reviews] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EmployeeId] int  NOT NULL,
    [CompanyId] int  NOT NULL,
    [JobId] int  NOT NULL,
    [Rating] int  NOT NULL,
    [Comments] varchar(max)  NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'Job_Type'
CREATE TABLE [dbo].[Job_Type] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] varchar(100)  NOT NULL
);
GO

-- Creating table 'Jobs_Applied'
CREATE TABLE [dbo].[Jobs_Applied] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ApplicantId] int  NOT NULL,
    [CompanyId] int  NOT NULL,
    [JobId] int  NOT NULL,
    [DateApplied] datetime  NOT NULL
);
GO

-- Creating table 'Jobs_Hired'
CREATE TABLE [dbo].[Jobs_Hired] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EmployeeId] int  NOT NULL,
    [CompanyId] int  NOT NULL,
    [JobId] int  NOT NULL,
    [DateHired] datetime  NOT NULL
);
GO

-- Creating table 'Job_Details'
CREATE TABLE [dbo].[Job_Details] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JobId] int  NULL,
    [JobDescription] varchar(max)  NULL,
    [SalaryMin] decimal(19,4)  NULL,
    [SalaryMax] decimal(19,4)  NULL,
    [SalaryType] int  NOT NULL,
    [MinWorkAuthorization] int  NULL
);
GO

-- Creating table 'Salary_Type'
CREATE TABLE [dbo].[Salary_Type] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PayType] varchar(25)  NULL
);
GO

-- Creating table 'Work_Authorization_Type'
CREATE TABLE [dbo].[Work_Authorization_Type] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Status] varchar(25)  NULL
);
GO

-- Creating table 'Jobs'
CREATE TABLE [dbo].[Jobs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JobName] varchar(50)  NOT NULL,
    [JobTypeId] int  NOT NULL,
    [CompanyId] int  NOT NULL,
    [DatePosted] datetime  NOT NULL
);
GO

-- Creating table 'Employee_Associations_Clubs'
CREATE TABLE [dbo].[Employee_Associations_Clubs] (
    [Id] uniqueidentifier  NOT NULL,
    [EmpId] int  NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [StartDate] datetime  NOT NULL
);
GO

-- Creating table 'Employee_Certification'
CREATE TABLE [dbo].[Employee_Certification] (
    [Id] uniqueidentifier  NOT NULL,
    [Certification] varchar(100)  NOT NULL,
    [StartDate] datetime  NOT NULL
);
GO

-- Creating table 'Employee_Education'
CREATE TABLE [dbo].[Employee_Education] (
    [Id] uniqueidentifier  NOT NULL,
    [EmpId] int  NOT NULL,
    [University] varchar(100)  NOT NULL,
    [GraduationDate] datetime  NOT NULL,
    [Degree] varchar(100)  NOT NULL
);
GO

-- Creating table 'Employee_Key_Skills'
CREATE TABLE [dbo].[Employee_Key_Skills] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] varchar(100)  NOT NULL
);
GO

-- Creating table 'Employee_Resumes'
CREATE TABLE [dbo].[Employee_Resumes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EmpId] int  NOT NULL,
    [Summary] varchar(max)  NULL,
    [Experience] int  NULL,
    [KeySkillsId] uniqueidentifier  NULL,
    [WorkHistoryId] uniqueidentifier  NULL,
    [EducationId] uniqueidentifier  NULL,
    [CertificationId] uniqueidentifier  NULL
);
GO

-- Creating table 'Resume_Work_History'
CREATE TABLE [dbo].[Resume_Work_History] (
    [Id] uniqueidentifier  NOT NULL,
    [CompanyName] varchar(100)  NOT NULL,
    [JobTitleName] varchar(100)  NOT NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [Description] varchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [PK_Companies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employee_Details'
ALTER TABLE [dbo].[Employee_Details]
ADD CONSTRAINT [PK_Employee_Details]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employee_Login'
ALTER TABLE [dbo].[Employee_Login]
ADD CONSTRAINT [PK_Employee_Login]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employee_Roles'
ALTER TABLE [dbo].[Employee_Roles]
ADD CONSTRAINT [PK_Employee_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employee_Searches'
ALTER TABLE [dbo].[Employee_Searches]
ADD CONSTRAINT [PK_Employee_Searches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Job_Reviews'
ALTER TABLE [dbo].[Job_Reviews]
ADD CONSTRAINT [PK_Job_Reviews]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Job_Type'
ALTER TABLE [dbo].[Job_Type]
ADD CONSTRAINT [PK_Job_Type]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Jobs_Applied'
ALTER TABLE [dbo].[Jobs_Applied]
ADD CONSTRAINT [PK_Jobs_Applied]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Jobs_Hired'
ALTER TABLE [dbo].[Jobs_Hired]
ADD CONSTRAINT [PK_Jobs_Hired]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Job_Details'
ALTER TABLE [dbo].[Job_Details]
ADD CONSTRAINT [PK_Job_Details]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Salary_Type'
ALTER TABLE [dbo].[Salary_Type]
ADD CONSTRAINT [PK_Salary_Type]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Work_Authorization_Type'
ALTER TABLE [dbo].[Work_Authorization_Type]
ADD CONSTRAINT [PK_Work_Authorization_Type]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Jobs'
ALTER TABLE [dbo].[Jobs]
ADD CONSTRAINT [PK_Jobs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [Name] in table 'Employee_Associations_Clubs'
ALTER TABLE [dbo].[Employee_Associations_Clubs]
ADD CONSTRAINT [PK_Employee_Associations_Clubs]
    PRIMARY KEY CLUSTERED ([Id], [Name] ASC);
GO

-- Creating primary key on [Id], [Certification] in table 'Employee_Certification'
ALTER TABLE [dbo].[Employee_Certification]
ADD CONSTRAINT [PK_Employee_Certification]
    PRIMARY KEY CLUSTERED ([Id], [Certification] ASC);
GO

-- Creating primary key on [Id], [University], [Degree] in table 'Employee_Education'
ALTER TABLE [dbo].[Employee_Education]
ADD CONSTRAINT [PK_Employee_Education]
    PRIMARY KEY CLUSTERED ([Id], [University], [Degree] ASC);
GO

-- Creating primary key on [Id], [Name] in table 'Employee_Key_Skills'
ALTER TABLE [dbo].[Employee_Key_Skills]
ADD CONSTRAINT [PK_Employee_Key_Skills]
    PRIMARY KEY CLUSTERED ([Id], [Name] ASC);
GO

-- Creating primary key on [Id] in table 'Employee_Resumes'
ALTER TABLE [dbo].[Employee_Resumes]
ADD CONSTRAINT [PK_Employee_Resumes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [CompanyName], [JobTitleName] in table 'Resume_Work_History'
ALTER TABLE [dbo].[Resume_Work_History]
ADD CONSTRAINT [PK_Resume_Work_History]
    PRIMARY KEY CLUSTERED ([Id], [CompanyName], [JobTitleName] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CompanyId] in table 'Job_Reviews'
ALTER TABLE [dbo].[Job_Reviews]
ADD CONSTRAINT [FK__Job_Revie__Compa__68487DD7]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Job_Revie__Compa__68487DD7'
CREATE INDEX [IX_FK__Job_Revie__Compa__68487DD7]
ON [dbo].[Job_Reviews]
    ([CompanyId]);
GO

-- Creating foreign key on [CompanyId] in table 'Jobs_Applied'
ALTER TABLE [dbo].[Jobs_Applied]
ADD CONSTRAINT [FK__Jobs_Appl__Compa__5EBF139D]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs_Appl__Compa__5EBF139D'
CREATE INDEX [IX_FK__Jobs_Appl__Compa__5EBF139D]
ON [dbo].[Jobs_Applied]
    ([CompanyId]);
GO

-- Creating foreign key on [CompanyId] in table 'Jobs_Hired'
ALTER TABLE [dbo].[Jobs_Hired]
ADD CONSTRAINT [FK__Jobs_Hire__Compa__6383C8BA]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs_Hire__Compa__6383C8BA'
CREATE INDEX [IX_FK__Jobs_Hire__Compa__6383C8BA]
ON [dbo].[Jobs_Hired]
    ([CompanyId]);
GO

-- Creating foreign key on [JobTitleId] in table 'Employee_Details'
ALTER TABLE [dbo].[Employee_Details]
ADD CONSTRAINT [FK__Employee___JobTi__5165187F]
    FOREIGN KEY ([JobTitleId])
    REFERENCES [dbo].[Job_Type]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___JobTi__5165187F'
CREATE INDEX [IX_FK__Employee___JobTi__5165187F]
ON [dbo].[Employee_Details]
    ([JobTitleId]);
GO

-- Creating foreign key on [LoginId] in table 'Employee_Details'
ALTER TABLE [dbo].[Employee_Details]
ADD CONSTRAINT [FK__Employee___Login__5070F446]
    FOREIGN KEY ([LoginId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___Login__5070F446'
CREATE INDEX [IX_FK__Employee___Login__5070F446]
ON [dbo].[Employee_Details]
    ([LoginId]);
GO

-- Creating foreign key on [LoginId] in table 'Employee_Roles'
ALTER TABLE [dbo].[Employee_Roles]
ADD CONSTRAINT [FK__Employee___Login__4BAC3F29]
    FOREIGN KEY ([LoginId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___Login__4BAC3F29'
CREATE INDEX [IX_FK__Employee___Login__4BAC3F29]
ON [dbo].[Employee_Roles]
    ([LoginId]);
GO

-- Creating foreign key on [UserId] in table 'Employee_Searches'
ALTER TABLE [dbo].[Employee_Searches]
ADD CONSTRAINT [FK__Employee___UserI__75A278F5]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___UserI__75A278F5'
CREATE INDEX [IX_FK__Employee___UserI__75A278F5]
ON [dbo].[Employee_Searches]
    ([UserId]);
GO

-- Creating foreign key on [EmployeeId] in table 'Job_Reviews'
ALTER TABLE [dbo].[Job_Reviews]
ADD CONSTRAINT [FK__Job_Revie__Emplo__6754599E]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Job_Revie__Emplo__6754599E'
CREATE INDEX [IX_FK__Job_Revie__Emplo__6754599E]
ON [dbo].[Job_Reviews]
    ([EmployeeId]);
GO

-- Creating foreign key on [ApplicantId] in table 'Jobs_Applied'
ALTER TABLE [dbo].[Jobs_Applied]
ADD CONSTRAINT [FK__Jobs_Appl__Appli__5DCAEF64]
    FOREIGN KEY ([ApplicantId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs_Appl__Appli__5DCAEF64'
CREATE INDEX [IX_FK__Jobs_Appl__Appli__5DCAEF64]
ON [dbo].[Jobs_Applied]
    ([ApplicantId]);
GO

-- Creating foreign key on [EmployeeId] in table 'Jobs_Hired'
ALTER TABLE [dbo].[Jobs_Hired]
ADD CONSTRAINT [FK__Jobs_Hire__Emplo__628FA481]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs_Hire__Emplo__628FA481'
CREATE INDEX [IX_FK__Jobs_Hire__Emplo__628FA481]
ON [dbo].[Jobs_Hired]
    ([EmployeeId]);
GO

-- Creating foreign key on [MinWorkAuthorization] in table 'Job_Details'
ALTER TABLE [dbo].[Job_Details]
ADD CONSTRAINT [FK__Job_Detai__MinWo__7E37BEF6]
    FOREIGN KEY ([MinWorkAuthorization])
    REFERENCES [dbo].[Work_Authorization_Type]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Job_Detai__MinWo__7E37BEF6'
CREATE INDEX [IX_FK__Job_Detai__MinWo__7E37BEF6]
ON [dbo].[Job_Details]
    ([MinWorkAuthorization]);
GO

-- Creating foreign key on [SalaryType] in table 'Job_Details'
ALTER TABLE [dbo].[Job_Details]
ADD CONSTRAINT [FK__Job_Detai__Salar__7D439ABD]
    FOREIGN KEY ([SalaryType])
    REFERENCES [dbo].[Salary_Type]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Job_Detai__Salar__7D439ABD'
CREATE INDEX [IX_FK__Job_Detai__Salar__7D439ABD]
ON [dbo].[Job_Details]
    ([SalaryType]);
GO

-- Creating foreign key on [CompanyId] in table 'Jobs'
ALTER TABLE [dbo].[Jobs]
ADD CONSTRAINT [FK__Jobs__CompanyId__571DF1D5]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs__CompanyId__571DF1D5'
CREATE INDEX [IX_FK__Jobs__CompanyId__571DF1D5]
ON [dbo].[Jobs]
    ([CompanyId]);
GO

-- Creating foreign key on [JobId] in table 'Employee_Searches'
ALTER TABLE [dbo].[Employee_Searches]
ADD CONSTRAINT [FK__Employee___JobId__74AE54BC]
    FOREIGN KEY ([JobId])
    REFERENCES [dbo].[Jobs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___JobId__74AE54BC'
CREATE INDEX [IX_FK__Employee___JobId__74AE54BC]
ON [dbo].[Employee_Searches]
    ([JobId]);
GO

-- Creating foreign key on [JobId] in table 'Job_Details'
ALTER TABLE [dbo].[Job_Details]
ADD CONSTRAINT [FK__Job_Detai__JobId__7C4F7684]
    FOREIGN KEY ([JobId])
    REFERENCES [dbo].[Jobs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Job_Detai__JobId__7C4F7684'
CREATE INDEX [IX_FK__Job_Detai__JobId__7C4F7684]
ON [dbo].[Job_Details]
    ([JobId]);
GO

-- Creating foreign key on [JobId] in table 'Job_Reviews'
ALTER TABLE [dbo].[Job_Reviews]
ADD CONSTRAINT [FK__Job_Revie__JobId__693CA210]
    FOREIGN KEY ([JobId])
    REFERENCES [dbo].[Jobs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Job_Revie__JobId__693CA210'
CREATE INDEX [IX_FK__Job_Revie__JobId__693CA210]
ON [dbo].[Job_Reviews]
    ([JobId]);
GO

-- Creating foreign key on [JobTypeId] in table 'Jobs'
ALTER TABLE [dbo].[Jobs]
ADD CONSTRAINT [FK__Jobs__JobTypeId__5629CD9C]
    FOREIGN KEY ([JobTypeId])
    REFERENCES [dbo].[Job_Type]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs__JobTypeId__5629CD9C'
CREATE INDEX [IX_FK__Jobs__JobTypeId__5629CD9C]
ON [dbo].[Jobs]
    ([JobTypeId]);
GO

-- Creating foreign key on [JobId] in table 'Jobs_Applied'
ALTER TABLE [dbo].[Jobs_Applied]
ADD CONSTRAINT [FK__Jobs_Appl__JobId__5FB337D6]
    FOREIGN KEY ([JobId])
    REFERENCES [dbo].[Jobs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs_Appl__JobId__5FB337D6'
CREATE INDEX [IX_FK__Jobs_Appl__JobId__5FB337D6]
ON [dbo].[Jobs_Applied]
    ([JobId]);
GO

-- Creating foreign key on [JobId] in table 'Jobs_Hired'
ALTER TABLE [dbo].[Jobs_Hired]
ADD CONSTRAINT [FK__Jobs_Hire__JobId__6477ECF3]
    FOREIGN KEY ([JobId])
    REFERENCES [dbo].[Jobs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Jobs_Hire__JobId__6477ECF3'
CREATE INDEX [IX_FK__Jobs_Hire__JobId__6477ECF3]
ON [dbo].[Jobs_Hired]
    ([JobId]);
GO

-- Creating foreign key on [EmpId] in table 'Employee_Associations_Clubs'
ALTER TABLE [dbo].[Employee_Associations_Clubs]
ADD CONSTRAINT [FK__Employee___EmpId__08B54D69]
    FOREIGN KEY ([EmpId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___EmpId__08B54D69'
CREATE INDEX [IX_FK__Employee___EmpId__08B54D69]
ON [dbo].[Employee_Associations_Clubs]
    ([EmpId]);
GO

-- Creating foreign key on [EmpId] in table 'Employee_Education'
ALTER TABLE [dbo].[Employee_Education]
ADD CONSTRAINT [FK__Employee___EmpId__05D8E0BE]
    FOREIGN KEY ([EmpId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___EmpId__05D8E0BE'
CREATE INDEX [IX_FK__Employee___EmpId__05D8E0BE]
ON [dbo].[Employee_Education]
    ([EmpId]);
GO

-- Creating foreign key on [EmpId] in table 'Employee_Resumes'
ALTER TABLE [dbo].[Employee_Resumes]
ADD CONSTRAINT [FK__Employee___EmpId__2180FB33]
    FOREIGN KEY ([EmpId])
    REFERENCES [dbo].[Employee_Login]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Employee___EmpId__2180FB33'
CREATE INDEX [IX_FK__Employee___EmpId__2180FB33]
ON [dbo].[Employee_Resumes]
    ([EmpId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------