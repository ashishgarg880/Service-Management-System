<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../css/sign.css">
</head>
<body>
<%@page import="java.sql.*" %>
<%
out.print(session.getAttribute("uids"));
%>
<%@ page import="java.sql.*"%>

<div class="col-md-12 navbar-fixed bg">
    <div class="container">
   		<ul class="nav navbar-nav">
     		<li><a href="sign.jsp"><img src="../photo/ash.jpg" class="im"></a></li>
   		</ul>
    	<ul class="nav navbar-nav navbar-right hd">
     		<li><a href="homes.jsp"><i class="fa fa-home"></i> Home</a></li>
    		<li><a href="add.jsp"><i class="fa fa-user"></i> Add Profession</a></li>
    		<li><a href=""><i class="fa fa-phone"></i> Contact</a></li>
    		<li><a href="list.jsp"><i class="fa fa-user"></i> Profession List</a></li>
    		<li><a href="uselist.jsp"><i class="fa fa-list"></i> User List</a></li>
    		<li><a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a></li>
    
    	</ul>  
    </div> 
</div>
<div class="clearfix"></div>
<div class="col-md-12">
	<div class="container">
		<h1>Forget Password<hr></h1>
		<form method="post" action="frgt.jsp">
  		<p style="font-size:20px;">Email:-</p><input type="Email" name="mail" style="border-radius:2px;">
        <input type="submit" value="check">
		</form>
		<p>
		<%
		 if(request.getParameter("msg")!=null)
         {
        	 if(request.getParameter("msg").equals("2"))
        	 {
   				out.print("Go New Password To Gmail..");
        	 }
        	 else
        	 {
        		out.println("Email Problem"); 
        	 }
         }
		
		%>
	</div>
	
</div>
</body>
</html>