<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../css/sign.css">
</head>
<body>
<%@ page import="java.sql.*"%>
<%
    if(session.getAttribute("uids")==null)
    {
      response.sendRedirect("logout.jsp");	
    }
%>
<div class="col-md-12 navbar-fixed bg">
    <div class="container">
   <ul class="nav navbar-nav">
     <li><a href="sign.jsp"><img src="../photo/ash.jpg" class="im"></a></li>
   </ul>
    <ul class="nav navbar-nav navbar-right hd">
     <li><a href="homes.jsp"><i class="fa fa-home"></i> Home</a></li>
    <li><a href="add.jsp"><i class="fa fa-user"></i> Add Profession</a></li>
    <li><a href="#identify1"><i class="fa fa-phone"></i> Contact</a></li>
    <li><a href="list.jsp"><i class="fa fa-user"></i> Profession List</a></li>
    <li><a href="uselist.jsp"><i class="fa fa-list"></i> User List</a></li>
    <li><a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a></li>
    
    </ul>  
    </div> 
</div>
<div class="clearfix"></div>
<div class="col-md-12 banner">
     </div>
   <div class="col-md-12 qwe">  
     <div class="container">
     <h2>Welcome To Admin</h2>
     <p><b>Best To Service Provide Related in India</b></p>
     <p>The word "Services" is one that can be applied to so many different things in the world. 
      Every business on the market is there to provide a service.  The backbone of the United States is business and if there
       was no "services" then there would 
      be no businesses, and then where would we be?  Many people dedicate their lives or a large 
      portion of it to God, and the very word that describes the ceremony is service. Service is what basically 
      everyone does for a living, some people do it for money, and some do 
     it out of the kindness of their heart.  Even some animals do a service to their owners i.e. leader dogs for the blind and handicap. </p>
     </div>
     <div class="container bane">
     <div class="col-md-3 qw">
     <div class="rat">
    <p><img src="../photo/elc.jpg" class="wd"></p>
    <h2>Electrician</h2>
    <p><i class="fa fa-check"></i>Full Time Service</p>
    <p><i class="fa fa-check"></i>Room Repairing</p>
    <p><i class="fa fa-check"></i>Kitchen Repairing</p>
    <p><i class="fa fa-check"></i>Bathroom Repairing</p>
    <p><a href="" class="btn btn-danger">Click Me</a></p>
    </div>
    </div>
    <div class="col-md-3 qw text-center">
    <div class="rat">
    <p><img src="../photo/se.jpg" class="wd"></p>
    <h2>Plumber</h2>    
    <p><i class="fa fa-check"></i>Full Time Service</p>
    <p><i class="fa fa-check"></i>Kitchen Repairing</p>
    <p><i class="fa fa-check"></i>Bathroom Repairing</p>
    <p><a href="" class="btn btn-danger tb">Click Me</a></p>
    </div>
    </div>
    <div class="col-md-3 qw text-center">
    <div class="rat">
    <p><img src="../photo/fur.jpg" class="wd"></p>
    <h2>Carpenter</h2>    
    <p><i class="fa fa-check"></i>Full Time Service</p>
    <p><i class="fa fa-check"></i>Sofa Repairing</p>
    <p><i class="fa fa-check"></i>Bad Repairing</p>
    <p><i class="fa fa-check"></i>Other Furniture Type Repairing</p>
    <p><a href="" class="btn btn-danger ">Click Me</a></p>
    </div>
    </div>
    <div class="col-md-3 qw text-center">
    <div class="rat">
    <p><img src="../photo/paint.jpg" class="wd"></p>
    <h2>Carpenter</h2>    
    <p><i class="fa fa-check"></i>Full Time Service</p>
    <p><i class="fa fa-check"></i>Worker Service</p>
    <p><i class="fa fa-check"></i>Best Quality Tools Used</p>
    <p><i class="fa fa-check"></i>Back On Feedback</p>
    <p><a href="" class="btn btn-danger ">Click Me</a></p>
    </div>
    </div>
    </div>
    </div>
<div class="clearfix"></div>
<div class="col-md-12 ft1">
  <div class="container identify" id="identify1">
  <h1>OUR IDENTIFIER</h1><hr>
  <div class="col-md-4">
    <p class="xz"><a href="sign.jsp"><img src="../photo/ash.jpg" ></a><br><br></p>
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
</body>
</html>