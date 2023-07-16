<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap v5.1.3 CDNs -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="assets/css/style.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
    
     <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #fff;
}

.login {
    width: 450px;
    height: min-content;
    padding: 40px 40px 80px;
    border-radius: 12px;
    background: #eee;
    text-align: left;
    box-shadow: -5px -5px 10px rgba(255, 255, 255, 0.05),
    5px 5px 15px rgba(0, 0, 0, 0.5);
}

.login h1 {
    font-size: 36px;
    margin-bottom: 25px;
    color: black;
    font-weight: 500;
    letter-spacing: 2px;
}

.login form {
    font-size: 20px;
    color: #fff;
}

.login form .form-group {
    margin-bottom: 12px;
    color: black;
}

.login form input[type="submit"] {
    font-size: 20px;
    margin-top: 15px;
    color: black;

}
.form-control{
  color: black;
  background: #eee;
  box-shadow: inset -2px -2px 6px rgba(255, 255, 255, 0.1),
}
.forget {
  margin-top: 20px;
  margin-left: 45px;
  color: #555;
}
.forget a {
  color: #ff0047;
  margin-left: 9px;
}
    </style>
    
</head>

<body>
<%@include file='nav.jsp' %>
    <div class="login">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
        <h1 class="text-center">Hello Again!</h1>
        
        <form action="Studentlogin" method="post" class="needs-validation">
            <div class="form-group was-validated">
                <label class="form-label" for="email" style="color: black;">Email address</label>
                <input class="form-control" type="email"  name="email" required>
                <div class="invalid-feedback">
                    Please enter your email address
                </div>
            </div>
            <div class="form-group was-validated">
                <label class="form-label" for="password" style="color: black;">Password</label>
                <input class="form-control" type="password"  name="password" required>
                <div class="invalid-feedback">
                    Please enter your password
                </div>
            </div>
          
            <input class="btn btn-success w-100" type="submit" value="SUBMIT" name="login" style="color: black;"> 
    
         <p class="forget">Don't have an account ?<a href="signup.jsp">Click Here</a></p>
      
        </form>


    </div>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
	<script>
	var status = document.getElementById("status").value;
	if(status == "failed"){
		sweetAlert("Sorry","Login Failed !!","error");
	}
	</script>
</body>

</html>