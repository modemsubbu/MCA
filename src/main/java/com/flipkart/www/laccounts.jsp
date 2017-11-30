<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
	 <title>MULTI BANKING SYSTEM</title>
	
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
		
<marquee bgcolor="skyblue" width="100%"  height="50%" behavior="alternate"> <h1><font color=rose face="Lucida Calligraphy"><b>MULTI BANKING SYSTEM</b></h1></CENTER></marquee>
	


        <a href="http://www.script-tutorials.com/pure-css3-lavalamp-menu/" class="stuts"> <span></span></a>      </header>
       <div class="container">
		
            <ul id="nav">
                <li><a href="home.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp <b>HOME</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
		
                <li><a href="admin.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <b>ADMIN</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
          
		
         
       
                </li>
                <li><a class="hsubs" href="#">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>CUSTOMER</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
				<ul class="subs">
                        <li><a href="newcustomer.jsp"></b>Newuser</b></a></li>
                        <li><a href="login.jsp"><b>Signin</b></a></li>
                        
                    </ul>
                   
                </li>
                <li><a class="hsubs" href="#">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>BANK ADMIN</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
					<ul class="subs">
                        <li><a href="newbankuser.jsp"><b>Add Bank</b></a></li>
                        <li><a href="blogin.jsp"><b>Signin</b></a></li>
                        
                    </ul>
		</li>
		</li>
		<li><a href="cu.jsp"> <b>CONTACT US</b></a></li>
                    
                <div id="lavalamp"></div>
            </ul>
<br>
<br>


<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body background="images\001.jpg" width="778" height="1280" />

<div id="cc" style="float:left;">
<marquee direction="up">
	<img src="images\i.png"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\andb.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\icici.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\i.png"  width="100" height="50" alt="" ></img>
</marquee></div>
<div id="cc" style="float:right;">
<marquee direction="down">
	<img src="images\i.png"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\andb.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\icici.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\i.png"  width="100" height="50" alt="" ></img>
</marquee></div>

<%@page import="java.sql.*"%>
		<BODY><BR>
<CENTER>
<h2><U>List of Accounts</H2><BR>
<table align=center cellpadding=0 >
<colgroup span=4 align=center width="20%">
<tr>
	<td align=center><b>A/C Number </td>
		<td align=center><b>A/C Name </td>
			<td align=center><b>Balance</td>
				<td align=center><b>A/C Type</td>
				</tr>
<%
String bname=(String)session.getAttribute("bname");
System.out.println("bank name  "+bname);
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"' and status=1");
while(rs.next())
{   
	%>

<tr>
	<td align=center><%=rs.getString(4)%> </td>
		<td align=center><%=rs.getString(6)%> </td>
		<td align=center><%=rs.getFloat(8)%> </td>
		<td align=center><%=rs.getString(5)%> </td></tr>
	<%
}
%>
</table>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  