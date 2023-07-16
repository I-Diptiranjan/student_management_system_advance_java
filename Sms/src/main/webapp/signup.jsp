<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>

    <title> Student Register Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap v5.1.3 CDNs -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
           <link href="assets/css/style.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">

    <!-- CSS File 
    <link rel="stylesheet" href="style.css">-->
     <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    display: flex;
    align-items: center;
    justify-content: center;
    background: #fff;
}

.login {
margin-top:100px;
    width: 800px;
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
    color: black;
}
input
{
	color:black;
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
  margin-left: 200px;
  color: #555;
}
.forget a {
  color: #ff0047;
  margin-left: 10px;
}
    </style>


</head>

<body>
<%@include file='nav.jsp' %>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div class="login">

        <h1 class="text-center">Student Registration Form!</h1>
        <br>
        
        <form class="was-validated" action="AddStudent" method="post" enctype="multipart/form-data">
            
            <div class="row g-3" style="color: black;">
                <div class="col">
                    <label class="form-label" for="name">First Name</label>
                  <input class="form-control" type="text" class="form-control" placeholder="First name" name="fname" required>
                  <div class="invalid-feedback" >
                    Please enter your firstname
                </div>
                </div>
                
                <div class="col">
                    <label class="form-label" for="name">Last Name</label>
                  <input type="text" class="form-control" placeholder="Last name" name="lname"  required>
                  <div class="invalid-feedback">
                    Please enter your lastname
                </div>
                </div>
                
              </div>
              <br>
       
              
                <label class="form-label" for="email" style="color: black;">Email address</label>
                <input class="form-control" type="email"  placeholder="example@example.com" name="email"  required>
                <div class="invalid-feedback">
                    Please enter your email address
                </div>
            
                <br>       
                <label class="form-label" for="password" style="color: black;">Password</label>
                <input  class="form-control" type="password"  name="pass1" placeholder="..........." required>
                <div class="invalid-feedback">
                    Please enter your password
                </div>
            
                <br>
                <label class="form-label" for="password" style="color: black;">Re-Password</label>
                <input class="form-control" type="password"  name="pass2" placeholder="..........." required>
                <div class="invalid-feedback">
                    Please re-enter your password
                </div>

         
                <br>
                <label class="form-label" for="fname" style="color: black;">Father's Name</label>
                <input class="form-control" type="text" placeholder="Enter Father Name"   name="father_name" required>
                <div class="invalid-feedback">
                    Please enter your  father's name
                </div>
             
            
                <br>
                <label class="form-label" for="mname"style="color: black;">Mother's Name</label>
                <input class="form-control" type="text" placeholder="Enter Mother Name"  name="mother_name" required>
                <div class="invalid-feedback">
                    Please enter your Mother's name
                </div>
            

                <br>
                <label class="form-label" for="number"style="color: black;">Phone number</label>
                <input class="form-control" type="number"  placeholder="700XXXXXXX" name="contact" required>
                <div class="invalid-feedback">
                    Please enter your phone number
                </div>
          
                <br>
                <label class="form-label" for="gender" style="color: black;">Gender</label>
                <div class="row ">
                    <div class="col" style="color: black;">
                <input class="form-check-input mt-2" type="radio" value="male" name="gender" required>
                <label class="form-label" for="name" >MALE</label>
                <input class="form-check-input mt-2" type="radio" value="female" name="gender" required>
                <label class="form-label" for="name">FEMALE</label>
                <input class="form-check-input mt-2" type="radio" value="other" name="gender" required>
                <label class="form-label" for="name">OTHER</label>
                <div class="invalid-feedback">
                    Please select the Gender
                </div>
                    </div>
                    
                </div>
                
                <br>
            
            <div class="row g-3" style="color: black;">
                <div class="col">
                    <label class="form-label" for="name">Date Of Birth</label>
                  <input class="form-control" type="date" class="form-control"  name="dob" required>
                  <div class="invalid-feedback">
                    Please select the Date
                </div>
                
            </div>
               
                <div class="col">
                    <label class="form-label" for="name" style="color: black;">Blood Group</label>
                    <select id="inputState" class="form-select" required  style="background-color: #eee;" name="blood_group">
                        <option selected value="" >Choose</option>
                        <option value="A+" >A+</option>
                        <option value="B+" >B+</option>
                        <option value="o+" >0+</option>
                        <option value="AB+" >AB+</option>
                        <option value="o-">0-</option>
                      </select>
                      <div class="invalid-feedback">
                        Please select the Blood Group
                    </div>
                </div>
                
              </div>
             
          <br>
          
            <div style="color: black;">
                <label class="form-label" for="address">Address</label>
                <textarea class="form-control" rows="4"  name="address" required></textarea> 
                <div class="invalid-feedback">
                    Please provide the address
                </div>
            </div>
            <br>

            <div class="row g-3" style=color:black;>
                <div class="col md-4">
                    <label class="form-label" for="name">Contry</label>
                  <input class="form-control" type="name" class="form-control" placeholder="Country"  name="country" required>
                  <div class="invalid-feedback">
                    Please provide Country Name
                </div>
                </div>
 
                <div class="col">
                    <label class="form-label" for="name"style="color: black;">State</label>
                  <input type="text" class="form-control" placeholder="State"  name="state" required>
                  <div class="invalid-feedback">
                    Please provide State Name
                </div>
                </div>

                <div class="col">
                    <label class="form-label" for="inputState"style="color: black;" >city</label>
                  <select id="inputState" class="form-select" style="background-color: #eee;" name="city" required>
                    <option selected value="">Choose</option>
                    <option value="rourkela">Rourkela</option>
                    <option value="Bhubaneswer">Bhubaneswer</option>
                  </select>
                  <div class="invalid-feedback">
                    Please select the city
                </div>
                </div>

              </div>
             
