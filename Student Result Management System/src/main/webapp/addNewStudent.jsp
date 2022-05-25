<%@page import="project.connection.BuildConnection" %>
<%@page import="java.sql.*" %>
<%
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollNo = request.getParameter("roll");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String gender = request.getParameter("gender");

try {
	Connection connection = BuildConnection.getConnection();
	Statement st = connection.createStatement();
	st.executeUpdate("insert into student values('"+course+"', '"+branch+"', '"+rollNo+"', '"+name+"', '"+fatherName+"', '"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e) {
	out.println(e);
}
%>