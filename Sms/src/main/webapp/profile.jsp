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
 <title>Profile | Registration and Login System</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
</head>


  <body class="sb-nav-fixed">
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

                        <h1 class="mt-4"><%=rs.getString("fname") %> <%=rs.getString("lname") %>'s Profile</h1>
                        <div class="card mb-4">
                     
                            <div class="card-body">
                       
                                <table class="table table-bordered">
                                   <tr>
                                   
                                       <th>Profile Image</th>
                                       <td><img  src="profile-image/<%=rs.getString("profile_photo") %>" width="150px" height="150px"></td>
                                   </tr>
                                   <tr>
                                    <th>First Name</th>
                                       <td><%=rs.getString("fname") %></td>
                                     
                                   </tr>
                                   <tr>
                                       <th>Last Name</th>
                                       <td><%=rs.getString("lname") %></td>
                                   </tr>
                                   <tr>
                                       <th>Email</th>
                                       <td colspan="3"><%=rs.getString("email") %></td>
                                   </tr>
                                     <tr>
                                       <th>Contact No.</th>
                                       <td colspan="3"><%=rs.getString("contactno") %></td>
                                   </tr>
                                   <tr>
                                       <th>Father Name</th>
                                       <td colspan="3"><%=rs.getString("father_name") %></td>
                                   </tr>
                                   <tr>
                                       <th>Mother Name</th>
                                       <td colspan="3"><%=rs.getString("mother_name") %></td>
                                   </tr>
                                   <tr>
                                       <th>Gender</th>
                                       <td colspan="3"><%=rs.getString("gender") %></td>
                                   </tr>
                                   <tr>
                                       <th>Date Of Birth</th>
                                       <td colspan="3"><%=rs.getString("dob") %></td>
                                   </tr>
                                   <tr>
                                       <th>Blood Group</th>
                                       <td colspan="3"><%=rs.getString("blood_group") %></td>
                                   </tr>
                                   <tr>
                                       <th>Address</th>
                                       <td colspan="3"><%=rs.getString("address") %></td>
                                   </tr>
                                   <tr>
                                       <th>City</th>
                                       <td colspan="3"><%=rs.getString("city") %></td>
                                   </tr>
                                   <tr>
                                       <th>State</th>
                                       <td colspan="3"><%=rs.getString("state") %></td>
                                   </tr>
                                   <tr>
                                       <th>Country</th>
                                       <td colspan="3"><%=rs.getString("country") %></td>
                                   </tr>
                                   <tr>
                                       <th>Pin Code</th>
                                       <td colspan="3"><%=rs.getString("pin_code") %></td>
                                   </tr>
                                   <tr>
                                       <th>Course</th>
                                       <td colspan="3"><%=rs.getString("course") %></td>
                                   </tr>
                                   <tr>
                                       <th>Department</th>
                                       <td colspan="3"><%=rs.getString("department") %></td>
                                   </tr>
                                  
                                   
                                        <tr>
                                       <th>Reg. Date</th>
                                       <td colspan="3"><%=rs.getString("posting_date") %></td>
                                     
                                       
                                   </tr>
                                       
                                    </tbody>
                                </table>
                                  <div align="center" > <a href="editprofile.jsp" class="btn btn-success btn-lg">Edit</a></div>
                            </div>
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
    </body>
    
</html>