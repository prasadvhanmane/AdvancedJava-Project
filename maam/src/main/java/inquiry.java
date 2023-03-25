

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import maam.RegisterDao;
import maam.User;

/**
 * Servlet implementation class inquiry
 */
@WebServlet("/inquiry")
public class inquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inquiry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name=request.getParameter("name");
		 String inq=request.getParameter("interest");
		 String email=request.getParameter("email");
		 String phone=request.getParameter("mobile");
		 //User member=new User(uname, password, email, phone);
		 User cu = new User (name,email,phone,inq);
		 RegisterDao rdao=new RegisterDao();
		 String result=rdao.inquiry(cu);
		 response.getWriter().println(result);
	}

}
