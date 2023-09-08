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
	<div id="codefund">
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	<script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
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
	
	<style>
		#map {
			height: 300px;
			width: 100%;
		}
	</style>
	
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
	<link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-side-header.jsp"></jsp:include>
	<br>
	<br>
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
						<strong>Patient Details</strong>
					</p>

					<br>
					<!-- <div id="print"> -->
					<form action="confirmOrder.jsp" name="confirmOrder">
					<table class="table table-bordered">
					<%
					String phoneno = "";
					String patid = "";
						ResultSet resultset = DatabaseConnection
							.getResultFromSqlQuery("select * from tblpatient where pat_id='" + request.getParameter("patient_id") + "'");
						while (resultset.next()) {
							phoneno =  resultset.getString("phoneno");
							patid =resultset.getString(1);
							System.out.println("patid>>>>>>>>>>>>>>>>>> "+patid);
					%>
						<tr>
							<th>Patient Id</th>
							<td><input type="text" name="patid" readonly="readonly" value="<%=resultset.getString("pat_id")%>"/> </td>
						</tr>
						<tr>
							<th>Patient Name</th>
							<td><input type="text" name="patname" readonly="readonly" value="<%=resultset.getString("cname")%>"/></td>
						</tr>
						<tr>
							<th>Patient Image</th>
							<td><img src="images/<%=resultset.getString("image_name")%>"></td>
						</tr>
						<tr>
							<th>Gender</th>
							<td><input type="text" name="gender" readonly="readonly" value="<%=resultset.getString("gender")%>"/></td>
						</tr>
						<tr>
							<th>Phone</th>
							<td><input type="text" name="phoneno" readonly="readonly" value="<%=resultset.getString("phoneno")%>" id="phoneno"/></td>
						</tr>
						<tr>
							<th>Primary Contact</th>
							<td><input type="text" name="pcontact" readonly="readonly" value="<%=resultset.getString("pcontact")%>"/></td>
						</tr>
						<tr>
							<th>Severity</th>
							<td><input type="text" name="severity" readonly="readonly" value="<%=resultset.getString("severity")%>"/></td>
						</tr>
						<tr>
							<th>Map</th>
							<td><div id="map"></div></td>
						</tr>
					<%
						}
					%>
					
					<tr>
						<td>
							<strong>Assign Home Quarantine Doctor</strong>
						</td>
						<td>
							<select name="doctnamephno" id="doctnamephno" class="select">
							<option value="select,9999999999">Select</option>
							<%
								ResultSet resultset1 = DatabaseConnection.getResultFromSqlQuery("select * from tbldoctor");
								while (resultset1.next()) {
							%>
								<option value="<%=resultset1.getString("dname")%>,<%=resultset1.getString("dphoneno")%>"> <%=resultset1.getString("dname")%> </option>
							<%	
								}
						    %>
							</select>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#" onclick="javascript:homehosp('homeq','<%=phoneno%>','<%=patid%>');" class="btn btn-danger" style="width: 100px;">
								Home Quarantine</a>  &nbsp;
						</td>
						<td>					
							<a href="#" onclick="javascript:homehosp('hosp','<%=phoneno%>','<%=patid%>');" class="btn btn-danger" style="width: 100px;">
								Admit to Hospital</a>
						</td>
					</tr>					
					
					</table>
					
					</form>
					</div>
					<!-- <i class="fa fa-print fa-2x" aria-hidden="true"	OnClick="CallPrint(this.value)"></i> -->
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<br>
	<br>
<!-- 	<script>
		function CallPrint(strid) {
			var prtContent = document.getElementById("print");
			var WinPrint = window.open('', '','left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
			WinPrint.document.write(prtContent.innerHTML);
			WinPrint.document.close();
			WinPrint.focus();
			WinPrint.print();
			WinPrint.close();
		}
	</script> -->
	<jsp:include page="user-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>


<script>
	function initMap() {
		var location = {lat: 13.004, lng: 76.113};
		var map = new google.maps.Map(document.getElementById("map"),{
			Zoom: 4,
			center:location
			});
			var marker = new google.maps.Marker({
					position: location,
					map: map
				
			});
	}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwRz_eDuXDlIdbbv8kLXqAfqK5t19yKck&callback=initMap"></script>

<script type="text/javascript">
function homehosp(homehosp, pno, patid) { 
	var doctnamephno = document.getElementById('doctnamephno').value;
	var phoneno = document.getElementById('phoneno').value;
	
	window.location.href = "./admin-admit-patient.jsp?homehosp="+homehosp+"&pno="+pno+"&patient_id="+patid+"&doctnamephno="+doctnamephno+"&phoneno="+phoneno;
}

</script>

