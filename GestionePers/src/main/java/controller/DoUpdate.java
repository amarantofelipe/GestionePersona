package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Persona;
import model.PersonaDAO;

/**
 * Servlet implementation class DoUpdate
 */
@WebServlet("/DoUpdate")
public class DoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int eta=Integer.parseInt(request.getParameter("eta"));
		int id = Integer.parseInt(request.getParameter("id"));
		
		PersonaDAO pDAO = new PersonaDAO();
		Persona p = new Persona(request.getParameter("nome"), request.getParameter("cognome"), eta, id);
		
		pDAO.DoUpdate(p);
		
		//request.setAttribute("listaPersone", p);
		
		System.out.println("modificato");
		
		
		List<Persona> lp = pDAO.DatiPersona();
		request.setAttribute("listaPersone", lp);
		
		request.getRequestDispatcher("list.jsp").forward(request, response);
	}

}
