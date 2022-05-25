
<%@page import="project.connection.BuildConnection" %>
<%@page import="java.sql.*" %>
<%
String rollNo = request.getParameter("roll");
String dsa = request.getParameter("dsa");
String cn = request.getParameter("cn");
String os = request.getParameter("os");
String jp = request.getParameter("jp");
String coa = request.getParameter("coa");
String dsl = request.getParameter("dsl");
String jpl = request.getParameter("jpl");

try {
	Connection connection = BuildConnection.getConnection();
	Statement st = connection.createStatement();
	st.executeUpdate("insert into result values('"+rollNo+"', '"+dsa+"', '"+cn+"', '"+os+"', '"+jp+"', '"+coa+"', '"+dsl+"', '"+jpl+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e) {
	out.println(e);
}
%>