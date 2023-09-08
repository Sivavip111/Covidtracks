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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="user-side-header.jsp"></jsp:include>
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
					<h2>Add Patient</h2>
					</p>
					<br>
					<%
						String credential = (String) session.getAttribute("message");
					if (credential != null) {
						session.removeAttribute("message");
					%>
					<div class="alert alert-success" id="success" style="color:green">You profile updated sucessfully.</div>
					<%
						}
					%>
					<form action="AddPatient" method="post"	enctype="multipart/form-data">
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Patient Id 
								</p>
								<%
									String tid = DatabaseConnection.generatePatientId();
								%>
								
								<input type="text" name="tid" class="input" value="<%=tid%>" readonly />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Candidate Name</strong>
								</p>
								<input type="text" name="cname" class="input" value="" />
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Date of Birth</strong>
								</p>
								<input type="text" name="dob" class="input" value="" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Aadhar Card No.</strong>
								</p>
								<input type="text" name="aadharno" class="input" value="" />
							</div>
						</div>

						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Gender</strong>
								</p>
								<select name="gender" class="select">
									<option value="select"> Select </option>
									<option value="male"> Male </option>
									<option value="female"> Female </option>								
								</select>
							</div>
							
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Phone Number</strong>
								</p>
								<input type="text" name="pno" class="input" value="" />
							</div>
							
						</div>
						
						<div class="d-grid grid-col-2">
							
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Email ID</strong>
								</p>
								<input type="text" name="emailid" class="input" value="" />
							</div>
							
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Covid Certificate</strong>
								</p>
								<input type="file" name="Cimage" class="input" value="" />
							</div>
						</div>
						
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Primary & Secondary Contact</strong>
								</p>
								<select name="contact" class="select">
									<option value="select"> Select </option>
									<option value="primary"> Primary </option>
									<option value="secondary"> Secondary </option>								
								</select>
							</div>
							
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Severity</strong>
								</p>
								<select name="severity" class="select">
									<option value="select"> Select </option>
									<option value="mild"> Mild </option>
									<option value="normal"> Normal </option>
									<option value="serious"> Serious </option>								
								</select>
							</div>
							
						</div>
						
						<div class="d-grid grid-col-2">
							
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Patient Location, Latitude</strong>
								</p>
								<input type="text" name="latitude" class="input" value="" />
							</div>
							
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Patient Location, Longitude</strong>
								</p>
								<input type="text" name="longitude" class="input" value="" />
								<input type="hidden" name="user_id" value="<%=(String) session.getAttribute("user_id")%>" />
							</div>
						</div>
						
	
						<div class="d-grid grid-col-1">
							<div class="ele-9its_grid">
								<input type="submit" class="btn btn-primary" value="Add Patient" />
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</section>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>

</body>
<%
	} else {
response.sendRedirect("index.jsp");
}
%>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});
</script>
</html>