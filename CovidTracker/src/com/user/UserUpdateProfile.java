package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class UserUpdateProfile
 */
@WebServlet("/UserUpdateProfile")
public class UserUpdateProfile extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//pid  cname  emailid   phoneno  dob  aadno  latitude  longitude
		String pid = request.getParameter("pid");
		String cname = request.getParameter("cname");
		String emailid = request.getParameter("emailid");
		String dob = request.getParameter("dob");
		String aadno = request.getParameter("aadno");
		String phoneno = request.getParameter("phoneno");
		String latitude = request.getParameter("latitude");
		String longitude = request.getParameter("longitude");
		HttpSession hs = request.getSession();

		try {

			int updateUserProfile = DatabaseConnection.insertUpdateFromSqlQuery("update tblpatient set cname='"
					+ cname + "',emailid='" + emailid + "',dob='" + dob + "',aadno='" + aadno+ "',phoneno='" + phoneno+ "',plat='" + latitude+ "',"
					+ "plong='" + longitude	+ "' where pat_id='" + pid + "'");
			if (updateUserProfile > 0) {
				response.sendRedirect("user-patientlist.jsp");
			} else {
				response.sendRedirect("user-patientlist.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
