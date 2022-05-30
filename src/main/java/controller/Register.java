package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import model.Main;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Register extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Main user = new Main();
		RequestDispatcher register = null;
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		if ((password.equals(password2)) && (user.Register2(email) == false))
		{
			user.Register(email, password);
			register = request.getRequestDispatcher("tabella.jsp");
		}
		else
			register = request.getRequestDispatcher("exist.jsp");
		register.forward(request, response);
	}
}