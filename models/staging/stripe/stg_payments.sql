WITH payments as (

	select
		id as payment_id,
		orderid as order_id,
		paymentmethod as payment_method,
		status,
		amount,
		created as created_date

	from `kubeflow-jp.dbt_jp.stripe_payments`
)

select * from payments