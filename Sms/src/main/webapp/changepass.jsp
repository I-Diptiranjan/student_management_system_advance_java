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
<meta charset="ISO-8859-1">
  <title>Change password | Registration and Login System</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
</head>

<body class="sb-nav-fixed">
	  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
   <%@include file="/admin/includes/navbar.jsp"%>
        <div id="layoutSidenav">
                    <%@include file="/admin/includes/sidebar.jsp"%>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        

                        <h1 class="mt-4">Change Password</h1>
                        <div class="card mb-4">
                     <form action="adminchangepass" method="post">
                            <div class="card-body">
                                <table class="table table-bordered">
                                   <tr>
                                    <th>Current Password</th>
                                       <td><input class="form-control"  name="currentpassword" type="password"  required /></td>
                                   </tr>
                                   <tr>
                                       <th>New Password</th>
                                       <td><input class="form-control"  name="newpassword" type="password" required /></td>
                                   </tr>
                                         <tr>
                                       <th>Confirm Password</th>
                                       <td colspan="3"><input class="form-control" name="confirmpassword" type="password"  required /></td>
                                   </tr>
                  
                                   <tr>
                                       <td colspan="4" style="text-align:center ;"><button type="submit" class="btn btn-primary btn-block" name="update">Change</button></td>

                                   </tr>
                                    </tbody>
                                </table>
                            </div>
                            </form>
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
		sweetAlert("Congrats","Password changed Successfully !!","success");
	}
	else if(status=="mismatch"){
		sweetAlert("Sorry"," Old Password Mismatch  !!","warning");
	}
	else if(status=="failed"){
		sweetAlert("Sorry"," Password Should be matched  !!","error");
	}
	</script>
    </body>

</html>