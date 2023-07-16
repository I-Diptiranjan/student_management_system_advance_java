

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import user.model.User;

import java.io.IOException;
import java.sql.ResultSet;

import com.connection.DatabaseConnection;
@WebServlet("/adminchangepass")

public class adminchangepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String currpass = request.getParameter("currentpassword");
		 String newpass = request.getParameter("newpassword");
	     String pass = request.getParameter("confirmpassword");
	     String checkpass="";
	    
	     
	     ResultSet rs= DatabaseConnection.getResultFromSqlQuery("select password from admin");
	    
	     
	     RequestDispatcher dispatcher=null;


	        //Inserting all values inside the database
	        try {
	        	
	        	 while (rs.next()) {
	    	    	 checkpass=rs.getString("password");
	    	     }
	        	 if(!currpass.equals(checkpass)) {
	        		 request.setAttribute("status", "mismatch");
	        	 }
	        	 else if(!newpass.equals(pass)) {
	        		request.setAttribute("status","failed");
	        	}
	        	else {	
	            //Connecting database connection and querying in the database
	            int updatepass = DatabaseConnection.insertUpdateFromSqlQuery("update admin set password='"+newpass+"'");
	            System.out.print(updatepass);
	            if (updatepass > 0) {
	           request.setAttribute("status","success");
	         
	             
	            } else {
	            	 request.setAttribute("status","failed");
	            	
	            }
	        	}
	        	 
	        	 dispatcher=request.getRequestDispatcher("changepass.jsp");
	          dispatcher.forward(request, response);
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	}

}
