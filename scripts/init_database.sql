/*
=============================================================
Database and Schema Setup
=============================================================
Script Purpose:
    This script creates a database called 'DataWarehouse'. Before creating it,the script checks whether the database already exists. 
    If it does, the existing database is removed and a new one is created. The script also creates three schemas 
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Executing this script will delete the existing 'DataWarehouse' database, if present, and then recreate it from scratch. 
    As a result, all objects and data stored in the database will be permanently lost. 
    Make sure any important data is backed up before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
