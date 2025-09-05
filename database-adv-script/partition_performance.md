## Test Query (Date Range)

```sql
SELECT *
FROM bookings
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-30';
```

## EXPLAIN PARTITIONS

```sql
EXPLAIN PARTITIONS
SELECT *
FROM bookings
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-30';
```

## EXPLAIN ANALYZE

```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-30';
```

## Sample Output (partitioned table)

```
-> Filter: (start_date between '2025-09-01' and '2025-09-30')
   Partitions: p2025
   Rows examined: 5000
   Rows returned: 120
   Cost: 1.21 rows=120
   Execution time: 5ms
```

## On non-partitioned table:

```
-> Filter: ...
   Partitions: NULL
   Rows examined: 500,000
   Rows returned: 120
   Cost: 128.00 rows=500000
   Execution time: 200ms

```