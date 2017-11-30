<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
 
        session.removeAttribute("cid");
        session.removeAttribute("pwd");
        session.invalidate();
        %>
        <h1>Logout was done successfully.</h1>
				<center>
					<h1><a href="login.jsp"><img  src="index.jpg" height="50" width="50" ></img></a></h1>
				</center>
    </body>
</html>
