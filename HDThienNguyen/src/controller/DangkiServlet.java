package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Dangki;
import model.DangkiDAO;

/**
 * Servlet implementation class DangkiServlet
 */
public class DangkiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangkiServlet() {
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		DangkiDAO ddao = new DangkiDAO();
		String mahd = request.getParameter("mhd");
		if("submit".equals(request.getParameter("submit"))){
			String matv = request.getParameter("matv");
			String hoten = request.getParameter("hoten");
			Date ngaydangki = Date.valueOf((request.getParameter("ngaydangki")));
			String mhd = request.getParameter("mahd");
			
			try {
				ddao.insertDangki(matv, hoten, ngaydangki, mhd);
				
				response.sendRedirect("Thank.jsp");
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			request.setAttribute("mahd", mahd);
			RequestDispatcher dispatcher = request.getRequestDispatcher("DangKiTGHD.jsp");
			dispatcher.forward(request, response);
		}
	}

}
