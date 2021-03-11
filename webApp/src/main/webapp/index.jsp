<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <form action="/index" method="get">
        <label>Your name : </label>
    <input type = "text" name = "name"/>
        <label>Your level : </label>
        <select name = "level">
            <option>1</option>
            <option>2</option>
            <option>3</option>
        </select>
        <button>Send Data</button>
    </form>

    <form action="/index" method="post">
        <label>Your favorite movie : </label>
        <input type = "text" name = "name"/>
        <label>Rating : </label>
            <input type = "number" name = "rating">
        <button>Send </button>
    </form>


</body>
</html>