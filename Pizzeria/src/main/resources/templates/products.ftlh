<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria</h1><hr>
<h4>Меню пиццерии</h4>
<form action="/" method="get">
    Поиск пиццы: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Нет такой пиццы</h3>
</#list>
<hr>
<h3>Добавить пиццу в меню</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название пиццы: <input type="text" name="title"/><br><br>
    Описание пиццы: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Первая фотография: <input type="file" name="file1"/><br><br>
    Вторая фотография: <input type="file" name="file2"/><br><br>
    Третья фотография: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>