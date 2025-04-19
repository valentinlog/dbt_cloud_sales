-- Silver perform data transformation
select * from   {{ ref('bronze_product') }}