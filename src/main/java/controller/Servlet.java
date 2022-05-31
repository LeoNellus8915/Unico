package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Main;

public class Servlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher disp = null;
		HttpSession session = request.getSession(true);
		Main main = new Main();
		String servlet = request.getParameter("Servlet");
		
		if (servlet.equals("login"))
		{
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if (main.Login(email, password) == true)
			{
				session.setAttribute("Login", 1);
				session.setAttribute("Utente", email);
				disp = request.getRequestDispatcher("home.jsp");
			}
			else
				disp = request.getRequestDispatcher("exist.jsp");
			disp.forward(request, response);
		}
		
		if (servlet.equals("register"))
		{
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String password2 = request.getParameter("password2");
			if ((password.equals(password2)) && (main.Register2(email) == false))
			{
				main.Register(email, password);
				disp = request.getRequestDispatcher("tabella.jsp");
			}
			else
				disp = request.getRequestDispatcher("exist.jsp");
			disp.forward(request, response);
		}
		
		if (servlet.equals("logout"))
		{
			session.setAttribute("Login", null);
			disp = request.getRequestDispatcher("index.jsp");
			disp.forward(request, response);
		}
	}
}