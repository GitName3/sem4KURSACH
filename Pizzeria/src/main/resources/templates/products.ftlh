<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Pizzeria</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1><a href="/">Pizzeria</a></h1><hr>-->
<#--<#if user.email??>-->
<#--    <h3><a href="/user/${user.id}">Вы вошли в аккаунт пользователя: <i>${user.name}</i></a></h3>-->
<#--    <form action="/logout" method="post">-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <input type="submit" value="Выйти"/>-->
<#--    </form>-->
<#--    <#if user.isAdmin()>-->
<#--        <a href="/admin">Панель администратора</a>-->
<#--    </#if>-->
<#--<#else>-->
<#--    <h3><a href="/login">Войти</a></h3>-->
<#--</#if>-->
<#--<hr>-->
<#--<h3><a href="/cart">Корзина</a></h3>-->
<#--<h3>Меню пиццерии</h3>-->
<#--<form action="/" method="get">-->
<#--    <div>-->
<#--        <label for="searchWord">Поиск пиццы</label>-->
<#--        <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> id="searchWord">-->
<#--    </div>-->
<#--&lt;#&ndash;    Поиск пиццы: <input type="text" name="title"><br>&ndash;&gt;-->
<#--    <input type="submit" value="Поиск"/>-->
<#--</form>-->
<#--<#list products as product>-->
<#--    <div>-->
<#--        <img src="/images/${product.previewImageId}" height="60px">-->
<#--        <p><b>${product.title}</b> ${product.price} руб | <a href="/product/${product.id}">Подробнее...</a></p>-->
<#--        <form action="/cart/add" method="post">-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <input type="hidden" name="productId" value="${product.id}">-->
<#--            <input type="submit" value="Добавить в корзину"/>-->
<#--        </form>-->
<#--        <form action="/cart/delete" method="post">-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <input type="hidden" name="productId" value="${product.id}">-->
<#--            <input type="submit" value="Убрать из корзины"/>-->
<#--        </form>-->
<#--    </div>-->
<#--    <#else>-->
<#--    <h3>Нет такой пиццы</h3>-->
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
        .navbar-custom {
            background-color: #F5DEB3; /* Бежево-оранжевый цвет */
        }
        .navbar-custom .navbar-brand img {
            height: 30px; /* Высота иконки */
            margin-right: 5px; /* Отступ между иконкой и текстом */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
    <a class="navbar-brand" href="#"><img src="/static/images/jenkins.png" alt="Pizzeria Icon">Jenkins Pizza</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <#if user.email??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/${user.id}">Вы вошли в аккаунт пользователя: <i>${user.name}</i></a>
                </li>
                <li class="nav-item">
                    <form class="form-inline" action="/logout" method="post">
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
                        <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Выйти</button>
                    </form>
                </li>
                <#if user.isAdmin()>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin">Панель администратора</a>
                    </li>
                </#if>
            <#else>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Войти</a>
                </li>
            </#if>
            <li class="nav-item">
                <a class="nav-link" href="/cart">Корзина</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <h3>Меню пиццерии</h3>
    <form class="mb-4" action="/" method="get">
        <div class="form-group">
            <label for="searchWord">Поиск пиццы</label>
            <input type="text" class="form-control" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> id="searchWord">
        </div>
        <button type="submit" class="btn btn-primary">Поиск</button>
    </form>

    <#list products as product>
        <div class="row mb-4">
            <div class="col-md-3">
                <img src="/images/${product.previewImageId}" class="img-fluid" alt="${product.title}">
            </div>
            <div class="col-md-6">
                <h4>${product.title}</h4>
                <p>${product.price} руб | <a href="/product/${product.id}">Подробнее...</a></p>
            </div>
            <div class="col-md-3">
                <form action="/cart/add" method="post">
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
                    <input type="hidden" name="productId" value="${product.id}">
                    <button type="submit" class="btn btn-success">Добавить в корзину</button>
                </form>
                <form action="/cart/delete" method="post">
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
                    <input type="hidden" name="productId" value="${product.id}">
                    <button type="submit" class="btn btn-danger">Убрать из корзины</button>
                </form>
            </div>
        </div>
    </#list>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
