<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria</h1><hr>
<h4>Подробная информация о товаре</h4>
<#list images as image>
    <img src="/images/${image.id}" height="60px"/><br><br>
</#list>

<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена товара: </b>${product.price}<br>
<b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<#--<hr>-->
<#--<form action="/product/delete/${product.id}" method="post">-->
<#--    <input type="submit" value="Удалить товар"/>-->
<#--</form>-->
</body>
</html>