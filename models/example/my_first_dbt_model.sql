{{

    config(

        materialized='incremental',

        unique_key='product_id',

        schema = 'dwh'

    )

}}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
