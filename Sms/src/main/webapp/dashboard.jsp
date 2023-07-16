<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="user.model.*"%>
 <%@page import="com.connection.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
 <%
	String auth = (String)request.getSession().getAttribute("admin");
	if (auth != "admin") {
		response.sendRedirect("adminlogin.jsp");
	}
	
	%>

    <!DOCTYPE html>
<html lang="en">
    <head>
    	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard</title>
       <link rel="stylesheet" href="css/index/style.css">
          <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
 <%@include file="admin/includes/navbar.jsp"%>
        <div id="layoutSidenav">
         <%@include file="admin/includes/sidebar.jsp"%>
            <div id="layoutSidenav_content">
                <main>       
            <div id="layoutSidenav_content">
                    <div class="container-fluid px-4">
                        <h1 class="mt-4" align="center">Admin Dashboard</h1>
                       
                        <div class="row my-4">
                            <div class="col-xl-3">
                                <div class="card bg-primary text-white mb-4">
                                
                                
                                <%
                                            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select count(id) from students");
                            
                                            while (rs.next()) {
                                        %>
                                        
                                    <div class="card-body">All Students <h1><%=rs.getInt(1) %></h1></div>
                                     <%
                                            } 
                                        %>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="managestudent.jsp">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                           
                             
                               
                        </div>
                      </div>
                      </div>
                      </main>
                      </div>
                      </div>
           
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
 
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
   <script src="../js/scripts.js"></script>
    </body>
</html>
    