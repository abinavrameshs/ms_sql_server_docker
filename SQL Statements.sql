-- Create a new table called '[pkl_data]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[pkl_data]', 'U') IS NOT NULL
DROP TABLE [dbo].[pkl_data]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[pkl_data]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [library] VARCHAR(MAX),
    [pkl] VARBINARY(MAX) NOT NULL
    -- Specify more columns here
);
GO



-- Get a list of tables and views in the current database
SELECT table_catalog [database], table_schema [schema], table_name [name], table_type [type]
FROM INFORMATION_SCHEMA.TABLES
GO

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT * FROM [dbo].[pkl_data]
GO

-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE abinavDB
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'abinavDB'
)
CREATE DATABASE abinavDB
GO

USE abinavDB
-- Create a new table called '[dummytable]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[dummytable]', 'U') IS NOT NULL
DROP TABLE [dbo].[dummytable]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[dummytable]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [ColumnName2] NVARCHAR(50) NOT NULL,
    [ColumnName3] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO

-- Insert rows into table 'dummytable' in schema '[dbo]'
INSERT INTO [dbo].[dummytable]
( -- Columns to insert data into
 [Id], [ColumnName2], [ColumnName3]
)
VALUES
( -- First row: values for the columns in the list above
 3, 'sjh','dfsdf'
),
( -- Second row: values for the columns in the list above
 4,'erwer', 'sdsdfs'
),
( -- Second row: values for the columns in the list above
 5,'erwer', 'sdsdfs'
)
-- Add more rows here
GO

-- Select rows from a Table or View '[dummytable]' in schema '[dbo]'
SELECT * FROM [dbo].[dummytable]
