# Expense Tracker

A data analytics project that stores and analyzes multi-user expense transactions using SQL and Power BI.

## Project Overview
This project demonstrates an end-to-end expense tracking workflow. A relational SQL schema maintains users, categories, and transactions with primary keys, foreign keys, validation constraints, and indexes. Power BI can use the included dataset to visualize spending patterns, category breakdowns, payment methods, and year-over-year costs.

## Features
- Multi-user expense tracking
- Structured SQL database schema
- Data integrity using primary keys, foreign keys, unique constraints, and checks
- 1,142 realistic sample transactions covering 2024 and 2025
- Category and payment-method analysis
- Monthly spending trends
- Year-over-year expense comparison
- Power BI-ready CSV dataset

## Repository Structure
```text
expense-tracker/
├── README.md
├── LICENSE
├── data/
│   ├── expense_transactions.csv
│   └── users.csv
├── database/
│   ├── schema.sql
│   ├── sample_data.sql
│   └── analysis_queries.sql
├── powerbi/
│   ├── README.md
│   └── PLACE_PBIX_HERE.txt
└── images/
    └── PLACE_DASHBOARD_SCREENSHOT_HERE.txt
```

## Tech Stack
- SQL / MySQL
- Microsoft Power BI
- CSV
- DAX

## Dashboard
After building the Power BI report, add a screenshot at `images/dashboard-preview.png`, then replace this note with:

`![Expense Tracker Dashboard](images/dashboard-preview.png)`

## Dataset
The sample dataset is synthetic and created only for portfolio/demo purposes. It contains no real personal or financial information.

## Suggested Power BI Visuals
Use KPI cards for total spending, average transaction, transaction count and YoY change; a line chart for spending over time; a donut chart for category distribution; and column/bar charts for yearly and payment-method comparisons.

## Resume Description
**Expense Tracker**  
Designed and maintained a relational SQL database schema to reliably log, categorize, and store transactional data for multiple users, focusing on data integrity and structured data management. Built a Power BI report to visualize spending trends, category-wise expenditure, and year-over-year cost comparisons.

## Getting Started
1. Download or clone this repository.
2. Run `database/schema.sql` in MySQL.
3. Review `database/sample_data.sql` and `database/analysis_queries.sql`.
4. Import `data/expense_transactions.csv` into Power BI.
5. Follow `powerbi/README.md` to build the dashboard.

## License
This project is available under the MIT License.
