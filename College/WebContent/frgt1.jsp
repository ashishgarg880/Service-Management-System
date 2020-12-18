<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
Connection con;
ResultSet rs;
Statement st;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

String use,mail;
mail=request.getParameter("mail");
use=request.getParameter("pass1");

try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	String cmd="select * from admin where email";
	st=con.createStatement();	
	String cmd="update admin set pass='"+use+"' where idadmin="+mail;
	st.executeUpdate(cmd);
	response.sendRedirect("forget.jsp?msg=3");
	out.println("Password is Saved");
	
}
catch(Exception ex){
    out.println("Password Is not Saved "+ex);
    }

%>
</body>
</html>