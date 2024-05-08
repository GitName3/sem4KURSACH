<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria </h1><hr>
<h4>Панель администратора</h4>
<table>
<#--    border=1-->
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Роли</th>
        <th>Активность</th>
        <th>Бан</th>
        <th>Редактирование</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else> false</#if></th>
            <th><#list user.roles as role>${role} <#sep>, </#list></th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан"/>
                </form> </th>
            <th><a href="/admin/user/edit/${user.id}">Редактирование</a></th>
            <th><a href="/user/${user.id}"> Подробная информация</a></th>
        </tr>
        <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>
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
</body>
</html>