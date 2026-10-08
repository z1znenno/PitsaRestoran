
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:38:15
-- Generated from EDMX file: C:\Users\opilane\source\repos\WebApplication1\WebApplication1\PitsaRestoranModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TootajaAmetiMaaratus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AmetiMaaratusSet] DROP CONSTRAINT [FK_TootajaAmetiMaaratus];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TootajaSet];
GO
IF OBJECT_ID(N'[dbo].[ametSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametSet];
GO
IF OBJECT_ID(N'[dbo].[AmetiMaaratusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AmetiMaaratusSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TootajaSet'
CREATE TABLE [dbo].[TootajaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [isikukood] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ametSet'
CREATE TABLE [dbo].[ametSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AmetiMaaratusSet'
CREATE TABLE [dbo].[AmetiMaaratusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [alguskuupaev] nvarchar(max)  NOT NULL,
    [Tootaja_Id] int  NOT NULL,
    [amet_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'TootajaSet'
ALTER TABLE [dbo].[TootajaSet]
ADD CONSTRAINT [PK_TootajaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ametSet'
ALTER TABLE [dbo].[ametSet]
ADD CONSTRAINT [PK_ametSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AmetiMaaratusSet'
ALTER TABLE [dbo].[AmetiMaaratusSet]
ADD CONSTRAINT [PK_AmetiMaaratusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Tootaja_Id] in table 'AmetiMaaratusSet'
ALTER TABLE [dbo].[AmetiMaaratusSet]
ADD CONSTRAINT [FK_TootajaAmetiMaaratus]
    FOREIGN KEY ([Tootaja_Id])
    REFERENCES [dbo].[TootajaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TootajaAmetiMaaratus'
CREATE INDEX [IX_FK_TootajaAmetiMaaratus]
ON [dbo].[AmetiMaaratusSet]
    ([Tootaja_Id]);
GO

-- Creating foreign key on [amet_Id] in table 'AmetiMaaratusSet'
ALTER TABLE [dbo].[AmetiMaaratusSet]
ADD CONSTRAINT [FK_ametAmetiMaaratus]
    FOREIGN KEY ([amet_Id])
    REFERENCES [dbo].[ametSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametAmetiMaaratus'
CREATE INDEX [IX_FK_ametAmetiMaaratus]
ON [dbo].[AmetiMaaratusSet]
    ([amet_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------