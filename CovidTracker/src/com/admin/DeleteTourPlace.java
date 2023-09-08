package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class DeleteTourPlace
 */
@WebServlet("/DeleteTourPlace")
public class DeleteTourPlace extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cake_id = request.getParameter("cake_id");
		
		try {
			int editTourInfo=DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcake where cake_id='"+cake_id+"'");
			if(editTourInfo>0) {
				response.sendRedirect("admin-cake-list-view.jsp");
			}else {
				response.sendRedirect("admin-cake-list-view.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
