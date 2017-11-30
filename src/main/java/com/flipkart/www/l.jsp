	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	 <link href="css/layout.css" rel="stylesheet" type="text/css" />
    	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">

<a href="http://www.script-tutorials.com/pure-css3-lavalamp-menu/" class="stuts"> <span></span></a>      </header>
&nbsp;&nbsp;&nbsp;&nbsp;<div class="stuts" align="center">

	<p align="center"><img src="images/bad-economy.png" height="150px" width="450px"/></p>
    <ul class="nav">
        <li><a href="pbreq.jsp">Bankers Requests</a></li>
        <li><a href="pureq.jsp">User Requests</a> </li>
        <li><a href="l.jsp"> View Customers</a>
        </li>
	<li><a href="admin.jsp">Logout</a></li>
    </ul><br /><br /><br /><br />
	<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div>
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
</HEAD>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<%@page import="java.sql.*"%>
		
<CENTER>
<h2><U>List of Customers</H2>
<table align=center cellpadding=0 border=3 width="60%">
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><b>Name </td>
		<td align=center><b>Password </td>
			<td align=center><b>Mobile</td>
				<td align=center><b>Email</td>
				</tr>
<%
int count=0;
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select cid,pwd,mobile,email from clogin");
while(rs.next())
{
	count++;
	%>
<tr>
	<td align=center><%=rs.getString(1)%> </td>
	<td align=center><%=rs.getString(2)%> </td>
	<td align=center><%=rs.getString(3)%> </td>
		<td align=center><%=rs.getString(4)%> </td>
			
	
<%
}
if(count==0)
response.sendRedirect("norec1.jsp");
%>
</table>
 <center><input type="button" value="     BACK    " onClick="window.location='adminhome.jsp'">  