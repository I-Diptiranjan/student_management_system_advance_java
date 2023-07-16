

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.connection.DatabaseConnection;

@WebServlet("/admindelete")
public class admindelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 RequestDispatcher dispatcher=null;
	   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		 try {
	        	
			 dispatcher=request.getRequestDispatcher("managestudent.jsp");
	        		
	            int remove = DatabaseConnection.insertUpdateFromSqlQuery("delete from students where id='"+id+"'");

	            if (remove > 0) {
	           request.setAttribute("status","success");
	               
	            } else {
	            	 request.setAttribute("status","failed");
	            }
	        	
	            
	            dispatcher.forward(request, response);
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
