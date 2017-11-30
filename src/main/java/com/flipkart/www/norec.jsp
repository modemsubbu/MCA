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

<html>
<head>
<script>
function call()
{
document.forms[0].action="listacc.jsp";
document.forms[0].submit();
}
</script>
		<BODY><center><BR> <BR><BR><h2><U>List of Accounts</u></H2><BR><BR> 
<% String st=(String)session.getAttribute("lat");%>
 

		<BR>
<CENTER>
<form >

<table align=center cellpadding=0 width="50%">
<colgroup   span=2 align=left >
<tr><td align=center>
	<b>SELECT ACCOUNTS  &nbsp;&nbsp;&nbsp; : </td><td><SELECT NAME="la" onChange="call()"> <option>Select a type</option>
	<option>Savings Account</option>
	<option>Current Account</option>
	<option>Others</option></SELECT></td></tr>

</table>
<br> </form><BR><BR><center><h3><li><font color="red">No Records Found</li></h3>
  <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  

</BODY>
</HTML>
