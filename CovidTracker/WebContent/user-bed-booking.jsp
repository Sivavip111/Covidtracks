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
					<h2>Bed Booking Details</h2>
					</p>
					<br>
					<%
						String slot = request.getParameter("slot");
						System.out.println("slot:::::>> " + slot);
						String status = request.getParameter("status");
						System.out.println("status:::: " + status);
					%>
					<form action="user-bed-book-sbt.jsp" method="post"	>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Patient Id 
								</p>								
								<input type="text" name="pid" class="input" required="required" />
								<input type="hidden" name="status" value="<%=status %>"/>
								<input type="hidden" name="slot" value="<%=slot%>" /> 
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>User ID</strong>
								</p>
								<input type="text" name="uid" class="input" required="required" />
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Patient Name</strong>
								</p>
								<input type="text" name="pname" class="input" required="required" />
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Phone</strong>
								</p>
								<input type="text" name="pno" class="input" required="required" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Email ID</strong>
								</p>
								<input type="text" name="emailid" class="input" required="required" />
							</div>
						</div>

						<div class="d-grid grid-col-1">
							<div class="ele-9its_grid">
								<input type="submit" class="btn btn-primary" value="Book Bed" />
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