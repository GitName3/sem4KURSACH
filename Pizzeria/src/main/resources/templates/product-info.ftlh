<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1><hr>-->
<#--<h4>Подробная информация о товаре</h4>-->
<#--<#list images as image>-->
<#--    <img src="/images/${image.id}" height="60px"/><br><br>-->
<#--</#list>-->
<#--<b>Название товара: </b>${product.title}<br>-->
<#--<b>Описание товара: </b>${product.description}<br>-->
<#--<b>Цена товара: </b>${product.price}<br>-->
<#--&lt;#&ndash;<b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>&ndash;&gt;-->
<#--&lt;#&ndash;<hr>&ndash;&gt;-->
<#--<#if user.isAdmin()>-->
<#--    <form action="/product/delete/${product.id}" method="post">-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <input type="submit" value="Удалить товар"/>-->
<#--    </form>-->
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
        img {
            display: block; /* Блочный элемент */
            margin: 0 auto; /* Центрирование изображений */
            margin-bottom: 20px; /* Отступ снизу */
        }
        b {
            display: block; /* Блочный элемент */
            margin-bottom: 10px; /* Отступ снизу */
        }
        form {
            text-align: center; /* Выравнивание формы по центру */
        }
    </style>
</head>
<body>
<div class="container">
    <h1><a href="/">Jenkins Pizza</a></h1>
    <hr>
    <h4>Подробная информация о товаре</h4>
    <#list images as image>
        <img src="/images/${image.id}" height="150px"/>
    </#list>
    <b>Название товара:</b> ${product.title}<br>
    <b>Описание товара:</b> ${product.description}<br>
    <b>Цена товара:</b> ${product.price} руб<br>

    <#if user.isAdmin()>
        <form action="/product/delete/${product.id}" method="post">
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
            <button type="submit" class="btn btn-danger">Удалить товар</button>
        </form>
    </#if>
</div>
</body>
</html>
