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
				System.out.println("doctnamephno:::::::::: "+doctnamephno);
				System.out.println("homehosp::::::::::"+homehosp);
				
				
				String[] str = doctnamephno.split("[,]", 0);
				System.out.println(str[0]);
				System.out.println(str[1]);
				
				String query = "";
				if (request.getParameter("homehosp") != "" && request.getParameter("homehosp").equals("homeq")) { System.out.println("inside if");					
					query = "update tblpatient set homeqstatus='true', docname='"+str[0]+"' , docphno='"+str[1]+"', asigndocdate='"+new Date().getDate()+"/"+new Date().getMonth()+"/2022"+"' where pat_id='"+patient_id+"'";					
				} else { System.out.println("inside else");
					query = "update tblpatient set hosstatus='true', docname='"+str[0]+"' , docphno='"+str[1]+"', asigndocdate='"+new Date().getDate()+"/"+new Date().getMonth()+"/2022"+"'  where pat_id='"+patient_id+"'";
				}
				System.out.println("query:::::::::::::>>  "+query);
				int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
				
				//Sending SMS start
			    // Find your Account Sid and Auth Token at twilio.com/console

        			/* Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        			System.out.println("phoneno:::::::::::::>> "+phoneno);
        			if(request.getParameter("homehosp").equals("homeq")) { System.out.println("HomeQ");
            			Message message = Message.creator(new PhoneNumber("+91"+phoneno), new PhoneNumber("+12147052253"), // from
            					"Approved, Home Quarntine, Doctor will be visting soon, Your Patient ID:"+patient_id).create();
            			System.out.println("1: "+message.getSid());
        			} if(request.getParameter("homehosp").equals("hosp")) { System.out.println("hosp");
            			Message message = Message.creator(new PhoneNumber("+91"+phoneno), new PhoneNumber("+12147052253"), // from
            					"Approved, for admission in Govt. hospital, Visit hospital your Patient ID is :"+patient_id).create();
            			System.out.println("2: "+message.getSid());
        			} */
				if (i > 0) {
					System.out.println("inside if............");
	%>
			<script language="javascript">
		   		alert("Confirmed Successfull");
		   		location.href="admin-patient-list-view.jsp";
			</script>
	<%
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error..................."+e.getMessage());
			}	
	%>
</body>
</html>
