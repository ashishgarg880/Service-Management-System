<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Computer Technology</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../css/sign.css">
</head>
<body>
<div class="container cn">
                
                
                <form action="act.jsp" class="form" method="post">
       			<div class="col-md-4 col-md-offset-4" style="padding:0;">
                 		 <h2>Admin Login</h2>
                  </div>
                <div class="clearfix"></div>
                <div class="col-md-4 col-md-offset-4 dv">

		                <label>User Name</label>
		                <p><input type="text" placeholder="User Id" required pattern="[a-z, A-Z , 0-9]{3,20}" name="n" title="Please Enter Numerical Number Min 3 And Max 20"></p>
		               
		                <label>Password</label>
		                <p><input type="password" placeholder="Password Field" required pattern="[a-z, A-Z, 0-9]{3,20}" name="n1" title="Please Enter Min 3 And Max 20"><br></p>

<p class="clr">
	
		<%
              
                 if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("1"))
                	 {
                		out.println("User Id and Password is Wrong");
                	 }
                	 else
                	 {
                		out.println(""); 
                	 }
                 }
                 
		%>
		<%
              
                 if(request.getParameter("msg")!=null)
                 {
                	 if(request.getParameter("msg").equals("2"))
                	 {
                		out.println("Please Check Gmail Acounts");
                	 }
                	 else
                	 {
                		out.println(""); 
                	 }
                 }
                 
		%>
	
</p>		               
		               <p> <input type="submit" class="btn" value="Login"></p>

		                 <p> <a href="forget.jsp">Forgotten Password?</a></p>
		                   <h4> <a href="" class="tyr">Create A New Account</a></h4>

                </div>
                </form>
</div>
</body>
</html>