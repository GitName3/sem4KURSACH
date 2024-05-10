<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria </h1><hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <a href="/login">Войти</a>
</#if>
<hr>
<h2><a href="/cart">Корзина</a></h2>
<h4>Меню пиццерии</h4>
<form action="/" method="get">
    Поиск пиццы: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб | <a href="/product/${product.id}">Подробнее...</a></p>
        <form action="/cart/add" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="hidden" name="productId" value="${product.id}">
            <input type="submit" value="Добавить в корзину"/>
        </form>
        <form action="/cart/delete" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="hidden" name="productId" value="${product.id}">
            <input type="submit" value="Убрать из корзины"/>
        </form>
    </div>
    <#else>
    <h3>Нет такой пиццы</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Добавить пиццу в меню</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название пиццы: <input type="text" name="title"/><br><br>
        Описание пиццы: <input type="text" name="description"/><br><br>
        Цена: <input type="number" name="price"/><br><br>
        Первая фотография: <input type="file" name="file1"/><br><br>
        Вторая фотография: <input type="file" name="file2"/><br><br>
        Третья фотография: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>