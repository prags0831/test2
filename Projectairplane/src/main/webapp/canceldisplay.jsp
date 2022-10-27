<%@page  import="java.sql.*" %>
<%
out.println("<h1><center>Cancellation Successfull</center> </h1>");
%>

<%
Connection con = null;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinereservation","root","Sysdba_1");
PreparedStatement ps=con.prepareStatement("select * from cancel");
ResultSet rs=ps.executeQuery();
out.println("<table border=1 width='75%'>");
out.println("<tr><th>First Name<th>Last Name<th>Phone Number<th>Flight ID</tr>");
while(rs.next())
{
    out.println("<tr><td>"+rs.getString(1)+" <td> "+rs.getString(2)+" <td> "+rs.getString(3)+" <td> "
+rs.getString(4));
}
out.println("</table>");
}
catch(Exception ae) {
    ae.printStackTrace();
}





%>