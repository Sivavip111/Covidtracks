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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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

	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css">
	<!-- Demo bar start -->
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
						<input type="checkbox" id="nav" /> <label for="nav"
							class="menu-bar"></label>
						<nav>
							<ul class="menu">
								<li><a href="index.jsp" class="link-nav">Home</a></li>
								<li><a href="admin-login.jsp" class="link-nav">User	Login</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
		<!-- //header -->
	</div>

	<!-- //covers -->
	<!-- form 34-2 -->
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<h2 class="form-head">User Account Creation</h2>
					<br>
					<%
						String successmsg = (String) session.getAttribute("successmsg");
					if (successmsg != null) {
						System.out.println("inside if....");
						session.removeAttribute("successmsg");
					%>
					<div class="alert alert-success" id="success" style="color:green">User Registered Successfully.</div>
					<%
						
					}
					else {
						System.out.println("inside else....");
					}
					%>
					<form action="AddUser" method="post">
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">User Id</p>
								<%
									String userId = DatabaseConnection.generatePatientUserId();
								%>
								<input type="text" class="input" placeholder="User Id" value="<%=userId%>" name="uid" readonly />
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Full Name</p>
								<input type="text" class="input" placeholder="Full Name" required name="fname" />
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">Email Id</p>
								<input type="email" class="input" placeholder="Email Id" required name="email" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Mobile No</p>
								<input type="tel" class="input" placeholder="Mobile No" required name="mobile" pattern="[0-9]{4}[0-9]{2}[0-9]{4}" maxlength="10"/>
							</div>
						</div>
						<div class="">
							<p class="text-head">Address</p>
							<input type="text" class="input" placeholder="Address"	required name="address" />
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">User Name</p>
								<input type="text" class="input" placeholder="User Name" required name="uname" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">User Password</p>
								<input type="password" class="input" placeholder="Password"	required name="upass" />
							</div>
						</div>
						<button type="submit" class="buttonbg signinbutton">Sign Up</button>
						<p class="signup">
							Already have an account?<a href="user-login.jsp" class="signuplink">Sign In</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- //w3l-footer-16 -->
</body>

</html>