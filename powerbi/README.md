# Power BI Dashboard Setup

1. Open Power BI Desktop.
2. Home > Get data > Text/CSV.
3. Select `data/expense_transactions.csv` and click Load.
4. In Power Query, set `transaction_date` to Date and `amount_inr` to Decimal Number.
5. Create these DAX measures:

```DAX
Total Spending = SUM(expense_transactions[amount_inr])

Average Transaction = AVERAGE(expense_transactions[amount_inr])

Transaction Count = COUNTROWS(expense_transactions)

Previous Year Spending =
CALCULATE([Total Spending], SAMEPERIODLASTYEAR(expense_transactions[transaction_date]))

YoY Change % =
DIVIDE([Total Spending] - [Previous Year Spending], [Previous Year Spending])
```

6. Recommended dashboard:
   - Cards: Total Spending, Average Transaction, Transaction Count, YoY Change %
   - Line chart: transaction_date by Total Spending
   - Donut chart: category by Total Spending
   - Clustered column chart: Year by Total Spending
   - Bar chart: payment_method by Total Spending
   - Slicers: Year, category, user_id

7. Format currency as INR (₹).
8. Save the report as `powerbi/Expense_Tracker_Dashboard.pbix`.
9. Export or screenshot the finished dashboard and save it as `images/dashboard-preview.png`.
