/*
Data quility tests
*/


--# 1. Row count check 
-- Count the total number of records (or rows) are in the SQL view


select
    COUNT(*) as no_of_rows
from
    us_youtuber;



--# 2. Column count check 
--Count the total number of columns (or fields) are in the SQL view

select
    COUNT(*) as column_count
from
    INFORMATION_SCHEMA.COLUMNS
where
    TABLE_NAME = 'us_youtuber';


--# 3. Data type check
--Check the data types of each column from the view by checking the INFORMATION SCHEMA view

SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_NAME = 'us_youtuber';


-- # 4. Duplicate records check

-- 1. Check for duplicate rows in the view
-- 2. Group by the channel name
-- 3. Filter for groups with more than one row

-- 1.
SELECT
    channel_name,
    COUNT(*) AS duplicate_count
FROM
    us_youtuber

-- 2.
GROUP BY
    channel_name

-- 3.
HAVING
    COUNT(*) > 1;


