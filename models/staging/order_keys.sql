select l_orderkey as orderkey
from {{ source('tpch_sf1','lineitem')}} 
group by l_orderkey 
having sum(l_quantity) > {{var("order_quantity")}}