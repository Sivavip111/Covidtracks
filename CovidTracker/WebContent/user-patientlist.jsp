<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Covid Tracker</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">
	<!-- Demo bar start -->
	<!-- header -->
	<jsp:include page="user-side-header.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>PatientId</th>
							<th>UserId</th>
							<th>PatientName</th>
							<th>Phone No.</th>
							<th>Severity</th>
							<th>EndDate</th>
							<th>Summary</th>
							<th>VistTime</th>
							<th>Medicine</th>
							<th>Update</th>

						</tr>
					</thead>
					<%
						String dname = (String)session.getAttribute("uname"); System.out.println("dname:::::::::::::::::::>  "+dname);
						String query = "select * from tblpatient where user_id='"+session.getAttribute("user_id")+"'"; System.out.println("query::::::>> "+query);
						ResultSet resultset = DatabaseConnection.getResultFromSqlQuery(query);
						while (resultset.next()) {
					%>
					<tbody>
						<tr>
							<td><%=resultset.getString(1)%></td>
							<td><%=resultset.getString(21)%></td>
							<td><%=resultset.getString(2)%></td>
							<td><%=resultset.getString(6)%></td>
							<td><%=resultset.getString(11)%></td>
							<td><%=resultset.getString(19)%></td>
							<td><%=resultset.getString(20)%></td>
							<td><%=resultset.getString(22)%></td>
							<td><%=resultset.getString(23)%></td>
							
							<td><a href="user-patient-update.jsp?pat_id=<%=resultset.getString(1)%>" class="btn btn-danger"
							 style="width: 100px;">Update</a>
							</td>
							
							
							
						</tr>
						
					</tbody>
					<%
						}
					%>
				</table>
				
				<br><br><br><br><br><br><br><br><br><br><br><br>
			</div>
		</div>
	</div>
	</section>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>