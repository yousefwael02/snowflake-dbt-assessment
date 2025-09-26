with orders as (
    select * from {{ref('stg_orders')}}
),
lineitems as (
    select * from {{source('tpch','lineitem')}}
)

select 
    o.c_custkey,
    o.c_name,
    sum(l.l_extendedprice * (1 - l.l_discount)) as total_revenue
from orders o
join lineitems l
    on o.o_orderkey = l.l_orderkey
group by o.c_custkey, o.c_name