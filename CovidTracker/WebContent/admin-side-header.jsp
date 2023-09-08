<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3l-headers-9">
	<header>
		<div class="container-fluid">
			<div class="header">
				<div>
					<h5>
						<a href="admin-dashboard.jsp" class="logo" style="padding-left: 50px;">Covid Tracker</a>
					</h5>
				</div>
				<div class="bottom-menu-content">
					<input type="checkbox" id="nav" /> <label for="nav"	class="menu-bar"></label>
					<nav>
						<ul class="menu">
							<!-- <li><a href="add-cake.jsp" class="link-nav">Add Cake</a></li> -->
							<li><a href="admin-patient-list-view.jsp" class="link-nav">Patient List</a></li>
<!-- 							<li><a href="admin-assign-doctor.jsp" class="link-nav">Assign Doctor</a></li> -->
							<li><a href="admin-doctor-list.jsp" class="link-nav">Doctor List</a></li>
							<li><a href="admin-booked-details.jsp" class="link-nav">BookedDetails</a></li>
									
							<li><a href="admin-view-feedback.jsp" class="link-nav">Users Feedback</a></li>
							<li style="padding-right: 50px;"><label for="drop-3" class="toggle toogle-2"><%=session.getAttribute("uname")%>
									<span class="fa fa-angle-down" aria-hidden="true"></span> </label> <a
								href="#blog" class="link-nav dropdown-toggle"><%=session.getAttribute("uname")%>
									<span class="fa fa-angle-down" aria-hidden="true"></span></a> <input type="checkbox" id="drop-3" />
								<ul>
									<li><a href="admin-change-password.jsp">Change Password</a></li>
									<li><a href="admin-contact-details.jsp">Contact Details</a></li>
									<li><a href="admin-logout.jsp">Log Out</a></li>
								</ul></li>

						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</div>