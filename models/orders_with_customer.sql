select 
    o.o_orderkey,
    o.o_orderdate,
    c.c_name,
    c.c_nationkey
from {{source('tpch', 'orders')}} o
join {{source('tpch','customer')}} c
 on o.o_custkey = c.c_custkey