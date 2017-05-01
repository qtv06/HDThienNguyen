package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DanhgiaDAO;

/**
 * Servlet implementation class DanhgiaHDServlet
 */
public class DanhgiaHDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanhgiaHDServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String mhd = request.getParameter("mhd");
		DanhgiaDAO ddao = new DanhgiaDAO();
		if("submit".equals(request.getParameter("submit"))){
			String matv = request.getParameter("matv");
			String mahd = request.getParameter("mahd");
			int diemtruongdoan = Integer.parseInt(request.getParameter("diemtruongdoan"));
			int diemtieuchi1 = Integer.parseInt(request.getParameter("tieuchi1"));
			int diemtieuchi2 = Integer.parseInt(request.getParameter("tieuchi2"));
			int diemtieuchi3 = Integer.parseInt(request.getParameter("tieuchi3"));
			
			try {
				ddao.insertDanhgia(matv, mahd, diemtruongdoan, diemtieuchi1, diemtieuchi2, diemtieuchi3);
				response.sendRedirect("Thank.jsp");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			request.setAttribute("mahd", mhd);
			RequestDispatcher dispatcher = request.getRequestDispatcher("danhgia.jsp");
			dispatcher.forward(request, response);
		}
	}

}
