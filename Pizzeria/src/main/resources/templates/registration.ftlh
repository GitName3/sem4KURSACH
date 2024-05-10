<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1>-->
<#--<h4>Регистрация</h4>-->
<#--<form action="/registration" method="post">-->
<#--    Имя пользователя: <input type="text" name="name"><br><br>-->
<#--    Эл. почта: <input type="email" name="email"><br><br>-->
<#--    Номер телефона: <input type="text" name="phoneNumber"><br><br>-->
<#--    Пароль: <input type="password" name="password"><br><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Зарегистрироваться"/>-->
<#--</form>-->
<#--<#if errorMessage??>-->
<#--    <h2 style="color: red">${errorMessage}</h2>-->
<#--</#if>-->
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
        input[type="text"],
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
        h2 {
            color: red; /* Цвет текста ошибки */
            text-align: center; /* Выравнивание текста по центру */
        }
    </style>
</head>
<body>
<div class="container">
    <h1><a href="/">Jenkins Pizza</a></h1>
    <h4>Регистрация</h4>
    <form action="/registration" method="post">
        <div class="form-group">
            <label for="name">Имя пользователя:</label>
            <input type="text" id="name" name="name" class="form-control">
        </div>
        <div class="form-group">
            <label for="email">Эл. почта:</label>
            <input type="email" id="email" name="email" class="form-control">
        </div>
        <div class="form-group">
            <label for="phoneNumber">Номер телефона:</label>
            <input type="text" id="phoneNumber" name="phoneNumber" class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Пароль:</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
        <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
    </form>
    <#if errorMessage??>
        <h2>${errorMessage}</h2>
    </#if>
</div>
</body>
</html>
