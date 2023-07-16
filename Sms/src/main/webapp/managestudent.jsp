<%@page import="java.text.DecimalFormat"%>
<%@page import="com.connection.*"%>
<%@page import="user.model.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%
	String auth = (String)request.getSession().getAttribute("admin");
	if (auth != "admin") {
		response.sendRedirect("adminlogin.jsp");
	}
	
	%>


<!DOCTYPE html>
<html> 
<head>

<title>admin</title>

<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link href="css/styles.css" rel="stylesheet">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
       
<style>
table th {
    width: auto !important;
}
</style>
            
</head>
<body class="sb-nav-fixed">
	  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<%@include file="admin/includes/navbar.jsp"%>
        <div id="layoutSidenav">
         <%@include file="admin/includes/sidebar.jsp"%>
            <div id="layoutSidenav_content">
                <main>    
      <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row pad-botm">
                        <div class="col-md-12" >
                            <h4 class="header-line" align="center" style="margin-top:50px ">All Student Details </h4>
                        </div>
                    </div>
                    <div class="row">
                       
                            <div class="panel panel-success">
                                <div class="panel-heading"></div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered border-dark table-hover" border="2px">
                                            <thead>
                                                <tr>
                                                <th>Sno.</th>
                                                 <th>Profile Photo</th>
                                                   <th>First Name</th>
                                                    <th> Last Name</th>
                                                    <th> Email Id</th>
                                                    <th>Contact no.</th>
                                                    <th>Father Name</th>
                                                    <th>Mother Name</th> 
                                                    <th>Date Of Birth</th>
                                                    <th>Gender</th>
                                                    <th>Blood Group</th>
                                                    <th>Address</th>
                                                    <th>City</th> 
                                                    <th>State</th>
                                                    <th>Country</th>
                                                    <th>Pin Code</th>
                                                    <th>Course</th>
                                                    <th>Department</th>
                                                    <th>Reg. Date</th>
                                                    <th>Action</th>
                                                    
                                                </tr>
                                            </thead>
                                        <%
                                            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from students");
                                        int i=1;{
                                            while (rs.next()) {
                                        %>
                                        <tbody>
                                         <tr>
                                                <td><%= i %> <% i++; %></td>
                                         	
                                                 <td><img  src="profile-image/<%=rs.getString("profile_photo") %>" width="150px" height="150px"></td>
                                                <td><%=rs.getString("fname") %></td>
                                                 <td><%=rs.getString("lname") %></td>
                                                  <td><%=rs.getString("email") %></td>
                                                <td><%=rs.getString("contactno") %></td>
                                                 
                                                 <td><%=rs.getString("father_name") %></td>
                                                 <td><%=rs.getString("mother_name") %></td>
                                                 <td><%=rs.getString("dob") %></td>
                                                  <td><%=rs.getString("gender") %></td>
                                                 <td><%=rs.getString("blood_group") %></td>
                                                  <td><%=rs.getString("address") %></td>
                                                  <td><%=rs.getString("city") %></td>
                                                 <td><%=rs.getString("state") %></td>
                                                  <td><%=rs.getString("country") %></td>
                                                   <td><%=rs.getString("pin_code") %></td>
                                                    <td><%=rs.getString("course") %></td>
                                                     <td><%=rs.getString("department") %></td>
                                                      <td><%=rs.getString("posting_date") %></td>
                                                 <td><a class="btn  btn-primary text-white mr-4" href="editstudent.jsp?id=<%=rs.getInt("id") %>">Edit</a>
                                                   <br> <br> <a class="btn btn-danger text-white" href="admindelete?id=<%=rs.getInt("id") %>">Delete</a>
                                                 </td>
                                           </tr>
                                        </tbody>
                                        <%
                                            }  }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                
                </div>
            </div>
        </div>
        </main>
        </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
       
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
	<script>
	var status = document.getElementById("status").value;
	if(status=="success"){
		sweetAlert("Congrats","Student record deletd Successfully !!","success");
	}
	else if(status=="failed"){
		sweetAlert("Sorry"," Server error  !!","error");
	}
	</script>
</body>
</html>