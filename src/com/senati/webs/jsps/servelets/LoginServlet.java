package com.senati.webs.jsps.servelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.senati.web.jsps.servelets.vo.VOLogin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginWeb.jr")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//obtener el valor del usuario
		String usuario = request.getParameter("usuario");
		String clave = request.getParameter("clave");
		String correo = request.getParameter("correo");
		
		if (usuario.equals("manuel") && clave.equals("123456") && correo.equals("mc590741@gmail.com")) {
			VOLogin VO = new VOLogin();
			VO.setUsuario(usuario);
			VO.setClave(clave);
			VO.setNombre("manuel");
			VO.setEdad(19);
			System.out.println("Bienvenido " + usuario);
			HttpSession session = request.getSession(true);
			session.setAttribute("usuarioLogueado", VO);
			request.getRequestDispatcher("bienvenida.jsp").forward(request,response);
			
		}else {
			System.out.println("No tiene acceso");
		}		
	}
}
