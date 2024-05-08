<!DOCTYPE html>
<html>
<head>
    <title>Pizzeria</title>
</head>
<body>
<h1>Pizzeria</h1>
<h4>Редактирование пользователя ${user.name}</h4>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId" >
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Сохранить</button>
</form>
</body>
</html>