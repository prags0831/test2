<%@page  import="java.sql.*" %>
<%
out.println("<h1><center> Check In Data Display</center> </h1>");
%>
<%
Connection con = null;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinereservation","root","sysdba_1");
PreparedStatement ps=con.prepareStatement("select * from chkflt");
ResultSet rs=ps.executeQuery();
out.println("<table border=1 width='75%'>");
out.println("<tr><th>Flight ID<th>Booking ID<th>First Name<th>Last Name<th>Flight Date<th>Check-In Time <th></th>Seat Number</tr>");
while(rs.next())
{
    out.println("<tr><td>"+rs.getString(1)+" <td> "+rs.getString(2)+" <td> "+rs.getString(3)+" <td> "
+rs.getString(4)+"<td>"+rs.getString(5)+"<td>"+rs.getString(6)+"<td>"+rs.getString(7));
}
out.println("</table>");
}
catch(Exception ae) {
    ae.printStackTrace();
}
%>