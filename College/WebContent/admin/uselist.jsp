<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/sign.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

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
    <li><a href="#contact"><i class="fa fa-phone"></i> Contact</a></li>
    <li><a href="list.jsp"><i class="fa fa-user"></i> Profession List</a></li>
    <li><a href="uselist.jsp"><i class="fa fa-list"></i> User List</a></li>
    <li><a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a></li>
    </ul>  
    </div> 
</div>
      
<div class="clearfix"></div>

<div class="clearfix"></div>

<div class="fb">
<%@ page import="java.sql.*" %>
<h1 class="text-center">User List</h1><hr>
<div class="container">

<p class="py">
    	<input type="text" placeholder="Search" id="myInput" class="bt" name="n7">
		
</p>
<table class="table table-bordered table-striped table-hover">
<tr>
<th>User Id</th><th>Name</th> <th>Email</th> <th>Address</th><th>Mobile Number</th><th>Option</th>
</tr>

<tbody id="myTable">
<%
Connection con;
Statement st;
ResultSet rs;
String host="jdbc:mysql://localhost:3306/college?useSSL=false";
String user="root";
String pass="1234";

try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(host,user,pass);
	st= con.createStatement();
	String cmd="select * from user order by iduser asc";
	rs= st.executeQuery(cmd);
	
	while(rs.next())
	{
%>
	<tr>	
	    <td><%= rs.getString("iduser") %></td>
		<td><%= rs.getString("name") %></td>
		<td><%= rs.getString("email") %></td>
		<td><%= rs.getString("adrs") %></td>
		<td><%= rs.getString("mob") %></td>
	    <td><a href='option.jsp?d=<%=rs.getString("iduser") %>'><input type="button" value="Delete" class="btn btn-danger"></a>	        
	    </td>	
	</tr>
<%	
	}
	
}

catch(Exception ex)
{
	out.println("Connection error");
}
%>
</tbody>
</table>
<div class="container ft1 cnt" id="contact">
  <div class="container identify">
  <a href="#" class="closebtn">×</a>
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
</div>     




<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</div>
</div>

</body>
</html>