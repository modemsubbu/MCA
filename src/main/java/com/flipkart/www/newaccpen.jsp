		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	 <link href="css/layout.css" rel="stylesheet" type="text/css" />
    	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
</head>
<a href="http://www.script-tutorials.com/pure-css3-lavalamp-menu/" class="stuts"> <span></span></a>      </header>
<div class="stuts" align="center">

	<p align="center"><img src="images/bad-economy.png" height="150px" width="450px"/></p>
	<%
//String bid=request.getParameter("bid");
//String pwd=request.getParameter("pwd");
String bn=(String)session.getAttribute("bname");
//out.println(bn);
%>
    <ul class="nav" style="margin-left:150px">
        <li><a href="lcustomer.jsp?bname=<%=bn%>">List Of Customers</a></li>
        <li><a href="lacconts.jsp?bname=<%=bn%>">List of Accounts</a> </li>
        <li><a href="transpen.jsp?bname=<%=bn%>">Transfer Pendings</a> </li>
	<li><a href="transdec.jsp?bname=<%=bn%>">Transfer Declines</a>
        </li>
        <li><a href="newaccpen.jsp?bname=<%=bn%>">Accounts Pending</a></li>
		<li><a href="signout.jsp">Logout</a></li>
    </ul><br /><br />
	<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div><br>

<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY><center><BR><BR><BR><BR><h2><u>List Of Pending Accounts</u></h2><BR><BR><BR> 
 <table align=center cellpadding="0" border=1 width="60%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b>A/C Number </td>
		<td align=center><b> A/C Name </td>
			<td align=center ><b>Customer ID</td>
	<td align=center><b>Name of Bank</td> <td align=center><b>Amount</td>  <td align=center colspan=2><b>operation</td> 
				</tr>
<%
 
String bn1=request.getParameter("bname");
 String id="";
int in=0;
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where status=0");
while(rs.next())
{  id=rs.getString(1);
	 %>
<tr>
	<td align=center><%=rs.getString(4)%> </td>
	<td align=center><%=rs.getString(5)%> </td>
	 
		<td align=center><%=id%> </td>
				<td align=center><%=rs.getString(7)%> </td>
		<td align=center><%=rs.getFloat(8)%> </td>
		<td align=center><a href="comp.jsp?id=<%=id%>">Grant</a> </td> 
		<td align=center><a href="pending1.jsp?id=<%=id%>">Reject</a> </td> 
		</tr>
		<%
			in++;
}
if(in==0)
response.sendRedirect("norec2.jsp");
session.setAttribute("id",id);
%>
</table><BR><BR>
 <center><input type="button" value="     back     " onClick="window.location='bmain.jsp'">  
</BODY>
</HTML>
