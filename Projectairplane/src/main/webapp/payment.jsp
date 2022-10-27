<%@page import="java.sql.*"%>
<%
String a = request.getParameter("paymentMethod");
String b = request.getParameter("t1");
String c = request.getParameter("t2");
String d = request.getParameter("t3");
String e = request.getParameter("t4");
String f = request.getParameter("t5");
String i = request.getParameter("b1");
%>

<h1><center>Payment Completed Successfully</center></h1>

<%
Connection con = null;
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AirlineReservation", "root", "Sysdba_1");
	PreparedStatement st = con.prepareStatement("insert into payment values(?,?,?,?,?,?)");
	st.setString(1, a);
	st.setString(2, b);
	st.setString(3, c);
	st.setString(4, d);
	st.setString(5, e);
	st.setString(6, f);
	st.execute();
} 
catch (Exception ae) 
{
	ae.printStackTrace();
}
%>