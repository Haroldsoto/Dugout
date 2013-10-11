
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/11/2013 01:27:16
-- Generated from EDMX file: C:\Users\Harold\Source\Repos\BD\DugoutDB\DugoutDataAccess\DugoutModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [master];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Sports'
CREATE TABLE [dbo].[Sports] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Matches'
CREATE TABLE [dbo].[Matches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [TeamId] int  NOT NULL,
    [TeamId1] int  NOT NULL,
    [StadiumId] int  NOT NULL
);
GO

-- Creating table 'Teams'
CREATE TABLE [dbo].[Teams] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [League_Id] int  NOT NULL
);
GO

-- Creating table 'Leagues'
CREATE TABLE [dbo].[Leagues] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SportId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Stadia'
CREATE TABLE [dbo].[Stadia] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Sports'
ALTER TABLE [dbo].[Sports]
ADD CONSTRAINT [PK_Sports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [PK_Matches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [PK_Teams]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Leagues'
ALTER TABLE [dbo].[Leagues]
ADD CONSTRAINT [PK_Leagues]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Stadia'
ALTER TABLE [dbo].[Stadia]
ADD CONSTRAINT [PK_Stadia]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [League_Id] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [FK_TeamLeague]
    FOREIGN KEY ([League_Id])
    REFERENCES [dbo].[Leagues]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TeamLeague'
CREATE INDEX [IX_FK_TeamLeague]
ON [dbo].[Teams]
    ([League_Id]);
GO

-- Creating foreign key on [SportId] in table 'Leagues'
ALTER TABLE [dbo].[Leagues]
ADD CONSTRAINT [FK_SportLeague]
    FOREIGN KEY ([SportId])
    REFERENCES [dbo].[Sports]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SportLeague'
CREATE INDEX [IX_FK_SportLeague]
ON [dbo].[Leagues]
    ([SportId]);
GO

-- Creating foreign key on [TeamId] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [FK_MatchTeam]
    FOREIGN KEY ([TeamId])
    REFERENCES [dbo].[Teams]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MatchTeam'
CREATE INDEX [IX_FK_MatchTeam]
ON [dbo].[Matches]
    ([TeamId]);
GO

-- Creating foreign key on [TeamId1] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [FK_TeamMatch]
    FOREIGN KEY ([TeamId1])
    REFERENCES [dbo].[Teams]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TeamMatch'
CREATE INDEX [IX_FK_TeamMatch]
ON [dbo].[Matches]
    ([TeamId1]);
GO

-- Creating foreign key on [StadiumId] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [FK_StadiumMatch]
    FOREIGN KEY ([StadiumId])
    REFERENCES [dbo].[Stadia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StadiumMatch'
CREATE INDEX [IX_FK_StadiumMatch]
ON [dbo].[Matches]
    ([StadiumId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------