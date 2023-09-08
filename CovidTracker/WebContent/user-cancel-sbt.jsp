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
				String user_id = request.getParameter("user_id");
				System.out.println("user_id:::::::::::::::: "+user_id);
				String query = "update bed_booking set status='green' where pid='"+user_id+"'";					
				System.out.println("query:::::::::::::>>  "+query);
				int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
	%>
			<script language="javascript">
		   		alert("Canceled Successfull");
		   		location.href="user-hospital-bed.jsp";
			</script>
	<%
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error..................."+e.getMessage());
			}	
	%>
</body>
</html>
