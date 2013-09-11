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
        <div>
            <form id="rectangle" name="rectangle" method="POST" action="Controller1?CalcType=rectangle">
                <h3>Calculate Area of a Rectangle</h3>

                <label for="length">Enter Length</label>
                <input type="text" name="length" id="length">

                <label for="width">Enter Width</label>
                <input type="text" name="width" id="width">

                <p><input type="submit" name="submit" id="submit" value="Submit"></p>
            </form>
        </div>
        <div>
            <form id="circle" name="circle" method="POST" action="Controller1?CalcType=circle">
                <h3>Calculate Area of a Circle</h3>

                <label for="length">Enter Radius</label>
                <input type="text" name="radius" id="radius">

                <p><input type="submit" name="submit" id="submit" value="Submit"></p>

            </form>
        </div>
        <div>
            <form id="triangle" name="triangle" method="POST" action="Controller1?CalcType=triangle">
                <h3>Calculate Hypotenuse of Right Triangle</h3>

                <label for="sideA">Enter Side A</label>
                <input type="text" name="sideA" id="sideA">

                <label for="sideB">Enter Side B</label>
                <input type="text" name="sideB" id="sideB">

                <p><input type="submit" name="submit" id="submit" value="Submit"></p>

            </form>
        </div>
    </body>
</html>

