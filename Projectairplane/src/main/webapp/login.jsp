<% String a=request.getParameter("t1");
String b=request.getParameter("t2");

if(a.equals("blabla") && b.equals("password"))
{
	response.sendRedirect("AboutUs.html");
	}
	else
	{
		response.sendRedirect("admin.html");
			}%>