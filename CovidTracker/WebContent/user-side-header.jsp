<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3l-headers-9">
	<header>
		<div class="wrapper">
			<div class="header">
				<div>
					<h1>
						<a href="index.jsp" class="logo">Covid Tracker </a>
					</h1>
				</div>
				<div class="bottom-menu-content">
					<input type="checkbox" id="nav" /> <label for="nav"
						class="menu-bar"></label>
					<nav>
						<ul class="menu">
							<li><a href="user-dashboard.jsp" class="link-nav">Home</a></li>
							<li><a href="#blog" class="link-nav dropdown-toggle">
									Patient <span class="fa fa-angle-down" aria-hidden="true"></span>
							</a> <input type="checkbox" id="drop-3" />
								<ul>
									<li><a href="user-pati-reg.jsp" class="link-nav">New</a></li>
									<li><a href="user-patientlist.jsp" class="link-nav">PatientList</a></li>
									<!-- <li><a href="user-patient-update.jsp" class="link-nav">Update</a></li> -->
								</ul>
							</li>
							<li><a href="user-assigned-doct.jsp" class="link-nav">Doctor</a></li>
							
							<li><a href="#blog" class="link-nav dropdown-toggle">
									Hospital <span class="fa fa-angle-down" aria-hidden="true"></span>
							</a> <input type="checkbox" id="drop-4" />
								<ul>
									<li><a href="user-hospitalized.jsp" class="link-nav">Hospitalized</a></li>
									<li><a href="user-hospital-bed.jsp" class="link-nav">Available Bed</a></li>
									<li><a href="user-cancel-bed.jsp">Cancel Bed</a></li>
									<li><a href="user-bed-confirmed.jsp">Bed Confirmed</a></li>
								</ul>
							</li>
							
							<li><a href="user-feedback.jsp" class="link-nav">Give Feedback</a></li>
							<li><a href="#blog" class="link-nav dropdown-toggle">Account <span class="fa fa-angle-down" aria-hidden="true"></span>
							</a> <input type="checkbox" id="drop-3" />
								<ul>
									<li><a href="user-profile.jsp">My Profile</a></li>
									<!-- <li><a href="user-update-profile.jsp">Update Profile</a></li> -->
									<li><a href="user-change-password.jsp">Change Password</a></li>
									<li><a href="user-logout.jsp">Log Out</a></li>
								</ul>
							</li>
							<li class="nav-right-sty"><a href="" class="actionbg"><%=session.getAttribute("uname")%></a></li>
							<li><font color="blue"><b>User</b></font></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</div>