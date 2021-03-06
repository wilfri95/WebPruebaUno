package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciosueldo.ServicioSueldoProxy;

/**
 * Servlet implementation class ReporteProf
 */
public class ReporteProf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReporteProf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String resultado="";
		String rutProfesor = request.getParameter("rutProfe");


		ServicioSueldoProxy sueldos = new ServicioSueldoProxy();
		resultado = sueldos.consSueldoProf(rutProfesor);
		
		if(resultado!=null){
			request.setAttribute("mensaje1", resultado);
		} else {
			request.setAttribute("mensaje1", "No se encontr� el profesor");
		}

		request.getRequestDispatcher("/ReporteSueldo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
