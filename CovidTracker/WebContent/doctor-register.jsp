<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.w3layouts.com/demosWTR/Freedom/19-02-2020/traveling-freedom-demo_Free/1171185230/web/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Oct 2020 04:37:51 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Covid Tracker</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
</head>

<body>
	<script
		src='../../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script
		src="../../../../../../../m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
	<div id="codefund">
		<!-- fallback content -->
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-149859901-1');
	</script>

	<script>
		window.ga = window.ga || function() {
			(ga.q = ga.q || []).push(arguments)
		};
		ga.l = +new Date;
		ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
		ga('require', 'eventTracker');
		ga('require', 'outboundLinkTracker');
		ga('require', 'urlChangeTracker');
		ga('send', 'pageview');
	</script>
	<script async src='../../../../../../js/autotrack.js'></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta name="robots" content="noindex">
	
<body>

	<style>
		.select {
		  width: 100%;
		  background: #f3f3f3;
		  border: none;
		  margin-bottom: 20px;
		  padding: 14px;
		  border: 1px solid #dedede;
		  font-size:16px;
		}	
	</style>

	<link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css"/>
		<div class="w3l-headers-9">
		<header>
			<div class="wrapper">
				<div class="header">
					<div>
						<h1>
							<a href="index.jsp" class="logo">Covid Tracker</a>
						</h1>
					</div>
					<div class="bottom-menu-content">
						<input type="checkbox" id="nav" /> <label for="nav" class="menu-bar"></label>
						<nav>
							<ul class="menu">
								<li><a href="index.jsp" class="link-nav">Home</a></li>
								<li><a href="doctor-login.jsp" class="link-nav">Doctor Login</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
		<!-- //header -->
	</div>
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
					<h2>Add Doctor</h2>
					</p>
					<br>
					<%
						String credential = (String) session.getAttribute("message");
					if (credential != null) {
						session.removeAttribute("message");
					%>
					<div class="alert alert-success" id="success" style="color:green">Your profile updated Successfully.</div>
					<%
						}
					%>
					<form action="AddDoctor" method="post"	enctype="multipart/form-data">
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>User Id</strong></p>
								<%
									String userId = DatabaseConnection.generateDoctorUserId();
								%>
								<input type="text" class="input" placeholder="User Id" value="<%=userId%>" name="uid" readonly />
							</div>
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Doctor Name</strong></p>
								<input type="text" class="input" placeholder="Full Name" name="dname" required="required"/>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Doctor DOB</strong></p>
								<input type="text" class="input" placeholder="Doctor DOB" name="ddob" required/>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Aadhar No.</strong></p>
								<input type="text" class="input" placeholder="Aadhar No." name="daadharno" required/>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">	 
									<strong>Gender</strong>
								</p>
								<select name="dgender" class="select" required>
									<option value="select"> Select </option>
									<option value="male"> Male </option>
									<option value="female"> Female </option>								
								</select>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Phone No.</strong></p>
								<input type="text" class="input" placeholder="Doctor Phone No." pattern="[0-9]{4}[0-9]{2}[0-9]{4}" name="dphoneno" required/>
							</div>
						</div>
						
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">
									<strong>Email ID</strong>
								</p>
								<input type="email" name="emailid" class="input" value="" required/>
							</div>
							
							<div class="ele-9its_grid">
								<p class="text-head">
									<strong>Upload Image</strong>
								</p>
								<input type="file" name="Cimage" class="input" value="" required/>
							</div>
						</div>
						
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Doctor Specialized In</strong></p>
								<input type="text" class="input" placeholder="Doctor Specialized In" name="dspecializedin" required/>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Experience <font color="red">Ex: 4 Yrs 5 Months</font></strong></p>
								<input type="text" class="input" placeholder="Experience" name="dexp" required/>
							</div>
						</div>
						
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>User Name</strong></p>
								<input type="text" class="input" placeholder="User Name" name="dname" required/>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head"><strong>User Password</strong></p>
								<input type="password" class="input" placeholder="Password"	name="dpass" required/>
							</div>
						</div>						
						
						<button type="submit" class="buttonbg signinbutton">Sign Up</button>
						<p class="signup">Already have an account?<a href="user-login.jsp" class="signuplink">Sign In</a>
						</p>
					</form>

				</div>
			</div>
		</div>
	</section>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>

</body>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});
</script>
</html>