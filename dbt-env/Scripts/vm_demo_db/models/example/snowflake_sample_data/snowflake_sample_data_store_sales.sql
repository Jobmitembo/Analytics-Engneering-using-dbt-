

with source_store_sales as (
  select * from {{source('snowflake_sample_data','STORE_SALES')}}
),

final_cte as (

  select * from source_store_sales
)

Select *
from final_cte