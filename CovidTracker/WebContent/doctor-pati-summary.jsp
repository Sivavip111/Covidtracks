<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*, java.util.Date"%>
<%@ page import="com.twilio.Twilio, com.twilio.rest.api.v2010.account.Message, com.twilio.type.PhoneNumber" %>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from demo.w3layouts.com/demosWTR/Freedom/19-02-2020/traveling-freedom-demo_Free/1171185230/web/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Oct 2020 04:37:51 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<title>Covid Tracker</title>
</head>
<body>
	<link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css">
	<%
			try {
				String homehosp = request.getParameter("homehosp");
				String patient_id = request.getParameter("patient_id");  System.out.println("patient_id:::::: "+patient_id);
				String phoneno = request.getParameter("phoneno");
				String doctnamephno = request.getParameter("doctnamephno");
				String enddate = request.getParameter("enddate");
				String summary = request.getParameter("summary");
				String dvt = request.getParameter("dvt");
				String medicine = request.getParameter("medicine");
				
				String query = "update tblpatient set enddate='"+enddate+"', summary='"+summary+"', dvt='"+dvt+"', medicine='"+medicine+"' where pat_id = '"+patient_id+"'";					
				System.out.println("query:::::::::::::>>  "+query);
				int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
	%>
			<script language="javascript">
		   		alert("Summary added Successfull");
		   		location.href="doctor-dashboard.jsp";
			</script>
	<%
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error..................."+e.getMessage());
			}	
	%>
</body>
</html>
