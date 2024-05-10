<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1>-->
<#--<h4>Авторизация</h4>-->
<#--<form action="/login" method="post">-->
<#--    Эл. почта: <input type="email" name="username"><br><br>-->
<#--    Пароль: <input type="password" name="password"><br><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Вход"/>-->
<#--</form>-->
<#--<a href="/registration">Зарегистрироваться</a>-->
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
            max-width: 400px; /* Ширина контейнера */
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
        form {
            margin-bottom: 20px;
        }
        input[type="email"],
        input[type="password"],
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
        a {
            display: block; /* Блочный элемент */
            text-align: center; /* Выравнивание по центру */
            color: #FFA500; /* Цвет ссылки */
            text-decoration: none; /* Убираем подчеркивание */
        }
        a:hover {
            color: #FF8C00; /* Цвет ссылки при наведении */
        }
    </style>
</head>
<body>
<div class="container">
    <h1><a href="/">Jenkins Pizza</a></h1>
    <h4>Авторизация</h4>
    <form action="/login" method="post">
        <div class="form-group">
            <label for="username">Эл. почта:</label>
            <input type="email" id="username" name="username" class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Пароль:</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
        <button type="submit" class="btn btn-primary">Вход</button>
    </form>
    <a href="/registration">Зарегистрироваться</a>
</div>
</body>
</html>
