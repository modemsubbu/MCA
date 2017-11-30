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
 <%@ page import="java.sql.*"%>
 <BR>
 <center>
 <h2><u><center><font size="+2" color="#DF4800">  New Bank Requests </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><font size="4" color="#DF4800">User Name</font></b></td>
<td><font size="4" color="#DF4800">Password</b></td>
<td><font size="4" color="#DF4800">Bank Name</b></td> 
 <td colspan="2"><font size="4" color="#DF4800">Operations</b></td> 


</tr><%    
int s=0;
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
	   PreparedStatement st=con.prepareStatement("select * from blogin where status=?");
	st.setInt(1,s);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="#DF4800"><%=rs.getString(2)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(3)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(4)%></font></td>
<td><a href="acceptbuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Accept</font></a></td>
<td><a href="deletebuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Decline</font></a></td>
</tr> 
<%}%>
<center></table><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 

