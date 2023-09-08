package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditTourPlace
 */
@WebServlet("/EditTourPlace")
public class EditTourPlace extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String cake_price = request.getParameter("cake_price");
		String cake_description = request.getParameter("cake_description");
		System.out.println("in edit............................");
		try {
			int editTourInfo=DatabaseConnection.insertUpdateFromSqlQuery("update tblcake set cake_name='"+cname+"',"
					+ "cake_price='"+cake_price+"',cake_description='"+cake_description+"'"	+ "where cake_id='"+cid+"'");
			if(editTourInfo>0) {
				response.sendRedirect("admin-cake-list-view.jsp");
			}else {
				response.sendRedirect("admin-cake-list-view.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error in edit............................"+e.getMessage());
		}
		
	}

}