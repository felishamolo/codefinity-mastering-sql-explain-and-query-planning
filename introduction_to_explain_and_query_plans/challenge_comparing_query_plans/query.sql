-- Query 1: EXPLAIN plan for selecting all customers (no WHERE clause)
EXPLAIN SELECT * FROM customers;

-- Query 2: EXPLAIN plan for selecting customers with a specific customer_id (indexed column)
EXPLAIN SELECT * FROM customers WHERE customer_id = 2;

-- Explanation:
-- The first query will show a sequential scan (Seq Scan) on the customers table, scanning all rows.
-- The second query will show an index scan (Index Scan) using the customers_pkey index, scanning only the matching row.
-- The query with the WHERE clause on customer_id is more efficient because it uses the index to directly locate the row, minimizing the number of rows scanned and improving performance.