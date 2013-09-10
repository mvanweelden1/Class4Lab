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
                String result = "";
                String prefix = "The area is: ";
                Object area = request.getAttribute("area");
                
                if(area != null){
                    result = area.toString();
                }



            %>

            <p><%= prefix + result%></p>
    </body>
</html>
