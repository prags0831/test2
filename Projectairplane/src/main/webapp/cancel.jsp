<%@page import="java.sql.*"%>
<%
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String g = request.getParameter("b1");
%>

<h1><center>Cancellation Successful</center></h1>


<%
Connection con = null;
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AirlineReservation", "root", "Sysdba_1");
	PreparedStatement st = con.prepareStatement("insert into cancel values(?,?,?,?)");
	st.setString(1, a);
	st.setString(2, b);
	st.setString(3, c);
	st.setString(4, d);
	st.execute();
} 
catch (Exception ae) 
{
	ae.printStackTrace();
}
%>