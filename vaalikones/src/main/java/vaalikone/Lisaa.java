package vaalikone;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Lisaa
 */
public class Lisaa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lisaa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        //EntityManagerFactory f = Persistence.createEntityManagerFactory("vaalikones");
        //EntityManager entitym = f.createEntityManager();
		
		String etunimi = request.getParameter("etunimi");
		request.setAttribute("Etunimi", etunimi);
		String sukunimi = request.getParameter("sukunimi");
		request.setAttribute("Sukunimi", sukunimi);
		
        
		String message = "This is a message from Lisaa.java";
		request.setAttribute("Message", message);
		
		RequestDispatcher reqDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/Add.jsp");
        reqDispatcher.forward(request,response);        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
