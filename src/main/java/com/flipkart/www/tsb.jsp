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
    </ul><br />
	<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div>

<HTML>
<HEAD>
<TITLE></TITLE>
 
</HEAD>
<center>
 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter your account number");
 return false;
 }


 if(document.f1.daccno.value==""){
 alert("enter destination account number");
 return false;
 }
var id=/^[0-9][0-9]/
	if(!(id.test(document.f1.amt.value)))
	{
	alert("Invalid amount");
	document.f1.amt.focus();
	return false;
	}

 if(document.f1.password.value==""){
	
 alert("enter password");
 return false;
 }
 if(!((document.f1.password.value)==(document.f1.password1.value)))
	{
	 alert("enter correct password");
	 return false;
	}
 }

</script>

<BODY  ><br>
 <form action="tsbsave.jsp" name="f1" method=get onsubmit='return check()'>
 <fieldset color="black" align="left">
<legend><font size="5" color="Green">Multibanking System</font></legend>
<center>
 <h2><u>Enter Account Details</u></font></h2><B></B></b>
 <table hspace="1">
<tr><td>
<h3>Enter Your Account Number   </td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr></tr><tr></tr>

<tr><td>
<h3> Enter Destination Account </td><td> <input type="text" name="daccno"></td></tr><tr></tr><tr></tr>

<tr><td><h3> Destination Account Type</td><td><SELECT NAME="datype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr></tr><tr></tr>
<h3><tr><td><h3> Enter Amount </td><td> <input type="text" name="amt"></td></tr><tr></tr><tr></tr>

<tr><td>

<h3> Enter Transaction Password	 </td><td>      	     <input type="password" name="password"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="password1"></td></tr><br><tr></tr><tr></tr>

     </table><BR>
 
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   back   " onClick="window.location='userhome.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
  </font></b> </form>
  </body>
  </center>
  </html>

