

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html"); 
		request.getRequestDispatcher("Navbar.jsp").include(request, response);
	    PrintWriter pw=response.getWriter();
	    
	    Cookie cn=new Cookie("name","");
		Cookie cp=new Cookie("password","");
		Cookie ce=new Cookie("email","");
		Cookie cm=new Cookie("phone","");
		
		cn.setMaxAge(0);
		cp.setMaxAge(0);
		ce.setMaxAge(0);
		cm.setMaxAge(0);
		response.addCookie(cn);
		response.addCookie(cp);
		response.addCookie(ce);
		response.addCookie(cm);
		pw.print("you are successfully logged out!");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
