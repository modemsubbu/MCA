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
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function ff1(){
 if(document.f.id.value==""){
 alert("Enter Bank ID");
  document.f.id.focus();
 return false;
 }}
 function ff2(){
 if(document.f.pwd.value==""){
 alert("Enter Password");
  document.f.pwd.focus();
 return false;
 }}
 function ff3(){
 if(document.f.pwd1.value==""){
 alert("Enter Retype Password");
  document.f.pwd1.focus();
 return false;
 }
  if(!((document.f.pwd.value)==(document.f.pwd1.value)))
	{
	 alert("The Password and retype password should match");
	 return false;
	}
}
	 function ff4(){
 if(document.f.bname.value==""){
 alert("Enter Bank Name");
  document.f.bname.focus();
 return false;
 }}
</script>
<BODY bgcolor=#FFFFFF>

<center>
<form  method=post action="bankprocess.jsp" name="f" onSubmit='return ff4()'>
<fieldset color="black" align="left">
<legend><font size="5" color="Green">Multibanking System</font></legend>
 <center>
 <table>
 <tr>
 <td><h3>Bank ID:</b></td><td><input type="text" name="id" ></td>
</tr>
<tr> 
<td><h3> Password:</b></td><td><input type="password" name="pwd" onFocus="return ff1()"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><h3>Retype Password:</b></td><td><input type="password" name="pwd1" onFocus="return ff2()"></td>
</tr><tr></tr><tr></tr>
 <tr>
 <td><h3>Enter Bank Name:</b></td><td><input type="text" name="bname" onFocus="return ff3()"></td>
</tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   BACK   " onClick="window.location='blogin.jsp'">
 </form>
<br>

</center>

</BODY>
</HTML>
