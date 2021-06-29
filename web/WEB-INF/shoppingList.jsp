<%-- 
    Document   : shoppingList
    Created on : 27-Jun-2021, 1:31:13 PM
    Author     : brixa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1> <br>
        <p>Hello, ${showUser}</p><br>
        <a href="ShoppingList?logout">Logout</a>

        <h2>List</h2> <br>

        <form method="post" action="ShoppingList">
            <label>Add item:</label>
            <input type="text" name="in_item" value=${item} >
            <input type="submit" name="userAction" value="Add"

        </form>
        <c:if test="${!list.isEmpty()}">
            <c:forEach items="${shoppingList}" var="items">
                <input type="radio" name="boxes" value="${items}"> 
                <label for="${items}">${items}</label>
                <br>
            </c:forEach>


        </c:if>

        <br>
        <input type="hidden" name="userAction" value="delete">
        <input type="submit" value="Delete">
    </body>
</html>
