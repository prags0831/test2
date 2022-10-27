<%@page  import="java.sql.*" %>
<%
out.println("<h1><center> Passenger Registration Display</center> </h1>");
%>

<%
Connection con = null;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinereservation","root","Sysdba_1");
PreparedStatement ps=con.prepareStatement("select * from passenger");
ResultSet rs=ps.executeQuery();
out.println("<table border=1 width='75%'>");
out.println("<tr><th>First Name<th>Last Name <th>Gender<th>Phoneno<th>Email<th>Source<th>Destination</tr>");
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