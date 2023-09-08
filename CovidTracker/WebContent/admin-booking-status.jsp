<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*, java.util.Date"%>
<%@ page import="com.twilio.Twilio, com.twilio.rest.api.v2010.account.Message, com.twilio.type.PhoneNumber" %>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>Covid Tracker</title>
</head>
<body>
	<link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css">
	<%
			try {
				
				//Sending SMS start
			    // Find your Account Sid and Auth Token at twilio.com/console
				
				String pid = request.getParameter("pid");
				String pno = request.getParameter("pno");
				String status = request.getParameter("status");
				
				String query = "update bed_booking set status='"+status+"' where pid = '"+pid+"'";					
				System.out.println("query::::::^&^&:::::::>>  "+query);
				int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
				
				
				
				
				
/* 				Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    			System.out.println("phoneno::::&:::::::::>> "+pno);
        			Message message = Message.creator(new PhoneNumber("+91"+pno), new PhoneNumber("+12147052253"), // from
        					"Approved, Hospital Bed Room, Your Patient ID:"+pno).create();
         			System.out.println("id display : "+message.getSid()); */
				
	%>
			<script language="javascript">
		   		alert("Status updated Successfull");
		   		location.href="admin-booked-details.jsp";
			</script>
	<%
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error..................."+e.getMessage());
			}	
	%>
</body>
</html>
