{{config(materialized='view')}}

with customers as (
    select * from {{ ref('stg_customers')}}
),

orders as (
    select * from {{ ref('stg_orders')}}
),

final as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        count(o.order_id) as total_orders
    from customers c
    left join orders o on c.customer_id = o.customer_id
    group by c.customer_id, c.first_name, c.last_name
)

select * from final