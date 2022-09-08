with source as (

    select * from {{ source('tpch', 'supplier') }}

),

renamed as (

    select

        -- ids
        s_suppkey as supplier_id,
        s_nationkey as nation_id,

        -- descriptions
        s_name as supplier_name,
        s_address as supplier_address,
        s_phone as phone_number


    from source

)

select * from renamed