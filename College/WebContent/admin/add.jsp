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
<%
    if(session.getAttribute("uids")==null)
    {
      response.sendRedirect("homes.jsp");	
    }
%>
<div class="col-md-12 navbar-fixed bg">
   <p>
   <%
   out.print(session.getAttribute("uids"));
   %>
   </p>
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
       <h2>Add Professioner</h2><hr>
      </div>
<div class="container uyt">
   <div class="col-md-12">
     <form action="sin.jsp" method="post">
            <div class="col-md-4">
            <label>User Name</label><br><input type="text" required placeholder="User Name" name="n" title="Please Enter Minimum 3 Or Maximum 30 Character"><br>
            </div>
            <div class="col-md-4">
            <label>Email</label><br><input type="Email" required placeholder="Email Id" name="n1" title="Please Enter Email Account"><br>
            </div>
            <div class="col-md-4">
            <label>Addresss</label><br><input type="text" required name="n2" placeholder="ex:- #109,Gali No.,House No."><br>
            </div>
            <div class="col-md-4">
            <label>Mobile Number</label><br><input type="text" required name="n3" placeholder="Mobile Number" maxlength="10" title="Please Enter Mobile Number"><br>
            </div>
            <div class="col-md-4">
            <label>Gender</label>
            <select name="n6">
            <option value="Select">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            </select>
            </div>
            <div class="col-md-4">
            <label>Profession</label>
            <select name="n5">
            <option value="Plumber">Plumber</option>
            <option value="Electrician">Electrician</option>
            <option value="Carpenter">Carpenter</option>
            <option value="Painter">Painter</option>
            <option value="Computer Engg.">Computer Engg.</option>
            </select>
            </div>
            
            <div class="col-md-12">
            <div class="col-md-4">
            <input type="submit" class="btn btn-success hd" value="Add Professioner" class="bt">
            
            <p> <%
              
                 if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("1"))
                	 {
                		 response.sendRedirect("index.jsp?msg=1");
                	 }
                	 else
                	 {
                		out.println(""); 
                	 }
                 }
                 
              %></p>
            </div>
            </div>
          </form>
   </div>   
</div>
</body>
</html>