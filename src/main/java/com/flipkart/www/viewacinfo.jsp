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
        <li><a href="viewaccinfo.jsp">Account Information</a></li>
        <li><a href="#">Transfer Amount</a>
            <ul class="subs">
                <li><a href="tsb.jsp">A/C in SameBank</a></li>
                <li><a href="tob.jsp">A/C inOther bank</a></li>
            </ul>
        </li>
	<li><a href="#">Transaction Reports</a>
            <ul class="subs">
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

<%@ page import="java.sql.*" %>
<%String bname=(String)session.getAttribute("bname");


String cid=(String)session.getAttribute("cid");
String pwd=(String)session.getAttribute("pwd");
 	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
	    System.out.println(cid);
%><center><h2><u>Account Information</u><BR><BR>
<table border="2" align="center" width="75%"><tr><td align="center"><h3>Customer Id</td><td align="center"><h3>Account Number</td><td align="center"><h3>Account Type</td><td align="center"><h3>Balance</td><td align="center"><h3>Status</td></tr>
<%
  PreparedStatement st=con.prepareStatement("select * from customer where bname=? and id=?");
	st.setString(1,bname);
	st.setString(2,cid);
	ResultSet rs=st.executeQuery();
	while(rs.next()){
	%><tr><td align="center"><%=rs.getString(2)%></td>
		<td align="center"><%=rs.getString(4)%></td>
		<td align="center"><%=rs.getString(5)%></td>
		<td align="center"><%=rs.getString(8)%></td>
		<%int sta=rs.getInt(10);
		if(sta==1){%><td align="center">Created</td>
			<%}else{%><td align="center">in process</td><%}%>
		</tr>
<%}%></center></table><center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='userhome.jsp'">


</center>



