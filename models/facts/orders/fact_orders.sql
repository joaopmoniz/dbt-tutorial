with orders as (

	select distinct
		order_id,
		customer_id

	from (( ref('stg_orders') ))
),

payments as (

	select
		order_id,
		sum(amount) as amount

	from (( ref ('stg_payments') ))

	where status like ('success')

	group by 1
),

final as (

	select
		orders.order_id,
		orders.customer_id,
		coalesce(payments.amount, 0) as lifetime_value

	from orders

	left join payments using (order_id)
)

select * from final