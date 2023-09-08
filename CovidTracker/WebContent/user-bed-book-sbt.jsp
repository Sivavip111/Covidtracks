<%@page import="java.text.SimpleDateFormat, java.util.Date, java.text.DateFormat"%>
<%@ page session="true"%>
<%@ include file="getcon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checking information</title>
</head>
<body>
	<%
		ResultSet rs1 = null;
		int n = 0;
		try {

			String pid = (String) request.getParameter("pid");
			String uid = (String) request.getParameter("uid");
			String pno = (String) request.getParameter("pno");
			String emailid = request.getParameter("emailid");
			String status = (String) request.getParameter("status");
			String slot = request.getParameter("slot");
			String pname = request.getParameter("pname");
			
			//String status="blue";
			Date date = new Date();			
			DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
	        Date dateobj = new Date();
	        System.out.println("current date::: "+df.format(dateobj));
			
			//Insert the value to the database	 
			PreparedStatement ps = null;
			//to update
			String queryadmin = "update bed_booking set pid='"+ pid + "',uid='"+uid+"',pno='"+pno+"',emailid='"+emailid+"',pname='"+pname+"',status='"+status+"',date='"+df.format(dateobj)+"' where bedid='"+slot+"'";
																System.out.println("update.............");
			st.executeUpdate(queryadmin);
		%>	
	<script>
		alert("Submit Successful");
		window.location.href = "user-dashboard.jsp";
	</script>
	<%
		} catch (Exception e) {
			System.out.println("Error while sending SMS>>>>>>>>>>>>>>"+e.getMessage());
			e.printStackTrace();
			%>	
			<script>
				alert("Submit Successful");
				window.location.href = "user-dashboard";
			</script>
			<%
		} finally {
			if (cn != null) {
				cn.close();
			}
			if (st != null) {
				st.close();
			}
		}
	%>
</body>
</html>