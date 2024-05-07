with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,
        CONCAT(orders_id,"-", pdt_id) as sales_pk,
        revenue,
        quantity

    from source

)

select * from renamed
