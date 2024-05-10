<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria</h1>
<h3>Информация о пользователе</h3>
<b>Имя: </b> ${user.name}<br>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<h4>Добавленное меню пользователя ${user.name}:</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Ничего не добавил</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
<#list orders as order>
    <p>${order.items}</p>
</#list>
</body>
</html>