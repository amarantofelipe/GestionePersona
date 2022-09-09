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


@WebServlet("/Utenti")
public class Utenti extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Utenti() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int pagine;
		
		PersonaDAO pDAO = new PersonaDAO();
		
		int pagina = Integer.parseInt(request.getParameter("page"));
		
		List<Persona> lp = pDAO.paginazione(pagina);
		request.setAttribute("listaPersone", lp);
		
		
		pagine = pDAO.TotPagine();
		
		request.setAttribute("totPag", pagine);
		
		request.setAttribute("page", pagina);
		
		pagina-=1;
		
		if (pagina > 0) {
			pagina = pagina *3;
		}
		
		request.getRequestDispatcher("list.jsp").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}
}
