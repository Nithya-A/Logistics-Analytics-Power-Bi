
USE LogisticsAnalytics;
GO

-- Check all Primary Keys
SELECT 
    TABLE_NAME,
    CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE CONSTRAINT_TYPE = 'PRIMARY KEY'
ORDER BY TABLE_NAME;


-- Check all Foreign Keys
SELECT
    fk.name AS ForeignKeyName,
    OBJECT_NAME(fk.parent_object_id) AS ChildTable,
    COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS ChildColumn,
    OBJECT_NAME(fk.referenced_object_id) AS ParentTable,
    COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS ParentColumn
FROM sys.foreign_keys fk
INNER JOIN sys.foreign_key_columns fkc
    ON fk.object_id = fkc.constraint_object_id
ORDER BY ChildTable;

SELECT TOP 1 *
FROM dbo.Loads;

SELECT TOP 1 *
FROM dbo.Customers;

SELECT TOP 1 *
FROM dbo.Routes;