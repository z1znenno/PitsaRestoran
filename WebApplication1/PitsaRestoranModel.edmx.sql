
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/20/2026 09:05:20
-- Generated from EDMX file: C:\Users\opilane\source\repos\z1znenno\PitsaRestoran\WebApplication1\PitsaRestoranModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PitsaRestoran2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TootajaAmetiMaaratus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AmetiMaaratusSet] DROP CONSTRAINT [FK_TootajaAmetiMaaratus];
GO
IF OBJECT_ID(N'[dbo].[FK_ametAmetiMaaratus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AmetiMaaratusSet] DROP CONSTRAINT [FK_ametAmetiMaaratus];
GO
IF OBJECT_ID(N'[dbo].[FK_KategooriaToode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToodeSet] DROP CONSTRAINT [FK_KategooriaToode];
GO
IF OBJECT_ID(N'[dbo].[FK_ToodePitsa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PitsaSet] DROP CONSTRAINT [FK_ToodePitsa];
GO
IF OBJECT_ID(N'[dbo].[FK_KoostisosaPitsaKoostisosad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PitsaKoostisosadSet] DROP CONSTRAINT [FK_KoostisosaPitsaKoostisosad];
GO
IF OBJECT_ID(N'[dbo].[FK_ToodePitsaKoostisosad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PitsaKoostisosadSet] DROP CONSTRAINT [FK_ToodePitsaKoostisosad];
GO
IF OBJECT_ID(N'[dbo].[FK_KlientTellimus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TellimusSet] DROP CONSTRAINT [FK_KlientTellimus];
GO
IF OBJECT_ID(N'[dbo].[FK_TellimusTellimusToode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TellimusToodeSet] DROP CONSTRAINT [FK_TellimusTellimusToode];
GO
IF OBJECT_ID(N'[dbo].[FK_laudTellimus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TellimusSet] DROP CONSTRAINT [FK_laudTellimus];
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
IF OBJECT_ID(N'[dbo].[KategooriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KategooriaSet];
GO
IF OBJECT_ID(N'[dbo].[ToodeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToodeSet];
GO
IF OBJECT_ID(N'[dbo].[PitsaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PitsaSet];
GO
IF OBJECT_ID(N'[dbo].[KoostisosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KoostisosaSet];
GO
IF OBJECT_ID(N'[dbo].[PitsaKoostisosadSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PitsaKoostisosadSet];
GO
IF OBJECT_ID(N'[dbo].[KlientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KlientSet];
GO
IF OBJECT_ID(N'[dbo].[TellimusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TellimusSet];
GO
IF OBJECT_ID(N'[dbo].[TellimusToodeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TellimusToodeSet];
GO
IF OBJECT_ID(N'[dbo].[laudSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[laudSet];
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
    [alguskuupaev] datetime  NOT NULL,
    [Tootaja_Id] int  NOT NULL,
    [amet_Id] int  NOT NULL
);
GO

-- Creating table 'KategooriaSet'
CREATE TABLE [dbo].[KategooriaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ToodeSet'
CREATE TABLE [dbo].[ToodeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [hind] decimal(18,0)  NOT NULL,
    [Kategooria_Id] int  NOT NULL
);
GO

-- Creating table 'PitsaSet'
CREATE TABLE [dbo].[PitsaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [Toode_Id] int  NOT NULL
);
GO

-- Creating table 'KoostisosaSet'
CREATE TABLE [dbo].[KoostisosaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [Kehtivusaeg] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PitsaKoostisosadSet'
CREATE TABLE [dbo].[PitsaKoostisosadSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Koostisosa_Id] int  NOT NULL,
    [Toode_Id] int  NOT NULL
);
GO

-- Creating table 'KlientSet'
CREATE TABLE [dbo].[KlientSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [prerenimi] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TellimusSet'
CREATE TABLE [dbo].[TellimusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Kuupaev] datetime  NOT NULL,
    [Kellaaeg] time  NOT NULL,
    [staatus] nvarchar(max)  NOT NULL,
    [KlientId] int  NOT NULL,
    [laudId] int  NOT NULL
);
GO

-- Creating table 'TellimusToodeSet'
CREATE TABLE [dbo].[TellimusToodeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TellimusId] int  NOT NULL,
    [ToodeId] int  NOT NULL
);
GO

-- Creating table 'laudSet'
CREATE TABLE [dbo].[laudSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [number] int  NOT NULL,
    [kohtadeArv] int  NOT NULL
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

-- Creating primary key on [Id] in table 'KategooriaSet'
ALTER TABLE [dbo].[KategooriaSet]
ADD CONSTRAINT [PK_KategooriaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [PK_ToodeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PitsaSet'
ALTER TABLE [dbo].[PitsaSet]
ADD CONSTRAINT [PK_PitsaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KoostisosaSet'
ALTER TABLE [dbo].[KoostisosaSet]
ADD CONSTRAINT [PK_KoostisosaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PitsaKoostisosadSet'
ALTER TABLE [dbo].[PitsaKoostisosadSet]
ADD CONSTRAINT [PK_PitsaKoostisosadSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KlientSet'
ALTER TABLE [dbo].[KlientSet]
ADD CONSTRAINT [PK_KlientSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TellimusSet'
ALTER TABLE [dbo].[TellimusSet]
ADD CONSTRAINT [PK_TellimusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TellimusToodeSet'
ALTER TABLE [dbo].[TellimusToodeSet]
ADD CONSTRAINT [PK_TellimusToodeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'laudSet'
ALTER TABLE [dbo].[laudSet]
ADD CONSTRAINT [PK_laudSet]
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

-- Creating foreign key on [Kategooria_Id] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [FK_KategooriaToode]
    FOREIGN KEY ([Kategooria_Id])
    REFERENCES [dbo].[KategooriaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KategooriaToode'
CREATE INDEX [IX_FK_KategooriaToode]
ON [dbo].[ToodeSet]
    ([Kategooria_Id]);
GO

-- Creating foreign key on [Toode_Id] in table 'PitsaSet'
ALTER TABLE [dbo].[PitsaSet]
ADD CONSTRAINT [FK_ToodePitsa]
    FOREIGN KEY ([Toode_Id])
    REFERENCES [dbo].[ToodeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodePitsa'
CREATE INDEX [IX_FK_ToodePitsa]
ON [dbo].[PitsaSet]
    ([Toode_Id]);
GO

-- Creating foreign key on [Koostisosa_Id] in table 'PitsaKoostisosadSet'
ALTER TABLE [dbo].[PitsaKoostisosadSet]
ADD CONSTRAINT [FK_KoostisosaPitsaKoostisosad]
    FOREIGN KEY ([Koostisosa_Id])
    REFERENCES [dbo].[KoostisosaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KoostisosaPitsaKoostisosad'
CREATE INDEX [IX_FK_KoostisosaPitsaKoostisosad]
ON [dbo].[PitsaKoostisosadSet]
    ([Koostisosa_Id]);
GO

-- Creating foreign key on [Toode_Id] in table 'PitsaKoostisosadSet'
ALTER TABLE [dbo].[PitsaKoostisosadSet]
ADD CONSTRAINT [FK_ToodePitsaKoostisosad]
    FOREIGN KEY ([Toode_Id])
    REFERENCES [dbo].[ToodeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodePitsaKoostisosad'
CREATE INDEX [IX_FK_ToodePitsaKoostisosad]
ON [dbo].[PitsaKoostisosadSet]
    ([Toode_Id]);
GO

-- Creating foreign key on [KlientId] in table 'TellimusSet'
ALTER TABLE [dbo].[TellimusSet]
ADD CONSTRAINT [FK_KlientTellimus]
    FOREIGN KEY ([KlientId])
    REFERENCES [dbo].[KlientSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KlientTellimus'
CREATE INDEX [IX_FK_KlientTellimus]
ON [dbo].[TellimusSet]
    ([KlientId]);
GO

-- Creating foreign key on [TellimusId] in table 'TellimusToodeSet'
ALTER TABLE [dbo].[TellimusToodeSet]
ADD CONSTRAINT [FK_TellimusTellimusToode]
    FOREIGN KEY ([TellimusId])
    REFERENCES [dbo].[TellimusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TellimusTellimusToode'
CREATE INDEX [IX_FK_TellimusTellimusToode]
ON [dbo].[TellimusToodeSet]
    ([TellimusId]);
GO

-- Creating foreign key on [laudId] in table 'TellimusSet'
ALTER TABLE [dbo].[TellimusSet]
ADD CONSTRAINT [FK_laudTellimus]
    FOREIGN KEY ([laudId])
    REFERENCES [dbo].[laudSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_laudTellimus'
CREATE INDEX [IX_FK_laudTellimus]
ON [dbo].[TellimusSet]
    ([laudId]);
GO

-- Creating foreign key on [ToodeId] in table 'TellimusToodeSet'
ALTER TABLE [dbo].[TellimusToodeSet]
ADD CONSTRAINT [FK_ToodeTellimusToode]
    FOREIGN KEY ([ToodeId])
    REFERENCES [dbo].[ToodeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodeTellimusToode'
CREATE INDEX [IX_FK_ToodeTellimusToode]
ON [dbo].[TellimusToodeSet]
    ([ToodeId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------