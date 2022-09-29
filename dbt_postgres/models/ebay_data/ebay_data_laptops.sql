with source_laptops as (
    select * from {{ source('ebay_laptops', 'laptops') }}
),

final as (
    select laptop_state, MAX(drive_price) from source_laptops group by laptop_state
)

select * from final