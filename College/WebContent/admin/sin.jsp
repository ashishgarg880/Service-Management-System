<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
   if(session.getAttribute("uid")==null)
   {
      response.sendRedirect("index.jsp");
   }
%>
<%@ page import="java.sql.*" %>
<%
Connection con;
Statement st;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

String name,email,adrs,mob,prof,gen;

name=request.getParameter("n");
email=request.getParameter("n1");
adrs=request.getParameter("n2");
mob=request.getParameter("n3");
prof=request.getParameter("n5");
gen=request.getParameter("n6");

try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st=con.createStatement();
	String cmd="insert into prof(name,adrs,mob,email,prof,gen)values('"+name+"','"+adrs+"','"+mob+"','"+email+"','"+prof+"','"+gen+"')";
	st.executeUpdate(cmd);
	
	response.sendRedirect("add.jsp?msg=1");
}
catch(Exception ex)
{
   out.println("Wrong Details"+ex);	
}
%>
</body>
</html>