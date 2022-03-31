{% docs table_customer_with_large_volume %}

# About this table
This table finds a list of the top 100 customers who have ever placed large quantity orders.
The query lists the customer name, customer key, the order key, date and total price and the quantity for the order

# Data Sources

This table is sourced from the [Snowflake_Sample_Data](https://docs.snowflake.com/en/user-guide/sample-data-tpch.html) 
There are 3 base tables used to generate this table:
 - lineitem
 - customers
 - orders

Refer to the [TCP-H documentation](https://www.tpc.org/tpc_documents_current_versions/pdf/tpc-h_v2.17.1.pdf)
Q18 for a comperehensive explaination for the analysis

{% enddocs %}


