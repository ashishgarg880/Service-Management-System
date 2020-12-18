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
Connection con;
ResultSet rs;
Statement st;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";
%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.*" %>
<%
    if(session.getAttribute("uid")==null)
    {
    	response.sendRedirect("login.jsp");
    }
%>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st= con.createStatement();
	int uid= Integer.parseInt( session.getAttribute("uid").toString());
	String cmd="select * from book where user_id="+uid;
	rs=st.executeQuery(cmd);
	
	String n1=request.getParameter("n3");
	String n2=request.getParameter("n2");
	
	String cm="update user set pass='"+n2+"' where iduser="+uid;
	st.executeUpdate(cm);
	response.sendRedirect("booking.jsp?msg=3");
	}
catch(Exception ex)
{
	if(session.getAttribute("uid")==null);
	response.sendRedirect("booking.jsp?msg=1");
}
 %>
</body>
</html>