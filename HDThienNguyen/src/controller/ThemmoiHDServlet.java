package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HoatDongTNDAO;

/**
 * Servlet implementation class ThemmoiHDServlet
 */
public class ThemmoiHDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemmoiHDServlet() {
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
		
		HoatDongTNDAO hdao = new HoatDongTNDAO();
		if("submit".equals(request.getParameter("submit"))){
			String mahd = request.getParameter("mahd");
			String tenhd = request.getParameter("tenhd");
			String motahd = request.getParameter("motahd");
			Date ngaygiobd = Date.valueOf(request.getParameter("ngaygiobd"));
			Date ngaygiokt = Date.valueOf(request.getParameter("ngaygiokt"));
			int sltt = Integer.parseInt(request.getParameter("sltt"));
			int sltd = Integer.parseInt(request.getParameter("sltd"));
			String thoihandk = request.getParameter("thoihandk");
			String matv = request.getParameter("matv");
			String trangthai = request.getParameter("trangthai");
			
			try {
				hdao.insertHD(mahd, tenhd, motahd, ngaygiobd, ngaygiokt, sltt, sltd, thoihandk, trangthai, matv);
				
				response.sendRedirect("DanhsachHDServlet");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("ThemHD.jsp");
			dispatcher.forward(request, response);
		}
	}

}
