-- SQL script to print the full description of the 'Books' table
-- by querying the information_schema, as DESCRIBE/EXPLAIN are disallowed.
SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    COLUMN_DEFAULT,
    EXTRA
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = DATABASE() -- Use the current database (passed as argument)
    AND TABLE_NAME = 'Books';