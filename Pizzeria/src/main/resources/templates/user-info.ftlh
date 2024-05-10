<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1>-->
<#--<h3>Информация о пользователе</h3>-->
<#--<b>Имя: </b> ${user.name}<br>-->
<#--<b>Номер телефона: </b> ${user.phoneNumber}<br>-->
<#--<#if user.isAdmin()>-->
<#--    <a href="/admin">Панель администратора</a>-->
<#--</#if>-->
<#--<h3>Заказы пользователя</h3>-->
<#--<#list orders as order>-->
<#--    <p>${order.items}</p>-->
<#--</#list>-->
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
            max-width: 600px; /* Ширина контейнера */
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
        h3 {
            text-align: center; /* Выравнивание заголовка по центру */
            margin-bottom: 20px;
        }
        b {
            display: block; /* Блочный элемент */
            margin-bottom: 10px; /* Отступ снизу */
        }
        a {
            display: block; /* Блочный элемент */
            text-align: center; /* Выравнивание ссылки по центру */
            margin-top: 20px; /* Отступ сверху */
            color: #FFA500; /* Цвет ссылки */
            text-decoration: none; /* Убираем подчеркивание */
        }
        a:hover {
            color: #FF8C00; /* Цвет ссылки при наведении */
        }
        p {
            margin-bottom: 10px; /* Отступ снизу */
        }
    </style>
</head>
<body>
<div class="container">
    <h1><a href="/">Jenkins Pizza</a></h1>
    <h3>Информация о пользователе</h3>
    <b>Имя:</b> ${user.name}<br>
    <b>Номер телефона:</b> ${user.phoneNumber}<br>



    <h3>Заказы пользователя</h3>
    <#list orders as order>
        <p>${order.items}</p>
    </#list>
</div>
</body>
</html>
