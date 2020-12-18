<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/sign.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
</head>
<body>

<%@ page import="java.sql.*"%>
<%
Connection con;
Statement st;
ResultSet rs;	
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

int d2=Integer.parseInt(request.getParameter("d"));

try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st= con.createStatement();
	String cmd="delete from prof where idprof='"+d2+"'";
	st.executeUpdate(cmd);
    response.sendRedirect("list.jsp");
    
	
}

catch(Exception ex){
	out.print("Please Check"+ex);
}
%>
</body>
</html>