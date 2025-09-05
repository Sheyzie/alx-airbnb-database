-- ==============================
-- Partitioning Large Tables
-- ==============================

-- Assume the Booking table is large and query performance is slow. Implement partitioning on the Booking table based on the start_date column. Save the query in a file partitioning.sql

-- Partitioning Strategy:
-- Since start_date is a DATE or DATETIME, the best strategy is Range Partitioning by Date
CREATE TABLE bookings_partitioned (
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    PRIMARY KEY (booking_id, start_date)  -- Required for partitioning
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pMax VALUES LESS THAN MAXVALUE
);

-- Add new partitions	Use ALTER TABLE ... ADD PARTITION
-- Drop old data	Use ALTER TABLE ... DROP PARTITION


-- Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).

-- Run query on non-partitioned table
USE performance_schema;

EXPLAIN ANALYZE
SELECT *
FROM bookings_backup
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-30';

-- Run same query on partitioned table
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-30';
