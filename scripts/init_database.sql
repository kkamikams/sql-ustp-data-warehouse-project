IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ustp_data_warehouse')
BEGIN
    ALTER DATABASE ustp_data_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ustp_data_warehouse;
END;
 
CREATE DATABASE ustp_data_warehouse;
USE ustp_data_warehouse;

CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
