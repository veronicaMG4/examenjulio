package Controladores;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.model.pojo.Libro;

;

/**
 * Servlet implementation class controladorbueno
 */
@WebServlet("/controladorbueno")
public class controladorbueno extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ArrayList<Libro> listalibros;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("1º peticion de un cliente");
		listalibros = new ArrayList<Libro>();
		Libro l1 = new Libro();
		Libro l2 = new Libro("la princesa prometida",4);
		Libro l3 = new Libro("la dalia negra",3);
		Libro.add(l2);
		Libro.add(l3);
		
			
	}

	public void destroy() {
		System.out.println("Al parar el servidor");
	}
   
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Antes de servir GET o POST");
		super.service(request, response);
		System.out.println("Despues de servir GET o POST");
		
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controladorbueno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = request.getParameter("op");
		request.setAttribute("libros", listalibros);	
		request.getRequestDispatcher("listadolibros.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
