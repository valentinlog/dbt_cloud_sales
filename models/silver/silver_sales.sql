{{
      config(

                    materialized='incremental',
                    unique_key = ['Sales_Order_Number', 'Order_Date', 'Customer_Name','Item']
        
            )

}}
select
    sales_order_number,
    sales_order_linenumber,
    order_date,
    customer_name,
    email,
    item,
    quantity,
    unitprice,
    tax,
    coalesce(order_date < '2019-08-01', false) as is_flaged,
    current_timestamp() as created_ts
from {{ ref("bronze_sales") }}
