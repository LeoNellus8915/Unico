package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Logout extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession(true);
		session.setAttribute("Login", null);
		RequestDispatcher disp = null;
		disp = request.getRequestDispatcher("index.jsp");
		disp.forward(request, response);
	}
}