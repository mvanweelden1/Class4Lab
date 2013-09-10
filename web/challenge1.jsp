<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="StyleSheets/mainstyles.css" rel="stylesheet" type="text/css">

        <title>Geometry Calculator</title>
    </head>
    <body>
        <h1>Geometry Calculator</h1>

        <form id="rectangle" name="rectangle" method="POST" action="GeometryCalculatorController">
            <p>Calculate Area of a Rectangle</p>

            <label for="length">Enter Length</label>
            <input type="text" name="length" id="length">

            <label for="width">Enter Width</label>
            <input type="text" name="width" id="width">

            <p><input type="submit" name="submit" id="submit" value="Submit"></p>

          




        </form>
    </body>
</html>

