package com.doctor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class DoctorUpdateProfile
 */
@WebServlet("/DoctorUpdateProfile")
public class DoctorUpdateProfile extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		System.out.println("inside dopost.......................");//uid, dname, emailid, dphoneno, ddob, daadno, dspecialisedin, dexperience
		String uid = request.getParameter("uid");
		String dname = request.getParameter("dname");
		String emailid = request.getParameter("emailid");
		String dphoneno = request.getParameter("dphoneno");
		String ddob = request.getParameter("ddob");
		String daadno = request.getParameter("daadno");
		String dspecialisedin = request.getParameter("dspecialisedin");
		String dexperience = request.getParameter("dexperience");
		HttpSession hs = request.getSession();

		try {

			int updateUserProfile = DatabaseConnection.insertUpdateFromSqlQuery("update tbldoctor set dname='"
					+ dname + "',emailid='" + emailid + "',dphoneno='" + dphoneno + "',ddob='" + ddob + "',daadno='" +daadno+ "',dspecialisedin='"+
					dspecialisedin+"',dexperience='"+dexperience+ "' where doc_id='" + uid + "'");
			if (updateUserProfile > 0) {
				response.sendRedirect("doctor-update-profile.jsp");
			} else {
				response.sendRedirect("doctor-update-profile.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error........."+e.getMessage());
		}

	}

}
