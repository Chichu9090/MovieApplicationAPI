IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = N'Actor')
BEGIN
CREATE TABLE dbo.[Actor] (
	ActorID INT IDENTITY(1,1) PRIMARY KEY,
	ActorName NVARCHAR(100) NOT NULL UNIQUE,
	ActorBio NVARCHAR(1000) NOT NULL,
	ActorDOB DATETIME NOT NULL,
	ActorGender NVARCHAR(10) NOT NULL
)
END
GO


INSERT INTO Actor (ActorName,ActorBio,ActorDOB,ActorGender)
VALUES ('Actor 1','Super Male Actor',GETDATE(),'Male')
GO

INSERT INTO Actor (ActorName,ActorBio,ActorDOB,ActorGender)
VALUES ('Actor 2','Super Female Actor',GETDATE(),'FeMale')
GO

-------------------------------Producer----------------------------------------------------------------------

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = N'Producer')
BEGIN
CREATE TABLE dbo.[Producer] (
	ProducerID INT IDENTITY(1,1) PRIMARY KEY,
	ProducerName NVARCHAR(100) NOT NULL UNIQUE,
	ProducerBio NVARCHAR(1000) NOT NULL,
	ProducerDOB DATETIME NOT NULL,
	ProducerCompany NVARCHAR(100) NOT NULL,
	ProducerGender NVARCHAR(10) NOT NULL
)
END
GO

INSERT INTO Producer (ProducerName,ProducerBio,ProducerDOB,ProducerCompany,ProducerGender)
VALUES ('Producer 1','Super Male Producer',GETDATE(),'ABC Company','Male')
GO

INSERT INTO Producer (ProducerName,ProducerBio,ProducerDOB,ProducerCompany,ProducerGender)
VALUES ('Producer 2','Super Female Producer',GETDATE(),'XYZ Company','FeMale')
GO

--------------------------------Movie------------------------------------------------------------------------------

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = N'Movie')
BEGIN
CREATE TABLE dbo.[Movie] (
	MovieID INT IDENTITY(1,1) PRIMARY KEY,
	MovieName NVARCHAR(1000) NOT NULL UNIQUE,
	MovieReleaseDate DATETIME NOT NULL,
	MovieActorList NVARCHAR(MAX) NOT NULL,
	MovieProducerList NVARCHAR(MAX) NOT NULL
)
END
GO

INSERT INTO Movie (MovieName,MovieReleaseDate,MovieActorList,MovieProducerList)
VALUES ('Thor',GETDATE(),'1,2','1')
GO

INSERT INTO Movie (MovieName,MovieReleaseDate,MovieActorList,MovieProducerList)
VALUES ('Spider Man',GETDATE(),'1','1,2')
GO

------------------------Mapping Tables------------------------------------------------------------------------------

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = N'MovieToActorMapping')
BEGIN
CREATE TABLE dbo.[MovieToActorMapping] (
	MAID INT IDENTITY(1,1) PRIMARY KEY,
	MovieID INT NOT NULL FOREIGN KEY REFERENCES Movie(MovieID),
	ActorID INT NOT NULL FOREIGN KEY REFERENCES Actor(ActorID)
)
END
GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = N'MovieToProducerMapping')
BEGIN
CREATE TABLE dbo.[MovieToProducerMapping] (
	MPID INT IDENTITY(1,1) PRIMARY KEY,
	MovieID INT NOT NULL FOREIGN KEY REFERENCES Movie(MovieID),
	ProducerID INT NOT NULL FOREIGN KEY REFERENCES Producer(ProducerID)
)
END
GO


						

