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
	<script	src='../../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script	src="../../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
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
	<link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css"/>
	<!-- Demo bar start -->
	<!-- header -->
	<jsp:include page="admin-side-header.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<div id="print">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-bordered">
				<thead><center><h3>Booked Details &nbsp;<i class="fa fa-print fa-2x" aria-hidden="true" OnClick="CallPrint(this.value)"></i></h3></center></thead>
					<thead>
						<tr>
							<th>Bed ID</th>
							<th>Patient Id</th>
							<th>Patient Name</th>
							<th>Email ID</th>
							<th>Phone No.</th>
							<th>Action</th>
						</tr>
					</thead>
					<%
						String query = "select * from bed_booking where status='blue'"; System.out.println("query::&*&*&::::>> "+query);
						ResultSet resultset = DatabaseConnection.getResultFromSqlQuery(query);
						while (resultset.next()) {
					%>
					<tbody>
						<tr>
							<td><%=resultset.getString(1)%></td>
							<td><%=resultset.getString(2)%></td>
							<td><%=resultset.getString(8)%></td>
							<td><%=resultset.getString(6)%></td>
							<td><%=resultset.getString(4)%></td>
							<td><a href="admin-booking-status.jsp?pid=<%=resultset.getString(2)%>&pno=<%=resultset.getString(4)%>&status=red" class="btn btn-danger"
							 style="width: 100px;">Approve</a>
							 <td><a href="admin-booking-status.jsp?pid=<%=resultset.getString(2)%>&pno=<%=resultset.getString(4)%>&status=green" class="btn btn-danger"
							 style="width: 100px;">Dis Approve</a>
							</td>
						</tr>
						
					</tbody>
					<%
						}
					%>
				</table>
				
				<br><br>
			</div>
		</div>
	</div>


	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-bordered">
				<thead><center><h3>Not Yet Booked Details</h3></center></thead>
					<thead>
						<tr>
							<th>Bed ID</th>
							<th>Patient Id</th>
							<th>Patient Name</th>
							<th>Email ID</th>
							<th>Phone No.</th>

						</tr>
					</thead>
					<%
						String query1 = "select * from bed_booking where status='green'"; System.out.println("query1::::::>> "+query1);
						ResultSet resultset1 = DatabaseConnection.getResultFromSqlQuery(query1);
						while (resultset1.next()) {
					%>
					<tbody>
						<tr>
							<td><%=resultset1.getString(1)%></td>
							<td><%=resultset1.getString(2)%></td>
							<td><%=resultset1.getString(8)%></td>
							<td><%=resultset1.getString(6)%></td>
							<td><%=resultset1.getString(4)%></td>
						</tr>
						
					</tbody>
					<%
						}
					%>
				</table>
				
				<br>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-bordered">
				<thead><center><h3>Book Confirm Details</h3></center></thead>
					<thead>
						<tr>
							<th>Bed ID</th>
							<th>Patient Id</th>
							<th>Patient Name</th>
							<th>Email ID</th>
							<th>Phone No.</th>

						</tr>
					</thead>
					<%
						String query2 = "select * from bed_booking where status='red'"; System.out.println("query2::::::>> "+query2);
						ResultSet resultset2 = DatabaseConnection.getResultFromSqlQuery(query2);
						while (resultset2.next()) {
					%>
					<tbody>
						<tr>
							<td><%=resultset2.getString(1)%></td>
							<td><%=resultset2.getString(2)%></td>
							<td><%=resultset2.getString(8)%></td>
							<td><%=resultset2.getString(6)%></td>
							<td><%=resultset2.getString(4)%></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
				
				<br>
			</div>
		</div>
	</div>
	
	
	<script>
		function CallPrint(strid) {
			var prtContent = document.getElementById("print");
			var WinPrint = window.open('', '','left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
			WinPrint.document.write(prtContent.innerHTML);
			WinPrint.document.close();
			WinPrint.focus();
			WinPrint.print();
			WinPrint.close();
		}
	</script>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>