<%@page import="java.sql.*"%>
<% 
String a=request.getParameter("t1");
String b=request.getParameter("t2");
String c=request.getParameter("t3");
String d=request.getParameter("t4");
String e=request.getParameter("t5");
String f=request.getParameter("t6"); 
String j = request.getParameter("b1");


%>
<% 
out.println("<h1><center>Booked Successfully </center></h1><hr>");
%>
<%
Connection con=null;
PreparedStatement ps=null;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinereservation","root","Sysdba_1");
ps=con.prepareStatement("insert into booking values(?,?,?,?,?,?)");
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.execute();
}


catch(Exception ex){
	ex.printStackTrace();
}
%>