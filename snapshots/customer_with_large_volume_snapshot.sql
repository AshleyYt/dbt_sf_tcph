{% snapshot customer_with_large_volume_snapshot %}

{{
    config(
        target_schema='tpch',
        strategy='check',
        unique_key='customer_order_id',
        check_cols='all'
    )
}}

select * from {{ ref('customer_with_large_volume') }}

{% endsnapshot %}