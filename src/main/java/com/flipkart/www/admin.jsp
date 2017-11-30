	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	 <!--<<link href="css/layout.css" rel="stylesheet" type="text/css" />-->
    	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<!--<link rel="stylesheet" type="text/css" href="style.css" />-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<a href="http://www.script-tutorials.com/pure-css3-lavalamp-menu/" class="stuts"> <span></span></a>      </header>
<script src="jquery.min.js"></script>
<script type="text/javascript" src="jquery.validate.min.js"></script>

<style>
body {
    background-color: #C6F5F2;
	background-image:url(images/1872817.jpg);
}
#content { background-color:#9900CC; width:1320px; min-height:250px; text-align:center; padding:20px;  }
h1 {
    padding:20px 10px 20px 10px;
}
h2 {
    padding-left: 0px !important;
}
#header {
    background-color: #D2F2EF !important;
}
.large { font-size:22px; }
.orange { color:orange; }
.italic { font-style:italic }
.textmiddle {vertical-align:middle;}
.padout { padding-left:25px; padding-right:25px; }
.rounded-corners {
     -moz-border-radius: 40px;
    -webkit-border-radius: 40px;
    -khtml-border-radius: 40px;
    border-radius: 40px;
}
.rounded-corners-top {
     -moz-border-top-radius: 40px;
    -webkit-border-radius: 40px;
    -khtml-border-radius: 40px;
    border-radius: 40px;
}
.right {
    float: right;
}
.scrolldown { padding-left:20px; color:#EDECE8; font-size:40px; font-weight:bold; vertical-align:middle;
	text-shadow: #6374AB 2px 2px 2px;
 }
 .contentblock { margin: 0px 20px; }
 .results { border: 1px solid blue; padding:20px; margin-top:20px; min-height:50px; }
 .blue-bold { font-size:18px; font-weight:bold; color:blue; }

 /* example styles for validation form demo */
#register-form {
    background: url("form-fieldset.gif") repeat-x scroll left bottom #F8FDEF;
    border: 1px solid #DFDCDC;
    border-radius: 15px 15px 15px 15px;
    display: inline-block;
    margin-bottom: 10px;
    margin-left: 20px;
    margin-top: 10px;
    padding: 25px 50px 10px;
    width: 350px;
}

#register-form .fieldgroup {
    background: url("form-divider.gif") repeat-x scroll left top transparent;
    display: inline-block;
    padding: 8px 10px;
    width: 340px;
}

#register-form .fieldgroup label {
    float: left;
    padding: 15px 0 0;
    text-align: right;
    width: 110px;
}

#register-form .fieldgroup input, #register-form .fieldgroup textarea, #register-form .fieldgroup select {
    float: right;
    margin: 10px 0;
    height: 25px;
}

#register-form .submit {
    padding: 10px;
    width: 220px;
    height: 40px !important;
}

#register-form .fieldgroup label.error {
    color: #FB3A3A;
    display: inline-block;
    margin: 4px 0 5px 125px;
    padding: 0;
    text-align: left;
    width: 220px;
}
</style>


<script type="text/javascript">
/**
  * Basic jQuery Validation Form Demo Code
  * Copyright Sam Deering 2012
  * Licence: http://www.jquery4u.com/license/
  */
(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
            //form validation rules
            $("#register-form").validate({
                rules: {
                    name:{
					   required: true,
					   accept: "[a-zA-Z]+",
					   
					 },
                    pwd: {
                        required: true,
                    },
                    agree: "required"
                },
                messages: {
                    name: "Please enter admin name",
                    pwd: {
                        required: "Please provide a password",
                    },
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        }
    }

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);
</script>
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
</HEAD>
<BODY onload="noBack();"onpageshow="if (event.persisted) noBack();" onunload="">
</head>	
	<div id="page-wrap" align="center">
<div id="header">
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:70px;				 				font-family:Cursive;font-size:14pt;color:#9966CC;height:25px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
		<h3 style="font:caption; margin-left:100px; color:#9966CC" align="right"><marquee style="z-index:2;position:absolute;left:900px;top:50px;           
		 font-family:Cursive;font-size:14pt;color:#FF99FF;height:30px;"scrollamount="3" direction="down">Better way to access</marquee></h3>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="stuts"><p align="center"><img src="images/bad-economy.png" height="150px" width="320px"/></p>

    <ul class="nav" style="margin-left:200px">
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
    </ul><br />
    <br>
<br>
<div style="float:left; widows:100px; height:200px;>

</div>

<div id="example">

<!--<h1 align="center" style="text-decoration:blink; color:#FF0066">E-LEARNING<h1>-->

<!-- HTML form for validation demo -->
<form action="admincheck.jsp" method="post" id="register-form" novalidate="novalidate" style="margin-left:200px">

    <h2 align="center">Admin Login</h2>

    <div id="form-content">
        <fieldset>

            <div class="fieldgroup">
                <label for="name">Admin Name</label>
                <input type="text" name="name">
            </div>

            <div class="fieldgroup">
                <label for="pwd">Password</label>
                <input type="password" name="pwd">
            </div>

            <div class="fieldgroup">
              <input type="submit" value="Login" class="submit"><input type="reset" value="Clear" class="reset" style="height:40px; width:220px">
				
            </div>

        </fieldset>
    </div>

</form>
<!-- END HTML form for validation -->




</div>

</div>

</div> <!-- end page wrap -->
</body>
</html>
