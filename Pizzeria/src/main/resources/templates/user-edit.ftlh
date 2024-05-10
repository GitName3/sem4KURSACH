<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1>-->
<#--<h4>Редактирование пользователя ${user.name}</h4>-->
<#--<form action="/admin/user/edit" method="post">-->
<#--    <#list roles as role>-->
<#--        <div>-->
<#--            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>-->
<#--        </div>-->
<#--    </#list>-->
<#--    <input type="hidden" value="${user.id}" name="userId" >-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <button type="submit">Сохранить</button>-->
<#--</form>-->
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
        h4 {
            text-align: center; /* Выравнивание заголовка по центру */
            margin-bottom: 20px;
        }
        form {
            margin-bottom: 20px; /* Отступ снизу */
        }
        input[type="checkbox"] {
            margin-right: 5px; /* Отступ справа от чекбокса */
        }
        button[type="submit"] {
            background-color: #FFA500; /* Цвет фона кнопки */
            color: #FFF; /* Цвет текста кнопки */
            border: none; /* Убираем границу кнопки */
            padding: 10px 20px; /* Поля кнопки */
            border-radius: 5px; /* Закругление углов кнопки */
            cursor: pointer; /* Указатель при наведении на кнопку */
        }
        button[type="submit"]:hover {
            background-color: #FF8C00; /* Цвет фона кнопки при наведении */
        }
    </style>
</head>
<body>
<div class="container">
    <h1><a href="/">Jenkins Pizza</a></h1>
    <h4>Редактирование пользователя ${user.name}</h4>
    <form action="/admin/user/edit" method="post">
        <div class="form-group">
            <label>Роли:</label><br>
            <#list roles as role>
                <div>
                    <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                </div>
            </#list>
        </div>
        <input type="hidden" value="${user.id}" name="userId" >
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
        <button type="submit" class="btn btn-success">Сохранить</button>
    </form>
</div>
</body>
</html>
