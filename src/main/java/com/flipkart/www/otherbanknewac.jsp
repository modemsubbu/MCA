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

<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
<TITLE></TITLE>
 
</HEAD>
<center>
 <script src="f2.js">

</script>
<body onLoad="firstfocus();">
 <form action="insotheraccount.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><b>Enter Account Details</font></h2><B></B></b><table align="center">
 <tr><td><h3>Select Bank</td><td><SELECT NAME="bname"> 
<%
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
	   PreparedStatement st=con.prepareStatement("select * from blogin where status=1");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(4)%></option>
				  
<%}%>
  </SELECT></td></tr><tr></tr><tr></tr><tr></tr>
<tr><td>
<h3><lable for="accno">Enter Account Number   </td></lable><td>   <input type="text" name="accno" onBlur="call()"/></td></tr><tr></tr><tr></tr>
<tr><td><h3><lable for="name">Enter Account Holder Name </td></lable><td> <input type="text" name="name" onBlur="call1()"></td></tr><tr></tr>
<tr><td>
<h3><lable for="cid"> Customer ID  </td></lable><td> <input type="text" name="cid" onBlur="call2()"/></td></tr><tr></tr><tr></tr>
<tr><td>

<h3><lable for="password">Password	 </td></lable><td> <input type="password" name="password" onBlur="call3()"></td></tr><tr></tr><tr></tr>
<tr><td><h3><lable for="password1">Confirm Password</td>  <td><input type="password" name="password1" onBlur="call4()"></td></tr><br><tr></tr><tr></tr>
<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr><td>
  <h3><lable for="tpassword">Enter Transaction Password	 </td></lable><td>      	     <input type="password" name="tpassword" onBlur="call5()"></td></tr><tr></tr><tr></tr>
<tr><td><h3><lable for="tpassword1">Confirm Password</td> </lable> <td><input type="password" name="tpassword1" onBlur="call6()" ></td></tr><br><tr></tr><tr></tr>

     </table>
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='user.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >

  </font></b> </form>
  </body>
  </center>
  </html>

