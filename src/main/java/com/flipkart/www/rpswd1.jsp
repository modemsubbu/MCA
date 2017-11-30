<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
	 <title>MULTI BANKING SYSTEM</title>
	
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
		
<marquee bgcolor="skyblue" width="100%"  height="50%" behavior="alternate"> <h1><font color=rose face="Lucida Calligraphy"><b>MULTI BANKING SYSTEM</b></h1></CENTER></marquee>
	


        <a href="http://www.script-tutorials.com/pure-css3-lavalamp-menu/" class="stuts"> <span></span></a>      </header>
       <div class="container">
		
            <ul id="nav">
                <li><a href="home.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp <b>HOME</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
		
                <li><a href="admin.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <b>ADMIN</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
          
		
         
       
                </li>
                <li><a class="hsubs" href="#">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>CUSTOMER</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
				<ul class="subs">
                        <li><a href="newcustomer.jsp"></b>Newuser</b></a></li>
                        <li><a href="login.jsp"><b>Signin</b></a></li>
                        
                    </ul>
                   
                </li>
                <li><a class="hsubs" href="#">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>BANK ADMIN</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
					<ul class="subs">
                        <li><a href="newbankuser.jsp"><b>Add Bank</b></a></li>
                        <li><a href="blogin.jsp"><b>Signin</b></a></li>
                        
                    </ul>
		</li>
		</li>
		<li><a href="cu.jsp"> <b>CONTACT US</b></a></li>
                    
                <div id="lavalamp"></div>
            </ul>
<br>
<br>


<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body background="images\001.jpg" width="778" height="1280" />

<div id="cc" style="float:left;">
<marquee direction="up">
	<img src="images\i.png"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\andb.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\icici.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\i.png"  width="100" height="50" alt="" ></img>
</marquee></div>
<div id="cc" style="float:right;">
<marquee direction="down">
	<img src="images\i.png"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\andb.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\icici.jpg"  width="100" height="50" alt="" ></img><br><br>
	<img src="images\i.png"  width="100" height="50" alt="" ></img>
</marquee></div>

<%@ page import="java.sql.*"%>
<%		
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
			
				<%}
					
				else
				{response.sendRedirect("rpswd1.html");
				}
			}


			rs.close ();
  			st.close ();
			con.close();
	
%>

	
	
	
	


</form>
</body>
</html>	