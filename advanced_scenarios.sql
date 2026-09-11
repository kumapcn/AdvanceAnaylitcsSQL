USE WindowFunctionsPortfolio;
GO

/* ADVANCED 1: Deduplicate customers by email - retain lowest ID */
WITH x AS (
    SELECT *, ROW_NUMBER() OVER (
        PARTITION BY email ORDER BY customer_id
    ) AS rn
    FROM Customers
)
SELECT * FROM x WHERE rn > 1;

/* ADVANCED 2: First and last transaction per account */
SELECT account_id,
       FIRST_VALUE(transaction_date) OVER (
           PARTITION BY account_id ORDER BY transaction_date, transaction_id
       ) AS first_transaction_date,
       FIRST_VALUE(transaction_date) OVER (
           PARTITION BY account_id ORDER BY transaction_date DESC, transaction_id DESC
       ) AS last_transaction_date
FROM Transactions;

/* ADVANCED 3: Highest transaction per month */
WITH x AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY YEAR(transaction_date), MONTH(transaction_date)
               ORDER BY amount DESC, transaction_id
           ) AS rn
    FROM Transactions
)
SELECT * FROM x WHERE rn = 1;

/* ADVANCED 4: Customer inactivity periods */
WITH x AS (
    SELECT customer_id, transaction_date,
           LAG(transaction_date) OVER (
               PARTITION BY customer_id ORDER BY transaction_date, transaction_id
           ) AS previous_date
    FROM Transactions
)
SELECT customer_id, previous_date, transaction_date,
       DATEDIFF(DAY, previous_date, transaction_date) AS inactive_days
FROM x
WHERE previous_date IS NOT NULL
  AND DATEDIFF(DAY, previous_date, transaction_date) >= 30;

/* ADVANCED 5: Customer revenue quartiles */
WITH totals AS (
    SELECT customer_id, SUM(sales_amount) AS revenue
    FROM Sales
    GROUP BY customer_id
)
SELECT customer_id, revenue,
       NTILE(4) OVER (ORDER BY revenue DESC) AS revenue_quartile
FROM totals;
