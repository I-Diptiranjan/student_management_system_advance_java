<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@page import="com.connection.*"%>
<%@page import="user.model.*"%>
<%@page import="java.util.*"%>    
<%@page import="java.sql.*" %>
    
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Edit Profile | Registration and Login System</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
</head>

    <body class="sb-nav-fixed">
     <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
      <%@include file="/includes/navbar.jsp"%>
        <div id="layoutSidenav">
                    <%@include file="/includes/sidebar.jsp"%>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        
   <%
                                       ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from students where id='"+auth.getId()+"'");
                                            while (rs.next()) {
                                        %> 
                        <h1 class="mt-4"><%=rs.getString("fname") %> <%=rs.getString("lname") %>'s Edit  Profile</h1>
                        <div class="card mb-4">
                     <form action="updateprofile" method="post">
                            <div class="card-body">
                                <table class="table table-bordered">
                                   <tr>
                                    <th>First Name</th>
                                       <td><input class="form-control" id="fname" name="fname" type="text" value="<%=rs.getString("fname") %>" required /></td>
                                   </tr>
                                   <tr>
                                       <th>Last Name</th>
                                       <td><input class="form-control" id="lname" name="lname" type="text" value="<%=rs.getString("lname") %>"   required /></td>
                                   </tr>
                                         <tr>
                                       <th>Contact No.</th>
                                       <td colspan="3"><input class="form-control" id="contact" name="contact" type="text" value="<%=rs.getString("contactno") %>"  pattern="[0-9]{10}" title="10 numeric characters only"  maxlength="10" required /></td>
                                   </tr>
                                   <tr>
                                       <th>Email</th>
                                       <td colspan="3"><%=rs.getString("email") %> </td>
                                   </tr>

                                   </tr>
                                         <tr>
                                       <th>Father Name</th>
                                       <td colspan="3"><input class="form-control"  name="father_name" type="text" value="<%=rs.getString("father_name") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Mother Name</th>
                                       <td colspan="3"><input class="form-control"  name="mother_name" type="text" value="<%=rs.getString("mother_name") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Gender</th>
                                       <td colspan="3"><input class="form-control" name="gender" type="text" value="<%=rs.getString("gender") %>" required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Date Of Birth</th>
                                       <td colspan="3"><input class="form-control" id="contact" name="dob" type="date" value="<%=rs.getString("dob") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Blood Group</th>
                                       <td colspan="3"><input class="form-control"  name="blood_group" type="text" value="<%=rs.getString("blood_group") %>" required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Address</th>
                                       <td colspan="3"><input class="form-control"  name="address" type="text" value="<%=rs.getString("address") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>City</th>
                                       <td colspan="3"><input class="form-control"  name="city" type="text" value="<%=rs.getString("city") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>State</th>
                                       <td colspan="3"><input class="form-control"  name="state" type="text" value="<%=rs.getString("state") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Country</th>
                                       <td colspan="3"><input class="form-control"  name="country" type="text" value="<%=rs.getString("country") %>"  required /></td>
                                   </tr>
                               
                                   </tr>
                                         <tr>
                                       <th>Pin code</th>
                                       <td colspan="3"><input class="form-control"  name="pin_code" type="text" value="<%=rs.getString("pin_code") %>"  required /></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Course</th>
                                       <td colspan="3"><%=rs.getString("course") %></td>
                                   </tr>
                                   </tr>
                                         <tr>
                                       <th>Department</th>
                                       <td colspan="3"><%=rs.getString("department") %></td>
                                   </tr>
                                        <tr>
                                       <th>Reg. Date</th>
                                       <td colspan="3"><%=rs.getString("posting_date") %> </td>
                                   </tr>
                                   <tr>
                                       <td colspan="4" style="text-align:center ;"><button type="submit" class="btn btn-primary btn-block" name="update">Update</button></td>

                                   </tr>
                                    </tbody>
                                </table>
                            </div>
                            </form>
                        </div>
 <%
                                            }
                                        %>

                    </div>
                </main>
 
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
	<script>
	var status = document.getElementById("status").value;
	if(status=="success"){
		sweetAlert("Congrats","Profile Updated Successfully !!","success");
	}
	else if(status=="failed"){
		sweetAlert("Sorry"," Server Error  !!","error");
	}
	</script>
    </body>
</html>