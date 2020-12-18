<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Computer Technology</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/sign.css"> 
<link rel="stylesheet" type="text/css" href="css/font-awesome.css"> 
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
    <li><a href="sign.jsp"><i class="fa fa-sign-in"></i> Sign-up</a></li>
    <li><a href="#identify"><i class="fa fa-basic"></i>Basic</a></li>
    <li><a href="#identify"><i class="fa fa-phone"></i> Contact</a></li>
    </ul>  
    </div> 
</div>
 <div class="clearfix"></div>
 <div class="col-md-12 brt">
     <div class="container text-center">
            <div class="col-md-6">
            <img src="photo/user.jpg" class="imga">
            </div>
            <div class="col-md-6 ml text-center">
            <form action="sin.jsp" method="post">
            <div class="bord">
            <h1 class="tnt">Sign Up</h1><hr>
            <input type="text" required placeholder="User Name" name="n" title="Please Enter Minimum 3 Or Maximum 30 Character"><br>
            <input type="Email" required placeholder="Email Id" name="n1" title="Please Enter Email Account"><br>
            <input type="text" required name="n2" placeholder="ex:- #109,Gali No.,House No."><br>
            <input type="text" required name="n3" placeholder="Mobile Number" maxlength="10" title="Please Enter Mobile Number"><br>
            <input type="password" required name="n4" placeholder="Password" title="Please Enter Minimum 3 Or Maximum 30 Character">
            <input type="password" required name="n5" placeholder="Correct Password" title="Please Enter Minimum 3 Or Maximum 30 Character">
            <div class="col-md-5 col-md-offset-1">
            <input type="submit" class="btn bt submit" value="Sign Up">
            </div>
            <div class="col-md-5">
				<input type="reset" class="btn bt cancel2" value="Cancel">
            </div>
             <p> <%
              
                 if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("1"))
                	 {
                		 out.println("Thanks For Registration");
                	 }
                	 else
                	 {
                		out.println(""); 
                	 }
                 }
                 
              %></p>
              </div>
          </form>
            </div>
    </div>
</div> 
<div class="clearfix"></div>
<div class="col-md-12 ft1">
  <div class="container" id="identify">
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