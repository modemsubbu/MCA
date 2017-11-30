	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	 <link href="css/layout.css" rel="stylesheet" type="text/css" />
    	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
</HEAD>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
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

<%@page import="java.sql.*"%>
		<BODY>
		<form><BR>
<CENTER>
<h2><U>List of Transfer Pendings</H2><BR>
<table align=center cellpadding="0" border=1 width="70%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b>Source A/C No</td>
		
			<td align=center ><b>Transfer To Bank</td>
	<td align=center><b>Name of Bank</td><td align=center><b>Destination A/C No</td><td align=center><b>Amount</td><td align=center><b>Balance</td><td align=center ><b>Transaction Password<td align=center colspan=2><b>Transfer</td>
				</tr>
<%
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
int id=0;
 String atype="";
String bname=(String)session.getAttribute("bname");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
 PreparedStatement st=con.prepareStatement("select * from transfer where sbank='"+bname+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	id=rs.getInt(1);
	//out.println(id);
	String id1=String.valueOf(id);
	//out.println(id1);
	  sacno=rs.getString(2);
	  atype=rs.getString(5);
	    tpwd=rs.getString(7);
	   PreparedStatement st1=con.prepareStatement("select * from customer where bname=? and accno=? and atype=?");
	   st1.setString(1,bname);
	   st1.setString(2,sacno);
	   st1.setString(3,atype);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(4);
	bal=rs1.getFloat(8);
}

	%>

<tr>
	<td align=center><%=sacno%> </td>
	
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><b>Same</td>
		<td align=center ><%=bname%> </td>
		<%}else
		{
		%>
<td align=center><b>Other</td>
		<td align=center disabled><%=dbn%>  </td>
		<%
		}
		%>
		<td align=center><%=rs.getString(3)%> </td>
		<td align=center><%=rs.getFloat(4)%> </td> 
			<td align=center><%=bal%></td> 
			<td align=center><%=tpwd%></td> 
			<%
			boolean check=false;
			if(rtpwd.equals(tpwd))
				check=true;

			else
				check=false;
			%>

			<td align=center><a href="acc.jsp?ch=<%=check%>&id=<%=id1%>">Accept</a> </td>
				<td align=center><a href="rej.jsp?id=<%=id1%>">Reject</a> </td></tr>
	<%
	 
}
%>
</table></form>
<br> <BR><BR>
 <center><input type="button" value="     back     " onClick="window.location='bmain.jsp'">  