with source_laptops as (
    select * from {{ source('ebay_laptops', 'laptops') }}
),

final as (
    select * from source_laptops
)

select * from final