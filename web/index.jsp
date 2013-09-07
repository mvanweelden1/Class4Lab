<%-- 
    Document   : index
    Created on : Sep 6, 2013, 7:13:46 PM
    Author     : Mark Van Weelden
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geometry Calculator</title>
    </head>
    <body>
        <h1>Geometry Calculator</h1>

        <form id="rectangle" method="POST" action="GeometryCalculatorController">
            <p>Calculate Area of a Rectangle</p>

            <label for="length">Enter Length</label>
            <input type="text" name="length" id="length">

            <label for="width">Enter Width</label>
            <input type="text" name="width" id="width">

            <input type="submit" name="submit" id="submit" value="Submit">

          




        </form>
    </body>
</html>
