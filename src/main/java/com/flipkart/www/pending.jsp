<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>

<HTML>
<HEAD>
<TITLE> New Document </TITLE>
</HEAD>

<BODY>
 
<%

String id1=request.getParameter("id");
System.out.println("id1");
 String bname=""; String cid=""; String accno=""; String pwd="";
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","subbu");
 Statement st=con.createStatement();
ResultSet rs=null,rs1=null;
  rs=st.executeQuery("select * from customer where id='"+id1+"'");
	
	
	while(rs.next()){

cid=rs.getString(1);
pwd=rs.getString(7);
accno=rs.getString(2);
bname=rs.getString(5);


	}
 
 
rs.close();




%>
</BODY>
</HTML>
