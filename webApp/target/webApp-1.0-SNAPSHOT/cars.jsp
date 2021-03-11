<%@ page import="com.example.webApp.entity.Car" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: АбдулК
  Date: 11.03.2021
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>


        <form action="/index" method="post">
            <div class="mb-3">
                <label class="form-label">Cars model</label>
                <input type="text" class="form-control" name="model">
            </div>
            <div class="mb-3">
                <label  class="form-label">Engine Volume</label>
                <input type="number" class="form-control" name = "volume">
            </div>
            <div class="mb-3">
                <label  class="form-label">Price</label>
                <input type="number" class="form-control" name = "price">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>



<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Model</th>
        <th scope="col">Engine Volume</th>
        <th scope="col">price</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Car> cars = (List<Car>) request.getAttribute("mashina");
        for (Car car : cars) {


    %>
    <tr>
        <td>
            <%
                out.println(car.getId() + "");
            %>
        </td>
        <td>
            <%
                out.println(car.getModel() + "");
            %>
        </td>
        <td>
            <%
                out.println(car.getEngineVolume() + "");
            %>
        </td>
        <td>
            <%
                out.println(car.getPrice() + "");
            %>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</html>
