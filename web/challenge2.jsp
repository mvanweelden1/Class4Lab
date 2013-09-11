<%-- 
    Document   : challenge 2
    Created on : Sep 6, 2013, 7:13:46 PM
    Author     : Mark Van Weelden
--%>

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
            <form id="rectangle" name="rectangle" class="validate" method="POST" action="Controller2?CalcType=rectangle">
                <p>Calculate Area of a Rectangle</p>

                <label for="length">Enter Length</label>
                <input type="text" name="length" id="length">

                <label for="width">Enter Width</label>
                <input type="text" name="width" id="width">

                <p><input type="submit" name="submit" id="submit" value="Submit"></p>

                <%
                    String result = "";
                    String prefix = "";
                    Object answer = request.getAttribute("answer");

                    if (answer != null) {
                        result = answer.toString();
                        prefix = "The answer is: ";
                    }



                %>

                <p><%= prefix + result%></p>

            </form>
        </div>
        <div>
            <form id="circle" name="circle"  class="validate" method="POST" action="Controller2?CalcType=circle">
                <p>Calculate Area of a Circle</p>

                <label for="radius">Enter Radius</label>
                <input type="text" name="radius" id="radius">

                <p><input type="submit" name="submit" id="submit" value="Submit"></p>

                <%
                    String cResult = "";
                    String cPrefix = "";
                    Object cAnswer = request.getAttribute("cAnswer");

                    if (cAnswer != null) {
                        cResult = cAnswer.toString();
                        cPrefix = "The answer is: ";
                    }



                %>

                <p><%= cPrefix + cResult%></p>

            </form>
        </div>
        <div>
            <form id="triangle" name="triangle" class="validate" method="POST" action="Controller2?CalcType=triangle">
                <p>Calculate Hypotenuse of Right Triangle</p>

                <label for="sideA">Enter Side A</label>
                <input type="text" name="sideA" id="sideA">

                <label for="sideB">Enter Side B</label>
                <input type="text" name="sideB" id="sideB">

                <p><input type="submit" name="submit" id="submit" value="Submit"></p>

                <%
                    String tResult = "";
                    String tPrefix = "";
                    Object tAnswer = request.getAttribute("tAnswer");


                    if (tAnswer != null) {
                        tResult = tAnswer.toString();
                        tPrefix = "The answer is: ";
                    }


                %>

                <p><%= tPrefix + tResult%></p>

            </form>
        </div>
    </body>
    <!-- jQuery -->
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <!-- jQuery validation -->
    <script src="Scripts/jquery.validate.min.js"></script>
    <!-- phoneUS, minwords, and maxwords require the script below-->
    <script src="Scripts/additional-methods.min.js"></script> 
    <script src="Scripts/geometrycalc.js"></script>
</html>
