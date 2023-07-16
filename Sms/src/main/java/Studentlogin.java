

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import user.model.User;
import user.model.UserDao;

import java.io.IOException;
import java.sql.ResultSet;

import com.connection.DatabaseConnection;

@WebServlet("/Studentlogin")
public class Studentlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String email = request.getParameter("email");
	      String password = request.getParameter("password");
	      
	      HttpSession session = request.getSession();
	      
	      RequestDispatcher dispatcher=null;
	        try {
	            //Creating Resultset
	            ResultSet resultset = null;
	            //Query to check Login Details
	            resultset = DatabaseConnection.getResultFromSqlQuery("select * from students where email='" + email + "' and password='" + password + "'");
	            //Checking whether the details of user are null or not
	            UserDao udao = new UserDao(DatabaseConnection.getConnection());
	            User user = udao.userLogin(email, password);
	                if (resultset.next()) {
	            
	                	session.setAttribute("auth", user);
	              	dispatcher=request.getRequestDispatcher("welcome.jsp");
	                } else {
	                	request.setAttribute("status", "failed");
	                
	                	dispatcher=request.getRequestDispatcher("login.jsp");
	                }
	            
	            
	            dispatcher.forward(request,response);

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	}

}
