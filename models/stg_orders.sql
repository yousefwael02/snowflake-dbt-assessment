with orders as (
    select * 
    from {{source('tpch', 'orders')}}
),
customers as (
    select *
    from {{source('tpch','customer')}}
)

select 
    o.o_orderkey,
    o.o_orderdate,
    o.o_totalprice,
    c.c_custkey,
    c.c_name,
    extract(year from o.o_orderdate) as order_year
from orders as o
join customers c
    on o.o_custkey = c.c_custkey