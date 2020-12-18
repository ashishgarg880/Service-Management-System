<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To User</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/sign.css">
</head>
<body>
<%
//out.print(session.getAttribute("uid"));
%>
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
<%@page import="java.util.*" %>
<%
//out.println(session.getAttribute("uid"));
    if(session.getAttribute("uid")==null)
    {
    	response.sendRedirect("login.jsp");
    	
    }
%>
<div class="col-md-12 head">
     <div class="container">
    Call Us:-<span>+91 93560-01600</span>
       <ul class="nav navbar-nav navbar-right">
       <li><a href=""><i class="fa fa-facebook fa-2x"></i></a></li>
       <li><a href=""><i class="fa fa-google-plus fa-2x"></i></a></li>
       </ul>
    </div>
</div>
<div class="col-md-12 navbar-fixed bg">
    <div class="container">
   <ul class="nav navbar-nav">
     <li><a href="sign.jsp"><img src="photo/ash.jpg" class="im"></a></li>
   </ul>
    <ul class="nav navbar-nav navbar-right hd">
     <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
     <li><a href="book.jsp"><i class="fa fa-file"></i> Book</a></li>
     <li><a href="booking.jsp"><i class="fa fa-check"></i> Service Check</a></li>
     <li><a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a></li>
    </ul>  
    </div> 
</div>
<div class="clearfix"></div>
<div class="col-md-12">
<div class="container">
<h2 class="text-center">Service History</h2><hr>
</div>
<table class="table table-hover table-striped table-bordered">
<tr>
    
	<th>In which date book</th>
	<th>Which Service can Provide</th>
	<th>Time</th>
	<th>Status</th>
	<th>Service Date</th>
	<th>Service Can be Cancel</th>
</tr>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st= con.createStatement();
	int uid= Integer.parseInt( session.getAttribute("uid").toString());
	String cmd="select * from book where user_id="+uid;
	rs=st.executeQuery(cmd);
    while(rs.next())
    {
 %>
    	<tr>	    
    		<td><%= rs.getString("date") %></td>
    		<td><%= rs.getString("service") %></td>
    		<td><%= rs.getString("time") %></td>
    		<td><%= rs.getString("status") %></td>
    		<td><%= rs.getString("dates") %></td>
    		<td><a href='options.jsp?d=<%=rs.getString("idbook") %>'><input type="button" value="Delete" class="btn btn-danger"></a></td>
    	</tr>
<%	
    }
}   	
    catch(Exception ex){
    	out.print("Please Wait"+ex);
    }
    %>
    
</table>
<hr>
</div>
    
<div class="clearfix"></div>
<div class="col-md-12">
<div class="container">
<h2 class="text-center">ADD Review</h2><hr>
</div>
<form method="post" action="review.jsp">
   <p class="text-center">
       <textarea required placeholder="Any Review" name="n4" class="area"></textarea> 
       <input type="submit" class="btn btn-primary bty">
   </p>
         <u>
   			<h5 style="font-family:arial;margin-top:-10px;margin-bottom:18px;"> 
            	<%
                if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("review"))
                	 {
                		 out.println("Submit Data");
                	 }
                	 else
                	 {
                		out.println(""); 
                	 }
                 }
                 
               %>
               
      		</h5>
		</u>
</form>
<hr>
</div>


<div class="clearfix"></div>
<div class="col-md-12">
       <div class="container">
       <h2 class="text-center">Change Password</h2>
       <hr>
       </div>
  <form action="password.jsp" method="post">
	<p class="text-center niu">
	<label>Current Password</label>
	<input type="password" required placeholder="Enter Old Password" name="n3" class="pass_field"><br>
	<label>New Password</label>
	<input type="password" required placeholder="Enter New Password" name="n2" class="pass_field"><br> 
	<input type="submit" class="btn btn-primary" value="Change Password">
	</p>
		<u>
   			<h5 style="font-family:arial;margin-top:-10px;margin-bottom:18px;"> 
            	<%
                if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("3"))
                	 {
                		 out.println("Password Updated");
                	 }
                	 else
                	 {
                		out.println("Please Check Current Password"); 
                	 }
                 }
                 
               %>
               
      		</h5>
		</u>
  </form>
</div>
</body>
</html>