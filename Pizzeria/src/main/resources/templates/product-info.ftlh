<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria</h1><hr>
<h4>Подробная информация о товаре</h4>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена товара: </b>${product.price}<br>
<hr>
<h3>Добавить пиццу в меню</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>