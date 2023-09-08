package com.doctor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.algorithm.AES;
import com.connection.DatabaseConnection;

/**
 * Servlet implementation class UserChangePassword
 */
@WebServlet("/DoctorChangePassword")
public class DoctorChangePassword extends HttpServlet {
	final String secretKey = "%@ajdhdklddf";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpassword = request.getParameter("cpassword");
		String password = request.getParameter("password");
		String confpass = request.getParameter("confpass");
		String pass = "";
		HttpSession session = request.getSession();
		try {
			Connection con = DatabaseConnection.getConnection();
			Statement statement = con.createStatement();
			ResultSet resultset = statement.executeQuery("select dpwd from tbldoctor where duname='" + session.getAttribute("uname") + "'");
			System.out.println(".......................$@#$$@#......................");
			if (resultset.next()) {
				pass = resultset.getString(1);
			}
			if (password.equals(confpass)) {
					int i = statement.executeUpdate("update tbldoctor set dpwd='" + password + "' where duname='" + session.getAttribute("uname") + "' ");
					response.sendRedirect("doctor-change-password.jsp");
				} else {
					response.sendRedirect("doctor-change-password.jsp");
				}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error............... "+e.getMessage());
		}
	}

}
