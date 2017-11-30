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
    </ul><br /><br /><br /><br />
	<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div>

<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script type="text/javascript" src="f1.js">
function f()
{
var myDate=new Date(document.form.t4.value);
var today=new Date();
{
if(myDate>=today)
{
	alert("Please enter valid date of birth");
	return false;
	}
}
}
</script>
<body bgcolor="skyblue" onLoad="firstfocus();">
<form name="form"  method=post action="customerprocess.jsp" onSubmit='return f()'>
<table align="center" width="40%" border="5">
<tr>
<td colspan="2" align="center"><b>Customer Registration Form</b>
</td>
</tr>

<tr>
<td align="left" valign="top" width="41%"><lable for="id">Customer Name
<font color="#FF0000"red>*</font></lable>
</td>
<td width="57%"><input type="text" value="" name="id" size="24" onBlur="call()"/><span id="id"></span>
</td>
</tr>

<tr>
<td align="left" valign="top" width="41%"><lable for="pwd">Password
<span style="color:red">*</span></lable>
</td>
<td width="57%"><input type="password"  name="pwd" size="24" onBlur="call1()"/>
</td>
</tr>

<tr>
<td align="left" valign="top" width="41%"><lable for="pwd1">Confirm Password
<span style="color:red">*</span></lable>
</td>
<td width="57%"><input type="password"  name="pwd1" size="24" onBlur="call2()"/>
</td>
</tr>
<tr ><td align="left" valign="top" width="41%">Date Of Birth</td>
<td><input type="date" name="t4"></td>
<tr>
<td align="left" valign="top" width="41%"><lable for="t5">Mobile Number
<span style="color:red">*</span></lable>
</td>
<td width="57%"><input type="text" value="" name="t5" maxlength="10" onBlur="call3()"/ >
</td>
</tr>

<tr>
<td align="left" valign="top" width="41%">Address
</td>
<td width="57%"><textarea rows="4" maxlength="200" name="t7" rows="52" cols="20"  onBlur="call5()"></textarea>
</td>
</tr>

<tr>
<td align="left" valign="top" width="41%">Gender
</td>
<td width="51%">
<select name="t8">
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</td>
</tr>

<tr>
<td align="left" valign="top" width="41%"><lable for="t6">E-mail
<span style="color:red">*</span></lable>
</td>
<td width="57%"><input type="text" value="" name="t6" size="24" onBlur="call4()">
</td>
</tr>
<tr>
<td colspan="2">
<p align="center">
<input type="submit" value="register"> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="reset" >
</td>
</tr>
</table>
<center><a href="login.jsp"><font color="red"><img src="images\back1.jpg" width="60" heigth="60"/></font></a></center>
</form>
</body>
</html>
