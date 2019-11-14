package webapp;

import java.io.IOException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import java.net.Authenticator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/email.do")
public class QueueServlet extends HttpServlet {
	private UserValidationService service = new UserValidationService();
	private SendEmail email = new SendEmail();
	private Order order;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		//request.setAttribute("name", request.getParameter("name"));
		request.getRequestDispatcher("/WEB-INF/queue.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		email.sendIt();
		
		/*String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		boolean isValidUser = service.isUserValid(name, pass);
		if (isValidUser) {	
			request.setAttribute("name", name);
			request.getRequestDispatcher("/WEB-INF/servlet.jsp").forward(request, response);
		}else {
			request.setAttribute("errormessage", "Invalid Credentials");
			request.getRequestDispatcher("/WEB-INF/queue.jsp").forward(request,response);
		}*/
		
		//request.getRequestDispatcher("/WEB-INF/servlet.jsp").forward(request, response); forwards page to servlet.jsp
		
	}
}
