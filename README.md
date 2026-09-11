# AdvanceAnaylitcsSQL

# SQL Window Functions — Interview & Real-World Analytics Project

A portfolio-ready SQL project demonstrating **window functions from fundamentals to consultant-level scenarios** using realistic Banking, Sales, and Healthcare datasets.

## 🎯 Project Goals

- Master `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `NTILE`
- Use windowed `SUM`, `AVG`, `COUNT`, `MIN`, `MAX`
- Compare current rows with `LAG` and `LEAD`
- Build running totals and moving averages
- Understand `PARTITION BY`, `ORDER BY`, and window frames
- Solve deduplication, Top-N-per-group, latest-record, growth, and gap-analysis problems
- Practice interview-style SQL scenarios
- Think like a SQL Developer: correctness, readability, edge cases, and maintainability

## 🗂️ Repository Structure

```text
sql-window-functions-project/
├── README.md
├── LICENSE
├── .gitignore
├── data/
│   └── sample_data.sql
├── sql/
│   ├── 01_setup/
│   │   └── 01_create_tables.sql
│   ├── 02_fundamentals/
│   │   └── window_basics.sql
│   ├── 03_ranking/
│   │   └── ranking_functions.sql
│   ├── 04_aggregates/
│   │   └── aggregate_windows.sql
│   ├── 05_navigation/
│   │   └── lag_lead.sql
│   ├── 06_window_frames/
│   │   └── frames_moving_averages.sql
│   ├── 07_real_world_scenarios/
│   │   ├── banking.sql
│   │   ├── healthcare.sql
│   │   └── sales.sql
│   ├── 08_advanced/
│   │   └── advanced_scenarios.sql
│   └── 09_interview_challenges/
│       └── challenge_questions.sql
└── docs/
    └── interview_cheatsheet.md
```

## 🛠️ SQL Dialect

Primary dialect: **Microsoft SQL Server (T-SQL)**.

Most window-function concepts are portable to PostgreSQL, MySQL 8+, Oracle, Snowflake, and other modern SQL platforms, but date functions and DML syntax may differ.

## 🚀 How to Run

1. Open SQL Server Management Studio or Azure Data Studio.
2. Run `sql/01_setup/01_create_tables.sql`.
3. Run `data/sample_data.sql`.
4. Execute the learning scripts in numerical order.
5. Attempt `09_interview_challenges/challenge_questions.sql` before reading the solutions.

## 📚 Learning Progression

| Level | Topic | Key Skills |
|---|---|---|
| 1 | Fundamentals | `OVER`, `PARTITION BY`, `ORDER BY` |
| 2 | Ranking | `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `NTILE` |
| 3 | Aggregates | Running totals, averages, group metrics |
| 4 | Navigation | `LAG`, `LEAD`, previous/next comparisons |
| 5 | Frames | Rolling and moving calculations |
| 6 | Real-world | Banking, healthcare, sales |
| 7 | Advanced | Gaps, trends, retention, deduplication |
| 8 | Interviews | Scenario-based challenges |

## 💼 Portfolio Highlights

This repository demonstrates practical patterns commonly requested in SQL Developer/Data Analyst interviews:

- Latest record per entity
- Top N records per group
- Second/third highest value per group
- Duplicate detection
- Above-group-average analysis
- Running account balance
- Month-over-month growth
- Previous/next transaction analysis
- Rolling 7-day metrics
- Transaction gaps and inactivity
- Consecutive-event analysis
- Customer segmentation with `NTILE`

## 🧠 Interview Principle

A good SQL answer is not just a query. Be ready to explain:

1. What the business requirement is.
2. What the window is.
3. Why `PARTITION BY` is required or not required.
4. Why the chosen ordering is correct.
5. How ties are handled.
6. Why a CTE/subquery is used when filtering a window result.
7. What happens with `NULL`, duplicate dates, and zero denominators.
8. Whether the query is readable and performant at scale.

## 📈 Suggested GitHub Presentation

Add screenshots of 3–5 query results to the repository and pin this repository on your GitHub profile. A strong portfolio sequence is:

**Problem → SQL approach → Result → Business interpretation → Edge cases**.

## Author

**SQL Developer Portfolio Project**
