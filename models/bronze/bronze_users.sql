{{
    config(
        tags = 'contains PII'
    )
}}

SELECT *
FROM {{source('landing','users')}}