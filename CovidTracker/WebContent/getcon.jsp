<%@page import="java.sql.*"%>
<%!Statement st = null;
	Connection cn = null;%>
<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_tracker", "root", "");
    System.out.println("Connected to Database...##....");
	st = cn.createStatement();
} catch(Exception e) {
	e.printStackTrace();
	System.out.println("Error:::: "+e.getMessage());
	
}
%>