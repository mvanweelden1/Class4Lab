<%-- 
    Document   : results
    Created on : Sep 7, 2013, 1:26:58 PM
    Author     : Mark Van Weelden
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <%
            String result = (String)request.getAttribute("area");

            out.print("The area is: " + result);

        %>
    </body>
</html>
