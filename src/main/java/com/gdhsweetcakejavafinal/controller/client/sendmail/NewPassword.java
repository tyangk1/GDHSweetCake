package com.gdhsweetcakejavafinal.controller.client.sendmail;

import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet(name = "NewPassword", urlPatterns = {"/newPassword"})
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.getRequestDispatcher("/view/client/newPassword.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				new DBConnect();
				Connection conn = DBConnect.getConnect();
				PreparedStatement pst = conn.prepareStatement("update khachhang set MatKhau = ? where Email = ? ");
				pst.setString(1, MaHoa.maHoaDuLieu(newPassword));
				pst.setString(2, (String) session.getAttribute("email"));
				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "resetSuccess");
					response.sendRedirect( request.getContextPath()+"/login");
				} else {
					request.setAttribute("status", "resetFailed");
					response.sendRedirect( request.getContextPath()+"/login");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
