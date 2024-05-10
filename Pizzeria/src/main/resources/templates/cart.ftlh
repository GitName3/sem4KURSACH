<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria </h1><hr>
<h4>Корзина</h4>
<#assign totalPrice = 0>
<#list carts as cart>
    <div>
        <p><b>${cart.product.title}</b> ${cart.product.price} руб ${cart.count}</p>
        <#assign totalPrice = totalPrice + (cart.product.price * cart.count)>
    </div>
<#else>
    <h3>Корзина пуста</h3>
</#list>
<p>Общая сумма: ${totalPrice} руб</p>
</body>
</html>