SELECT
    id,
    created_at,
    city,
    state,
    year(birth_date) AS  birth_date,
    source as sales_channel

FROM {{ref('bronze_users')}}