<%
	String userString = request.getParameter("username");
	String passString = request.getParameter("password");
	
	if(userString.equalsIgnoreCase("admin") && passString.equalsIgnoreCase("admin"))
	{
		response.sendRedirect("adminHome.jsp");
	} else
		response.sendRedirect("errorAdminLogin.html");
%>