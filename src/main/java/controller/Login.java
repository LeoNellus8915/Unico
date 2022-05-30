package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Main;

public class Login extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher login = null;
		HttpSession session = request.getSession(true);
		Main main = new Main();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if (main.Login(email, password) == true)
		{
			session.setAttribute("Login", 1);
			request.setAttribute("Utente", email);
			login = request.getRequestDispatcher("home.jsp");
		}
		else
			login = request.getRequestDispatcher("exist.jsp");
		login.forward(request, response);
	}
}