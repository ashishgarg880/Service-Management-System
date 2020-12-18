<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
</head>
<body>
<%@ page import="java.sql.*" %>
<%
Connection con;
ResultSet rs;
Statement st;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

String use,pas;

use=request.getParameter("n");
pas=request.getParameter("n1");

try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st=con.createStatement();
	String cmd="select * from admin where user='"+use+"' and pass='"+pas+"'";
	rs=st.executeQuery(cmd);
	
	if(rs.next())
	{
		session.setAttribute("uids",rs.getString("idadmin"));
		response.sendRedirect("homes.jsp");
		
	}
	else{
		response.sendRedirect("index.jsp?msg=1");
	}
	
}
catch(Exception ex){
    out.println("Connection Error"+ex);
    }
%>
</body>
</html>