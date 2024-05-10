<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1><hr>-->
<#--<h4>Панель администратора</h4>-->
<#--<table>-->
<#--&lt;#&ndash;    border=1&ndash;&gt;-->
<#--    <tr>-->
<#--        <th>Email</th>-->
<#--        <th>Номер телефона</th>-->
<#--        <th>Роли</th>-->
<#--        <th>Активность</th>-->
<#--        <th>Бан</th>-->
<#--        <th>Редактирование</th>-->
<#--        <th>Подробная информация</th>-->
<#--    </tr>-->
<#--    <#list users as user>-->
<#--        <tr>-->
<#--            <th>${user.email}</th>-->
<#--            <th>${user.phoneNumber}</th>-->
<#--            <th><#if user.active>true<#else> false</#if></th>-->
<#--            <th><#list user.roles as role>${role} <#sep>, </#list></th>-->
<#--            <th><form action="/admin/user/ban/${user.id}" method="post">-->
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                    <input type="submit" value="Бан"/>-->
<#--                </form> </th>-->
<#--            <th><a href="/admin/user/edit/${user.id}">Редактирование</a></th>-->
<#--            <th><a href="/user/${user.id}"> Подробная информация</a></th>-->
<#--        </tr>-->
<#--        <#else>-->
<#--        <h3>Пользователей нет</h3>-->
<#--    </#list>-->
<#--</table>-->
<#--    <hr>-->
<#--    <h3>Добавить пиццу в меню</h3>-->
<#--    <form action="/product/create" method="post" enctype="multipart/form-data">-->
<#--        Название пиццы: <input type="text" name="title"/><br><br>-->
<#--        Описание пиццы: <input type="text" name="description"/><br><br>-->
<#--        Цена: <input type="number" name="price"/><br><br>-->
<#--        Первая фотография: <input type="file" name="file1"/><br><br>-->
<#--        Вторая фотография: <input type="file" name="file2"/><br><br>-->
<#--        Третья фотография: <input type="file" name="file3"/><br><br>-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <input type="submit" value="Добавить товар"/>-->
<#--    </form>-->
<#--</body>-->
<#--</html>-->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pizzeria</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #F5DEB3; /* Цвет фона */
            font-family: Arial, sans-serif; /* Шрифт */
            padding: 20px;
        }
        .container {
            max-width: 800px; /* Ширина контейнера */
            margin: 0 auto; /* Центрирование контейнера */
            background-color: #FFF; /* Цвет фона контейнера */
            padding: 20px;
            border-radius: 10px; /* Закругление углов контейнера */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Тень контейнера */
        }
        h1 {
            text-align: center; /* Выравнивание заголовка по центру */
            margin-bottom: 30px;
        }
        h4 {
            text-align: center; /* Выравнивание заголовка по центру */
            margin-bottom: 20px;
        }
        .table-container {
            overflow-x: auto; /* Включаем горизонтальную прокрутку */
        }
        table {
            width: 100%; /* Ширина таблицы */
            border-collapse: collapse; /* Схлопывание границ таблицы */
            margin-bottom: 20px; /* Отступ снизу */
        }
        th, td {
            border: 1px solid #ddd; /* Граница ячеек таблицы */
            padding: 8px; /* Внутренний отступ ячеек */
            text-align: left; /* Выравнивание текста в ячейках */
        }
        th {
            background-color: #FFA500; /* Цвет фона заголовков */
            color: white; /* Цвет текста заголовков */
        }
        form {
            margin-bottom: 20px; /* Отступ снизу */
        }
        input[type="text"],
        input[type="number"],
        input[type="file"],
        input[type="submit"] {
            width: 100%; /* Ширина инпутов по всей ширине контейнера */
            padding: 10px; /* Поля вокруг инпутов */
            margin-bottom: 10px; /* Отступ между инпутами */
            border: 1px solid #ccc; /* Граница инпутов */
            border-radius: 5px; /* Закругление углов инпутов */
            box-sizing: border-box; /* Учитываем границы и поля в общую ширину */
        }
        input[type="submit"] {
            background-color: #FFA500; /* Цвет фона кнопки */
            color: #FFF; /* Цвет текста кнопки */
            border: none; /* Убираем границу кнопки */
            cursor: pointer; /* Указатель при наведении на кнопку */
        }
        input[type="submit"]:hover {
            background-color: #FF8C00; /* Цвет фона кнопки при наведении */
        }
    </style>
</head>
<body>
<div class="container">
    <h1><a href="/">Jenkins Pizza</a></h1>
    <hr>
    <h4>Панель администратора</h4>
    <div class="table-container">
        <table>
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
                    <td>${user.email}</td>
                    <td>${user.phoneNumber}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><#if user.active>true<#else> false</#if></td>
                    <td>
                        <form action="/admin/user/ban/${user.id}" method="post">
<#--                            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
                            <input type="submit" value="Бан" class="btn btn-danger">
                        </form>
                    </td>
                    <td><a href="/admin/user/edit/${user.id}" class="btn btn-primary">Редактирование</a></td>
                    <td><a href="/user/${user.id}" class="btn btn-info">Подробная информация</a></td>
                </tr>
            </#list>
        </table>
    </div>
    <hr>
    <h4>Добавить пиццу в меню</h4>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">Название пиццы:</label>
            <input type="text" id="title" name="title" class="form-control">
        </div>
        <div class="form-group">
            <label for="description">Описание пиццы:</label>
            <input type="text" id="description" name="description" class="form-control">
        </div>
        <div class="form-group">
            <label for="price">Цена:</label>
            <input type="number" id="price" name="price" class="form-control">
        </div>
        <div class="form-group">
            <label for="file1">Первая фотография:</label>
            <input type="file" id="file1" name="file1" class="form-control-file">
        </div>
        <div class="form-group">
            <label for="file2">Вторая фотография:</label>
            <input type="file" id="file2" name="file2" class="form-control-file">
        </div>
        <div class="form-group">
            <label for="file3">Третья фотография:</label>
            <input type="file" id="file3" name="file3" class="form-control-file">
        </div>
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
        <button type="submit" class="btn btn-success">Добавить товар</button>
    </form>
</div>
</body>
</html>
