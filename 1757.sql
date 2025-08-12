/* ============================================================
   Problem: 1757 Recyclable and Low Fat Products
   Difficulty: Easy
   Source: LeetCode SQL 50
   ============================================================ */

/*
Table: Products

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM ('Y', 'N') where 'Y' means this product is low fat.
recyclable is an ENUM ('Y', 'N') where 'Y' means this product is recyclable.

Write a solution to find the IDs of products that are both low fat and recyclable.
Return the result table in any order.

Example:
Input:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+

Output:
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
*/

-- Solution:
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
