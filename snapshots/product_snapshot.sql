{% snapshot product_snapshot%}
{{
    config(
        target_schema = 'bronze',
        strategy = 'timestamp',
        unique_key = 'id',
        updated_at = 'created_at',
    )
}}
SELECT * from {{ source('landing', 'products')}}
{% endsnapshot %}