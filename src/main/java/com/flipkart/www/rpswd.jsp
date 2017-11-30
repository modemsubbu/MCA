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
<%		
try{
	PreparedStatement ps=null;
	ResultSet rs=null;
	Statement st=null;
	int result=0;
	String s1=request.getParameter("name");
	String s2=request.getParameter("t5");
	
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
 
        	st=con.createStatement();		 		
	 rs=st.executeQuery("select cid,pwd,mobile from clogin");
			while (rs.next ())
			{
				String customername=rs.getString(1);
				String password=rs.getString(2);
				String mobile_no=rs.getString(3);
				result=0;
	
				if(customername.equals(s1) && mobile_no.equals(s2))
				{%>
					
				<center><font size="4" >Hi! Your password is:<font size="4" color="gold"><%=password%><img src="images/bs.png" width="80" heigth="80"/></font><br>
				<br>		
				<a href="login.jsp"><font color="red"><img src="images\back.jpg" width="60" heigth="60"/></font></a></center>
			<%break;
				}else if(s1.equals("") && s2.equals(""))
				{}
					
				else
				{result=1;
				}
			}
  			
			if(result==1){%>
				  response.sendRedirect("rpswd1.html");
			<%}

			rs.close ();
  			st.close ();
			con.close();
		}
		catch(Exception e){
		//	out.println("Exception is ;"+e);
		}
	
	
%>

	
	
	
	


</form>
</body>
</html>	