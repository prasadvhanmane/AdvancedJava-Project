

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import maam.AdminRegisterDao;
import maam.RegisterDao;
import maam.User;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//request.getRequestDispatcher("Navbar.jsp").include(request, response);
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email = "";
		String phone = "";
		AdminRegisterDao rdao = new AdminRegisterDao();
	    String result = rdao.CheckLogin(username,password);
		if(result.equals("successfull"))
		{
			User obj=rdao.GetUserdetails(username, password);
			Cookie cn=new Cookie("name",obj.getUname());
			response.addCookie(cn);
			Cookie cp=new Cookie("password",obj.getPassword());
			response.addCookie(cp);
			Cookie ce=new Cookie("email",obj.getEmail());
			response.addCookie(ce);
			Cookie cm=new Cookie("phone",obj.getPhone());
			response.addCookie(cm);
	        response.sendRedirect("AdminHome.jsp");
			
		}
	else
	{
		pw.print("incorrect username & password");
		RequestDispatcher dis = request.getRequestDispatcher("AdminLogin.jsp");
		dis.include(request, response);
	}
		
	}
}
