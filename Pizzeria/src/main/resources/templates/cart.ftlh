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
    <h3>Нет такой пиццы</h3>
</#list>
<p>Общая сумма: ${totalPrice} руб</p>

<!-- Дополнительная строка -->
<#assign items = ["Общая сумма: ${totalPrice} руб"]>
<#list carts as cart>
    <#assign items = items + ["${cart.count} ${cart.product.title}"]>
</#list>
${items?join(", ")}
<#assign itemsAsString = items?join(", ")>
<form action="/cart/makeOrder" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="hidden" name="items" value="${itemsAsString}">
    <input type="submit" value="Оформить заказ"/>
</form>
</body>
</html>
