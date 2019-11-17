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
		
		
		
	}
}
