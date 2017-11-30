<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
 
        session.removeAttribute("name");
        session.removeAttribute("pwd");
        session.invalidate();
        %>
        <h1>Logout was done successfully.</h1>
         <a href="admin.jsp">Login</a>
    </body>
</html>
