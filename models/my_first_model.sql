select * 
from {{ source('tpch', 'customer')}}