<!-- Created by OOP's, June 14/07/2022 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="javax.print.DocFlavor.STRING"%>
<%@ page import="java.util.*,java.sql.*,java.util.Date"%>
<%@ page import="javax.mail.Authenticator,javax.mail.Message,javax.mail.MessagingException,javax.mail.PasswordAuthentication,javax.mail.Session,javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" %>
<%@ include file="getcon.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("inside Doctor approve........................");
		ResultSet rs1 = null;
		int n = 0;
		PreparedStatement ps1 = null;
		String did = request.getParameter("d_id");
		System.out.println("welcome to Doctor id Confirmation .....*^&*^&^&..................."+did);
		try {
				String querypass = "update tbldoctor set dstatus='true' where doc_id = '"+did+"'";
				System.out.println("2 querypass......."+querypass);
				ps1 = cn.prepareStatement(querypass);
				ps1.executeUpdate();

				if (cn != null) {
	%>
			 <script language="javascript">
			   alert("Doctor Approved Successfully");
			   location.href="admin-doctor-list.jsp";
			 </script>
	<%
			}
		} catch (Exception e) {
			System.out.println("Error!::: " + e.getMessage());
			e.printStackTrace();
		} finally {
			if (ps1 != null) {
				ps1.close();
			}
			if (cn != null) {
				cn.close();
			}
			if (st != null) {
				st.close();
			}
			if (rs1 != null) {
				rs1.close();
			}
		}
	%>
</body>
</html>