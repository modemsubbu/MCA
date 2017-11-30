	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	 <link href="css/layout.css" rel="stylesheet" type="text/css" />
    	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
</head>
<a href="http://www.script-tutorials.com/pure-css3-lavalamp-menu/" class="stuts"> <span></span></a>      </header>
&nbsp;&nbsp;&nbsp;&nbsp;<div class="stuts" align="center">

	<p align="center"><img src="images/bad-economy.png" height="150px" width="450px"/></p>
    <ul class="nav">
        <li><a href="home.jsp">HOME</a></li>
        <li><a href="admin.jsp">ADMIN</a> </li>
        <li><a href="#">CUSTOMER</a>
            <ul class="subs">
                <li><a href="newcustomer.jsp">New Customer</a></li>
                <li><a href="login.jsp">Signin</a></li>
            </ul>
        </li>
	<li><a href="#">BANKADMIN</a>
            <ul class="subs">
                <li><a href="newbankuser.jsp">AddBank</a></li>
                <li><a href="blogin.jsp">Signin</a></li>
            </ul>
        </li>
        <li><a href="cu.jsp">Contact us</a></li>
    </ul><br /><br />
	<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div>
<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.bid.value==""){
alert("Please Enter Ur Name");
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
if((document.f.bid.value=="")||(document.f.pwd.value==""))
	{
alert("Please Enter Username& password");
return false;
}
}
</script>
<BODY >
<br> 
<center>
<font color="#FF5C0F" align="left"><h2><b>Bank Admin Login Form</b></h2></font>
<h3><font color="red">Invalid username and password</font><h3>
<form  method=post action="bloginch.jsp" name="f" onSubmit='return call()'>
<fieldset color="black" align="left">
<legend><font size="5" color="Green">Multibanking System</font></legend>
<center>
 <table width="40%" cellpadding="5" cellspacing="5">
 <colgroup span=2 >
 <tr>
 <td><b>Bank ID:</b></td><td><input type="text" name="bid" ></td>
</tr>
 
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr><tr> 
<td><b> Select Bank:</b></td><td><SELECT NAME="bl">
<%
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from  blogin where status=1");
while(rs.next())
{
	%>
<option><%=rs.getString(4)%></option>
<%
}
	%>
 </SELECT></td>
</tr>
</table>
<br> <center>
 <input type="submit" value="   Login   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="   reset   ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'">
 <center><h2><b><a href="newbankuser.jsp">signup</a></b></h2></center>    
</center> 
</form>

 

</center>

</BODY>
</HTML>
