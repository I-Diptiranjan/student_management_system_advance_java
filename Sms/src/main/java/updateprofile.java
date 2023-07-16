

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import user.model.User;

import java.io.File;
import java.io.IOException;

import com.connection.DatabaseConnection;
@WebServlet("/updateprofile")

public class updateprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String fname = request.getParameter("fname");
		 String lname = request.getParameter("lname");
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
	     User auth = (User) request.getSession().getAttribute("auth");
	   
	    
	        
	        RequestDispatcher dispatcher=null;


	        //Inserting all values inside the database
	        try {
	        	dispatcher=request.getRequestDispatcher("editprofile.jsp");
	        		
	            //Connecting database connection and querying in the database
	            int updatestudent = DatabaseConnection.insertUpdateFromSqlQuery("update students set fname='"+fname+"',lname='"+lname+"',father_name='"+fathername+"',mother_name='"+mothername+"',contactno='"+mobile+"',gender='"+gender+"',blood_group='"+bgroup+"',dob='"+dob+"',address='"+address+"',country='"+country+"',state='"+state+"',city='"+city+"',pin_code='"+pincode+"' where id='" + auth.getId() +"' ");
	            
	            if (updatestudent > 0) {
	           request.setAttribute("status","success");
	               
	            } else {
	            	 request.setAttribute("status","failed");
	            }
	                   	
	            
	            dispatcher.forward(request, response);
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	
	}

}
