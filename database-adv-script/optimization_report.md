## EXPLAIN Output

| id | select\_type | table      | type    | possible\_keys                  | key         | rows  | Extra       |
| -- | ------------ | ---------- | ------- | ------------------------------- | ----------- | ----- | ----------- |
| 1  | SIMPLE       | bookings   | ALL     | PRIMARY, user\_id, property\_id | NULL        | 5,000 |             |
| 1  | SIMPLE       | users      | eq\_ref | PRIMARY                         | PRIMARY     | 1     | Using where |
| 1  | SIMPLE       | properties | eq\_ref | PRIMARY                         | PRIMARY     | 1     | Using where |
| 1  | SIMPLE       | payments   | ref     | booking\_id                     | booking\_id | \~1   | Using where |

## Before Indexes

- bookings: Full table scan (type=ALL)
- payments: Join buffer (no index used)
- Total rows examined: 10,000+
- Time: ~500ms+

## After Indexes + Refactor

- bookings: filtered scan
- users/properties/payments: `eq_ref` or `ref` joins using indexed columns
- Total rows examined: < 1,000
- Time: ~20ms to 80ms (depends on data size)
