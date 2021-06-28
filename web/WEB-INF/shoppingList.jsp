<%-- 
    Document   : shoppingList
    Created on : 27-Jun-2021, 1:31:13 PM
    Author     : brixa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1> <br>
        <p>Hello, ${showUser}</p> <br>
        
        <h2>List</h2> <br>
        
        <form method="post">
            <label>Add item:</label>
            <input type="text" name="in_item" value=${item} >
            <input type="submit" name="button_add" value="Add"
            
        </form>
    </body>
</html>
