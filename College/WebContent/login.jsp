<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Computer Technology</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet"  type="text/css" href="css/sign.css">
<%@page import="java.util.*" %>
</head>
<body>
<div class="col-md-12 head">

     <div class="container">
    Call Us Now:-<span>+91 93560-01600</span>
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
    <li><a href="login.jsp"><i class="fa fa-user"></i> Log-in</a></li>
    <li><a href="edit.jsp"><i class="fa fa-edit"></i> Edit</a></li>
    <li><a href="delete.jsp"><i class="fa fa-trash"></i> Delete</a></li>
    <li><a href="sign.jsp"><i class="fa fa-sign-in"></i> Sign-up</a></li>
    <li><a href="">Basic</a></li>
    <li><a href=""><i class="fa fa-phone"></i> Contact</a></li>
    </ul>  
    </div> 
</div>
<div class="clearfix"></div>
<br><br>
<div class="container mi text-center">
     <div class="col-md-5 lm">
           <img src="photo/login.png" class="tb">
     </div>
         <div class="col-md-5 col-md-offset-2 ml">
           	<h1>Login Page</h1><hr>
            <form action="log.jsp" method="post">
            <input type="text" required name="n" placeholder="User Id & Mobile Number" title="Please Enter User Name & Mobile Number"><br>
            <input type="Password" required name="n1" placeholder="Password" title="Please Enter Password">
            <u style="color:white;">
            <h5 style="color:white;font-family:arial;margin-top:-10px;margin-bottom:18px;"> 
            <%
                if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("1"))
                	 {
                		 out.println("UserID & Password is wrong");
                	 }
                	 else
                	 {
                		out.println(""); 
                	 }
                 }
                 
              %>
             </h5>
            </u> 
                <div class="col-md-12">
                <div class="col-md-5 col-md-offset-1">
            	   <input type="submit" value="Log-In" class="btn btn-success submit">
            	   </div>
            	   <div class="col-md-5">
            	   <input type="submit" value="Cancel" class="btn btn-danger cancel">
                </div>
                </div>
                
                      <div class="col-md-8 col-md-offset-2">
                      <p class="text-center kmj"><a href="forget.jsp">Forget Password</a></p>
                      <p class="text-center kmj"><a href="sign.jsp">Create A New Account?</a></p>
                      </div>
         </form> 
     </div>  
</div>
        
        <br><br><br>
<div class="col-md-12 ft1">
  <div class="container identify">
  <h1>OUR IDENTIFIER</h1><hr>
  <div class="col-md-4">
    <p class="xz"><a href="sign.jsp"><img src="photo/ash.jpg" ></a><br><br></p>
    <p style="text-align:justify;">Since formation, we provide reliable and flexible services. Provision of transportation services are cost 
    effective and commitments to achieve our goal to fulfill the desire of our clients. We are in the top most
     forwarding company and one of the informed goods transportation company.</p>
     <ul class="navbar-nav nav lft">
     <li><a href=""><i class="fa fa-facebook fa-2x"></i></a></li>
     <li><a href=""><i class="fa fa-google-plus fa-2x"></i></a></li>
     <li><a href=""><i class="fa fa-twitter fa-2x"></i></a></li>
     <li><a href=""><i class="fa fa-whatsapp fa-2x"></i></a></li>
     </ul>
  </div>
  <div class="col-md-4">
        <ul class="nav ft">
        <h2>Category</h2><hr>
        <li><a href="sign.jsp">Home</a></li>
    <li><a href="login.jsp">Log-in</a></li>
    <li><a href="sign.jsp">Sign-up</a></li>
    <li><a href="">Basic</a></li>
    <li><a href="">Contact</a></li>
    <li><a href="">Learning</a></li>
        </ul>
        </div>
  <div class="col-md-4">
        <h2>About</h2><hr>
        <p>Email:-<span>ashishgarg880@gmail.com</span></p>
        <p>Mobile No:-<span>+91 93560-01600</span></p>
</div>
        <div class="col-md-12 ft3">
<p><a href="index.jsp">YS Services</a> Provide by Ashish &copy; 2018 All Rights Reserved</p>
</div>
</div>
</div>
</body>
</html>
