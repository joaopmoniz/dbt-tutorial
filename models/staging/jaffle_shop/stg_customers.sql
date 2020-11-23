with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from `kubeflow-jp.dbt_jp.jaffle_shop_customers`
)

select * from customers