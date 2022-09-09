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


@WebServlet("/Cancellazione")
public class Cancellazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cancellazione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("id"));
		PersonaDAO pDAO = new PersonaDAO();
		
		
		pDAO.EliminaPersona(id);
		
		List<Persona> lp = pDAO.DatiPersona();
		request.setAttribute("listaPersone", lp);
		
		request.getRequestDispatcher("list.jsp?page=1").forward(request, response);
		
		System.out.println("ok");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
