<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1><hr>-->
<#--<h4>Корзина</h4>-->
<#--<#assign totalPrice = 0>-->
<#--<#list carts as cart>-->
<#--    <div>-->
<#--        <p><b>${cart.product.title}</b> ${cart.product.price} руб ${cart.count}</p>-->
<#--        <#assign totalPrice = totalPrice + (cart.product.price * cart.count)>-->
<#--    </div>-->
<#--<#else>-->
<#--    <h3>Нет такой пиццы</h3>-->
<#--</#list>-->
<#--<p>Общая сумма: ${totalPrice} руб</p>-->

<#--<!-- Дополнительная строка &ndash;&gt;-->
<#--<#assign items = ["Общая сумма: ${totalPrice} руб"]>-->
<#--<#list carts as cart>-->
<#--    <#assign items = items + ["${cart.count} ${cart.product.title}"]>-->
<#--</#list>-->
<#--${items?join(", ")}-->
<#--<#assign itemsAsString = items?join(", ")>-->
<#--<form action="/cart/makeOrder" method="post">-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="hidden" name="items" value="${itemsAsString}">-->
<#--    <input type="submit" value="Оформить заказ"/>-->
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
        .cart-item {
            border: 1px solid #ccc; /* Граница блока товара */
            padding: 10px; /* Поля блока товара */
            margin-bottom: 10px; /* Отступ снизу */
        }
        .total-price {
            font-weight: bold; /* Жирный шрифт для общей цены */
        }
        form {
            margin-top: 20px; /* Отступ сверху для формы */
            text-align: center; /* Выравнивание кнопки по центру */
        }
        input[type="submit"] {
            background-color: #FFA500; /* Цвет фона кнопки */
            color: #FFF; /* Цвет текста кнопки */
            border: none; /* Убираем границу кнопки */
            padding: 10px 20px; /* Поля кнопки */
            border-radius: 5px; /* Закругление углов кнопки */
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
    <h4>Корзина</h4>
    <div class="cart-items">
        <#assign totalPrice = 0>
        <#list carts as cart>
            <div class="cart-item">
                <p><b>${cart.product.title}</b> ${cart.product.price} руб ${cart.count}</p>
                <#assign totalPrice = totalPrice + (cart.product.price * cart.count)>
            </div>
        </#list>
    </div>
    <p class="total-price">Общая сумма: ${totalPrice} руб</p>

    <#assign items = ["Общая сумма: ${totalPrice} руб"]>
    <#list carts as cart>
        <#assign items = items + ["${cart.count} ${cart.product.title}"]>
    </#list>
    ${items?join(", ")}
    <#assign itemsAsString = items?join(", ")>

    <!-- Форма оформления заказа -->
    <form action="/cart/makeOrder" method="post">
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
        <input type="hidden" name="items" value="${itemsAsString}">
        <input type="submit" value="Оформить заказ">
    </form>
</div>
</body>
</html>
