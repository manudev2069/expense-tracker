USE expense_tracker;

-- 1. Monthly spending
SELECT DATE_FORMAT(t.transaction_date, '%Y-%m') AS month,
       ROUND(SUM(t.amount),2) AS total_spending
FROM transactions t
GROUP BY DATE_FORMAT(t.transaction_date, '%Y-%m')
ORDER BY month;

-- 2. Category-wise spending
SELECT c.category_name, ROUND(SUM(t.amount),2) AS total_spending
FROM transactions t
JOIN categories c ON c.category_id=t.category_id
GROUP BY c.category_name
ORDER BY total_spending DESC;

-- 3. Spending by user
SELECT u.full_name, ROUND(SUM(t.amount),2) AS total_spending
FROM transactions t
JOIN users u ON u.user_id=t.user_id
GROUP BY u.user_id, u.full_name
ORDER BY total_spending DESC;

-- 4. Year-over-year spending
SELECT YEAR(transaction_date) AS year, ROUND(SUM(amount),2) AS total_spending
FROM transactions
GROUP BY YEAR(transaction_date)
ORDER BY year;

-- 5. Average transaction by category
SELECT c.category_name, ROUND(AVG(t.amount),2) AS avg_transaction
FROM transactions t
JOIN categories c ON c.category_id=t.category_id
GROUP BY c.category_name
ORDER BY avg_transaction DESC;
