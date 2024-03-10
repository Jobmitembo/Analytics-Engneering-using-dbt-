{% test is_in_example_teams(model, column_name) %}

with validation as (

    select
        {{ column_name }} as team

    from {{ model }}

),

validation_errors as (

    select
        team

    from validation
   
    where team not in ('Lakers', 'Clippers','76ers','Heat')

)

select *
from validation_errors

{% endtest %}