<br>

                <label class="form-label" for="number"style="color: black;">Pin Code</label>
                <input class="form-control" type="number" id="number" colspan="10" placeholder="XXXXXXX"  name="pin_code" required>
                <div class="invalid-feedback">
                    Please provide pin code
                </div>
            
            <br>

                <label class="form-label" for="gender"style="color: black;">Department</label>
                <div class="row ">
                    <div class="col" style="color: black;">
                <input class="form-check-input mt-2" type="radio" value="cse"  name="department"required>
                <label class="form-label" for="name" >CSE</label>
                <input class="form-check-input mt-2" type="radio" value="mca"  name="department"required>
                <label class="form-label" for="name">MCA</label>
                <input class="form-check-input mt-2" type="radio" value="cen" name="department"required>
                <label class="form-label" for="name">CEN</label>
                <input class="form-check-input mt-2" type="radio" value="ece" name="department"required>
                <label class="form-label" for="name">ECE</label>
                <input class="form-check-input mt-2" type="radio" value="eie" name="department"required>
                <label class="form-label" for="name">EIE</label>
                <input class="form-check-input mt-2" type="radio" value="eee" name="department"required>
                <label class="form-label" for="name">EEE</label>
                <div class="invalid-feedback">
                    Please select the Department
                </div>
                <br>
                    </div>
                </div>
        
                <label class="form-label" for="course"style="color: black;">Course</label>
                <div class="row ">
                    <div class="col" style="color: black;">
                <input class="form-check-input mt-2" type="checkbox" value="c" name="course">
                <label class="form-label" for="name">C</label>
                <input class="form-check-input mt-2" type="checkbox" value="c++" name="course">
                <label class="form-label" for="name">C++</label>
                <input class="form-check-input mt-2" type="checkbox" value="java" name="course">
                <label class="form-label" for="name">JAVA</label>
                <input class="form-check-input mt-2" type="checkbox" value="html" name="course">
                <label class="form-label" for="name">HTML</label>
                <input class="form-check-input mt-2" type="checkbox" value="css" name="course">
                <label class="form-label" for="name">CSS</label>
                <input class="form-check-input mt-2" type="checkbox" value="carbon" name="course">
                <label class="form-label" for="name">CARBON</label>
                <input class="form-check-input mt-2" type="checkbox" value="javaScript" name="course">
                <label class="form-label" for="name">JavaScript</label>
               
                    </div>
                </div>
         

<br>
                 <div class="mb-3" style="color: black;">
                    <label for="formFile" class="form-label">Image Upload</label>
                    <input class="form-control" type="file"  name="image" required>
                </div>

                <br>
               
                <input class="btn btn-success w-100" type="submit" value="SUBMIT">


    
         <p class="forget">Have an account !!!<a href="login.jsp">Click Here</a></p>
      
        </form>


    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
	<script>
	var status = document.getElementById("status").value;
	if(status=="success"){
		sweetAlert("Congrats","Account Created Successfully !!","success");
	}
	else if(status=="mismatch"){
		sweetAlert("Sorry"," Password must be same !! ","warning");
	}
	else if(status=="failed"){
		sweetAlert("Sorry"," Server Error  !!","error");
	}
	</script>

</body>

</html>