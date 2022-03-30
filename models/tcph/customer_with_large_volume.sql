select  
        concat(to_varchar(c_custkey), '_', to_varchar(o_orderkey)) as customer_order_id,
        c_name as customer_name, 
        c_custkey as customer_id,
        o_orderkey as order_id,
        o_orderdate as order_date,
        o_totalprice as total_price,
        {{ var('order_quantity')}} as threshold_quantity,
        sum(l_quantity) as total_quantity
from    {{ source('tpch_sf1','lineitem')}},
        {{ source('tpch_sf1','customer')}},
        {{ source('tpch_sf1','orders')}}
where
    o_orderkey in (select * from {{ref('order_keys')}})
and c_custkey = o_custkey
and o_orderkey = l_orderkey
  {{ dbt_utils.group_by(7) }}
order by o_totalprice desc, o_orderdate