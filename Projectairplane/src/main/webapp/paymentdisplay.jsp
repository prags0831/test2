<%@page  import="java.sql.*" %>
<%
out.println("<h1><center> Payment Successfull</center> </h1>");
%>

<%
Connection con = null;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinereservation","root","Sysdba_1");
PreparedStatement ps=con.prepareStatement("select * from payment");
ResultSet rs=ps.executeQuery();
out.println("<table border=1 width='75%'>");
out.println("<tr><th>Card Name<th>Amount <th>Name<th>Card Number<th>Expiry Date<th>CVV</tr>");
while(rs.next())
{
    out.println("<tr><td>"+rs.getString(1)+" <td> "+rs.getString(2)+" <td> "+rs.getString(3)+" <td> "
+rs.getString(4)+"<td>"+rs.getString(5)+"<td>"+rs.getString(6));
}
out.println("</table>");
}
catch(Exception ae) {
    ae.printStackTrace();
}





%>