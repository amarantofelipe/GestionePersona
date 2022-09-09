package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.Connessione;
import model.Persona;
import model.PersonaDAO;


@WebServlet("/Inserimento")
public class Inserimento extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Inserimento() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("ok");
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int eta=Integer.parseInt(request.getParameter("eta"));
		
		PersonaDAO pDAO = new PersonaDAO();
		Persona p = new Persona(request.getParameter("nome"), request.getParameter("cognome"), eta);		
		
		
		//pDAO.InserisciPersona(p);
		
		boolean inserimento = pDAO.InserisciPersona(p);
		
		HttpSession session = request.getSession();
		session.setAttribute("inserimento", inserimento);
		
		System.out.println("ok");
		
		//response.sendRedirect("index.html");
		
		response.sendRedirect("home.jsp");
		
		//request.getRequestDispatcher("home.jsp").forward(request, response);
	}

}
