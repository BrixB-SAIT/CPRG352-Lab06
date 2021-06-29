<%-- 
    Document   : register
    Created on : 27-Jun-2021, 1:30:53 PM
    Author     : brixa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <h2>Register</h2>
        
        <form method="post" action="ShoppingList">
            <label>Username: </label>
            <input type="text" name="in_user" value=${username}>
            <input type="submit" name="button_register" value="Register">
            <input type="hidden" name="userAction" value="Register">
        </form>
    </body>
</html>

