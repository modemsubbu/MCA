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
&nbsp;&nbsp;&nbsp;&nbsp;<div class="stuts" align="center">

	<p align="center"><img src="images/bad-economy.png" height="150px" width="450px"/></p>
    <ul class="nav">
        <li><a href="viewacinfo.jsp">Account Information</a></li>
        <li><a href="#">Transfer Amount</a>
            <ul class="subs">
                <li><a href="tsb.jsp">A/C in SameBank</a></li>
                <li><a href="tob.jsp">A/C inOther bank</a></li>
            </ul>
        </li>
	<li><a href="#">Transaction Reports</a>
            <ul class="subs1">
                <li><a href="trreport.jsp">Accepted Transactions</a></li>
                <li><a href="rejtrans.jsp">Rejected Transactions</a></li>
				<li><a href="pendtrans.jsp">Pending Transactions</a></li>
            </ul>
        </li>
        <li><a href="login.jsp">Logout</a></li>
    </ul><br /><br /><br />
	<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div>
<%@ page import="java.sql.*"%>
<%
int i=0;
String cid= (String)session.getAttribute("cid");
  String bname=(String)session.getAttribute("bname");
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
   PreparedStatement st1=con.prepareStatement("select * from reject where cid=? and bname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs=st1.executeQuery();%><BR><BR><center><h2>Rejected Transactions<BR><BR>
<table align=center cellpadding="0" border=1 width="70%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b> A/C Number </td>
	
			<td align=center ><b>Account Type</td>
	<td align=center><b>Name of Bank</td>
				</tr><%
while(rs.next())
{
	i++;
	%>
	<td align=center><b><%=rs.getString(2)%> </td>
		<td align=center><b><%=rs.getString(3)%> </td>
		<td align=center><b><%=rs.getString(4)%> </td> 

<%
		}

  %>
  </table>
  <center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='userhome.jsp'">