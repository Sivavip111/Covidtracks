package com.doctor;

	import java.io.IOException;
	import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.Random;
	import java.util.UUID;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

	import com.algorithm.AES;
	import com.connection.DatabaseConnection;

	/**
	 * Servlet implementation class UserLogin
	 */
	@WebServlet("/DoctorLogin")
	public class DoctorLogin extends HttpServlet {
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				final String secretKey = "%@ajdhdklddf";
				String uname = request.getParameter("uname");
				String pass = request.getParameter("upass");
				String encryptPass= AES.encrypt(pass, secretKey);
				String vercode = request.getParameter("vercode");
				String captchaDB = null;
				HttpSession hs = request.getSession();
				String tokens = UUID.randomUUID().toString();
				Random random = new Random();
				int newRandomCaptcha = random.nextInt(9000) + 10000;
				Connection con = DatabaseConnection.getConnection();
				Statement st = con.createStatement();
				ResultSet captchResultSet = DatabaseConnection.getResultFromSqlQuery("select * from tblcaptcha");
				if (captchResultSet.next()) {
					captchaDB = captchResultSet.getString(1);
				}
				if (captchaDB.equals(vercode)) {
					String query = "select * from tbldoctor where duname='" + uname + "' and dstatus='true' AND dpwd='" + pass + "'";
					System.out.println("query........................."+query);
					ResultSet resultset = st.executeQuery(query);
					if (resultset.next()) {
						System.out.println("reset...................");
						hs.setAttribute("uname",resultset.getString("duname"));
						hs.setAttribute("user_email",resultset.getString("emailid"));
						//hs.setAttribute("user_address",resultset.getString("user_address"));
						response.sendRedirect("doctor-dashboard.jsp?_tokens='" + tokens + "'");
					} else {
						System.out.println("else...................");
						String message = "You have enter wrong credentials and Admin Approval is required";
						hs.setAttribute("credential", message);
						response.sendRedirect("doctor-login.jsp");
						int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='"+ newRandomCaptcha + "'");
					}
				} else {
					System.out.println("else else...................");
					String message = "You have enter invalid verification code";
					hs.setAttribute("verificationCode", message);
					response.sendRedirect("doctor-dashboard.jsp");
					int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='"+ newRandomCaptcha + "'");
				}
			} catch (Exception e) {
				System.out.println("Error in DoctorLogin..........."+e.getMessage());
				e.printStackTrace();
			}
		}

	}
