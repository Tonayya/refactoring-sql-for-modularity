{% snapshot my_snappie %}

{{ config(
    target_schema = 'snapshots',
    strategy = 'check',
    unique_key = 'order_id',
    check_cols=['status', 'is_cancelled'],
    )
}}

SELECT * FROM {{ ref('customer_orders') }}

{% endsnapshot %}