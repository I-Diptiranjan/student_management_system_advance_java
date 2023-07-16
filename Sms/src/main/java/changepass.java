

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

@WebServlet("/changepass")
public class changepass extends HttpServlet {
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
	     User auth = (User) request.getSession().getAttribute("auth");
	     
	     ResultSet rs= DatabaseConnection.getResultFromSqlQuery("select password from students where id='"+auth.getId()+"'");
	    
	     
	     RequestDispatcher dispatcher=null;


	        //Inserting all values inside the database
	        try {
	        	dispatcher=request.getRequestDispatcher("changepassword.jsp");
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
	            int updatepass = DatabaseConnection.insertUpdateFromSqlQuery("update students set password='"+newpass+"' where id='" + auth.getId() +"' ");
	            System.out.print(updatepass);
	            if (updatepass > 0) {
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
