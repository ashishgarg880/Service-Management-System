<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<% 
Connection con;
Statement st;
ResultSet rs;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

String mob,pas,id;

mob=request.getParameter("n");
pas=request.getParameter("n1");
id= request.getParameter("n");

try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st=con.createStatement();
	String cmd="insert into user where email='"+id+"' and mob='"+mob+"' or pass='"+pas+"'";	
	rs=st.executeQuery(cmd);
	if(rs.next())
	{
		response.sendRedirect("index.jsp");
	
	}
	else{
		response.sendRedirect("signup.jsp?msg=1");
	}
}
catch(Exception ex)
{
	response.sendRedirect("login.jsp?msg=1");
	out.println("Please Check"+ex);
}
%>
</body>
</html>