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
        <link href="StyleSheets/mainstyles.css" rel="stylesheet" type="text/css">
        <!-- jQuery -->
        <script src="Scripts/jquery-1.10.2.min.js"></script>
        <!-- jQuery validation -->
        <script src="Scripts/jquery.validate.min.js"></script>
        <!-- phoneUS, minwords, and maxwords require the script below-->
        <script src="Scripts/additional-methods.min.js"></script> 
        <script src="Scripts/geometrycalc.js"></script>

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

            <%
                String result = (String) request.getAttribute("area");

                if (result != null) {

                    out.print("<br>The area is: " + result);
                }
            %>






        </form>
    </body>
</html>
