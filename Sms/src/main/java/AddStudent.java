

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.connection.DatabaseConnection;

@WebServlet("/AddStudent")
@MultipartConfig
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 String fname = request.getParameter("fname");
		 String lname = request.getParameter("lname");
	     String email = request.getParameter("email");
	     String password = request.getParameter("pass1");
	   
	     String pass = request.getParameter("pass2");
	     String fathername = request.getParameter("father_name");
	     String mothername = request.getParameter("mother_name");
	     String mobile = request.getParameter("contact");
	     String gender = request.getParameter("gender");
	     String dob = request.getParameter("dob");
	     String bgroup = request.getParameter("blood_group");
	     String address = request.getParameter("address");
	     String country = request.getParameter("country");
	     String state = request.getParameter("state");
	     String city = request.getParameter("city");
	     String pincode = request.getParameter("pin_code");
	     String department = request.getParameter("department");
	     String cc="";
	     String course[]=request.getParameterValues("course");
	     
	     for(int i=0;i< course.length;i++){
	         cc+=course[i]+",";
	     }
	  
	     
	     //image 
         Part p=request.getPart("image");
	     
	     String fileName=p.getSubmittedFileName();
	     System.out.println(fileName);
	        
	        
	        RequestDispatcher dispatcher=null;


	        //Inserting all values inside the database
	        try {
	        	dispatcher=request.getRequestDispatcher("signup.jsp");
	        	if(!password.equals(pass)) {
	        		request.setAttribute("status","mismatch");
	        	}
	        	else {
	        		
	            //Connecting database connection and querying in the database
	            int addstudent = DatabaseConnection.insertUpdateFromSqlQuery("insert into students(fname,lname,email,password,father_name,mother_name,gender,dob,blood_group,address,city,state,country,pin_code,course,department,contactno,profile_photo)values('"+fname+"','"+lname+"','" + email + "','" + password + "','"+fathername+"','"+mothername+"','"+gender+"','"+dob+"','"+bgroup+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"','"+cc+"','"+department+"','"+mobile+"','"+fileName+"')");
	            
	            if (addstudent > 0) {
	            	String path=getServletContext().getRealPath("")+"profile-image";
	            	File file=new File(path);
	            	p.write(path+File.separator+fileName);
	            	System.out.println(path);
	           request.setAttribute("status","success");
	               
	            } else {
	            	 request.setAttribute("status","failed");
	            }
	            
	        	}
	            
	            dispatcher.forward(request, response);
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	}

}
