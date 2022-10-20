<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try {
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	String driver_class_name = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/airline?allowPublicKeyRetrieval=true&useSSL=false";
	String user = "root";
	String pass = "Anjaney@1234";
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st = con
	.prepareStatement("select username,password from login where username=? and password=?");
	st.setString(1, username);
	st.setString(2, password);
	ResultSet rs = st.executeQuery();
	if (rs.next()) {
		response.sendRedirect("adminhomepage.jsp");
	} else {
		out.println("<h1><p style=color:red>Invalid credentials!</P></h1>");
	}
} catch (Exception e) {
	out.println(e);
}
%>
