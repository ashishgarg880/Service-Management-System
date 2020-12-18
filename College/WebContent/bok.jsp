<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>

<% 
Connection con;
Statement st;
ResultSet rs;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

String ser, adr, sd, tm,amount;

ser=request.getParameter("sers");
adr=request.getParameter("adrs");
sd=request.getParameter("sdt");
tm=request.getParameter("tm");
amount=request.getParameter("amount");

try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st=con.createStatement();
	Date dt= new Date();
	DateFormat df= new SimpleDateFormat("dd-MM-YYYY");
	String date =df.format(dt);
	
	int uid= Integer.parseInt( session.getAttribute("uid").toString());
	String cmd="insert into book(date,user_id,service,adrs, dates,time, status,amount) values('"+date+"',"+uid+",'"+ser+"','"+adr+"','"+sd+"','"+tm+"','Not Confirmed','"+amount+"')";
	st.execute(cmd);
	response.sendRedirect("book.jsp?msg=1");
		
}
catch(Exception ex)
{
	out.println("Please Check"+ex);
}
%>
</body>
</html>