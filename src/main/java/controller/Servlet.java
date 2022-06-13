package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

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
		if (servlet.equals("profilo"))
		{
			String nome = request.getParameter("nome");
			String cognome = request.getParameter("cognome");
			String recapito = request.getParameter("recapito");
			String citta_allocazione = request.getParameter("citta_allocazione");
			String ruolo = request.getParameter("ruolo");
			String competenza_principale = request.getParameter("competenza_principale");
			String data_colloquio = request.getParameter("data_colloquio");
			String anno_colloquio = request.getParameter("anno_colloquio");
			String esito_colloquio = request.getParameter("esito_colloquio");
			String impressioni = request.getParameter("impressioni");
			String fonte_reperimento = request.getParameter("fonte_reperimento");
			String costo_giornaliero = request.getParameter("costo_giornaliero");
			String possibilita_lavorativa = request.getParameter("possibilita_lavorativa");
			String skill = request.getParameter("skill");
			String tech1 = request.getParameter("tech1");
			String tech2 = request.getParameter("tech2");
			String tech3 = request.getParameter("tech3");
			String tech4 = request.getParameter("tech4");
			String tech5 = request.getParameter("tech5");
			String lingua1 = request.getParameter("lingua1");
			String lingua2 = request.getParameter("lingua2");
			String lingua3 = request.getParameter("lingua3");
			String competenze_totali = request.getParameter("competenze_totali");
			String certificazioni = request.getParameter("certificazioni");
			String seniority = request.getParameter("seniority");	
			main.salva(nome, cognome, recapito, citta_allocazione, ruolo, competenza_principale, data_colloquio, anno_colloquio, esito_colloquio, impressioni,
						fonte_reperimento, costo_giornaliero, possibilita_lavorativa, skill, tech1, tech2, tech3, tech4, tech5, lingua1, lingua2, lingua3,
						competenze_totali, certificazioni, seniority);
			disp = request.getRequestDispatcher("home.jsp");
			disp.forward(request, response);
		}
		if (servlet.equals("ricerca"))
		{
			List profili = main.ricerca();
			response.getWriter().println(profili);
		}
	}
}