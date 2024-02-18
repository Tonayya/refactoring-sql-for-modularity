{% test warn_invalid_phone_number(model, column_name) %}

{{
    config(
        severity = 'warn'
    )
}}

select 
  {{ column_name }}
from {{ model }}

where not regexp_like({{ column_name }},
'^\\d{2}-\\d{3}-\\d{4}$')

{% endtest%}
