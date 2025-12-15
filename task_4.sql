-- SQL script to print the full description of the 'Books' table
-- by querying the information_schema, as describe/explain are disallowed.
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
    TABLE_SCHEMA = 'alx_book_store'
    AND TABLE_NAME = 'Books';