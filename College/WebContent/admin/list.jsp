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
<body class="twr">
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
    <li><a href="homes.jsp?#identify1"><i class="fa fa-phone"></i> Contact</a></li>
    <li><a href="list.jsp"><i class="fa fa-user"></i> Profession List</a></li>
    <li><a href="uselist.jsp"><i class="fa fa-list"></i> User List</a></li>
    <li><a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a></li>
    </ul>  
    </div> 
</div>
<%@ page import="java.sql.*" %>

<h1 class="text-center">Profession List</h1><hr>
<div class="container">
<p class="py">
    	<input type="text" placeholder="                Search  " id="myInput" class="bt" name="n7">
		
</p>
<table class="table table-bordered table-striped">
<tr>
<th>Name</th> <th>Email</th> <th>Address</th><th>Mobile Number</th><th>Gender</th><th>Profession</th><th>Option</th>
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
	String cmd="select * from prof";
	rs= st.executeQuery(cmd);
	
	while(rs.next())
	{
%>

	<tr>	
		<td><%= rs.getString("name") %></td>
		<td><%= rs.getString("email") %></td>
		<td><%= rs.getString("adrs") %></td>
		<td><%= rs.getString("mob") %></td>
		<td><%= rs.getString("gen")%></td>
		<td><%= rs.getString("prof")%></td>
	    <td><a href='options.jsp?d=<%=rs.getString("idprof") %>'><input type="button" value="Delete" class="btn btn-danger"></a></td>	
	</tr>
	</form>
<%	
	}
}

catch(Exception ex)
{
	out.println("Connection error");
}
%>
</table>

</tbody>
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
</body>
</html>