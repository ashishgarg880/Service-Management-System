<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%
Connection con;
ResultSet rs;
Statement st;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

String use,use1;

use=request.getParameter("mail");



  try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(host,user,pass);
		st=con.createStatement();
		String cmd="select * from admin where email='"+use+"'";
		rs=st.executeQuery(cmd);
		
		if(rs.next())
		{
			response.sendRedirect("forget.jsp?msg=2");
			
		}
		else{
			response.sendRedirect("index.jsp?msg=2");
		}
		
	}
	catch(Exception ex){
	    out.println("Connection Error"+ex);
	    }
  
  
  %>
</body>
</html>