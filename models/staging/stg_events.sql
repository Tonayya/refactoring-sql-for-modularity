{{
    config(
        materialized='incremental',
        incremental_strategy='microbatch',
        event_time='event_occured_at',
        batch_size='day',
        lookback=3,
        begin='2020-01-01',
        full_refresh=false
    )
}}

select * from {{ ref('stg_events') }} 