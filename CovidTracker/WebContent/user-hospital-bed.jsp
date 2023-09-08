<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="getcon.jsp"%>
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
		
				<form name="myform" action=" " method="post">
					<table border="1" cellpadding="20px;" width="70%">
					<div style="color:RED;"><h3><font color="orange">Rooms,</font> <font color="red">Red:Patient Available,</font> <font color="blue">Blue:Booked,</font><font color="green"> Green:Available</font></h3></div>
						<%
							ResultSet rs1 = null;
							String sid = "";
							try {
								String status = "";
								String serA = "Select * from bed_booking where series='A'";
								rs1 = st.executeQuery(serA);
							%>
							<tr>
							<th>BLOCK-1</th>
							<%
								while (rs1.next()) {
									sid = rs1.getString(1);
									status = rs1.getString(5);
									System.out.println("status>>>>>>>>>>>>>>>>>>>>>>:: "+ status);
									System.out.println("sid>>>>>>>>>>>>>>>>>>>>>>:: " + sid);
								if (sid.equalsIgnoreCase("A1")) {
								 if (status.equals("green")) {
									%>

									<td><a href="./admin_user_approve.jsp?slot=a1&status=blue"><font style="color: green">A1</font></a></td>
									<%
										} else if (status.equals("blue")) {
									%>
									<td><font style="color: blue">A1</font></td>
									<%
										} else if(status.equals("red")){
									%>
									<td><font style="color: red">A1</font></td>
									<%
										}
									} // end of A1 if
							
									if (sid.equalsIgnoreCase("A2")) {
										if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=a2&status=blue"><font	style="color: green">A2</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">A2</font></td>
								<%
									} else if(status.equals("red")) {
								%>
								<td><font style="color: red">A2</font></td>
								<%
									}
								} // end of A2 if
							
								
								if (sid.equalsIgnoreCase("A3")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=a3&status=blue"><font style="color: green">A3</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">A3</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">A3</font></td>
								<%
									}
								} // end of A3 if
							
								
								if (sid.equalsIgnoreCase("A4")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=a4&status=blue"><font	style="color: green">A4</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">A4</font></td>
								<%
									} else if(status.equals("red")){
								%>
                                         <td><font	style="color: red">A4</font></td>
								<%
									}
								} // end of A4 if
								
								
								
								if (sid.equalsIgnoreCase("A5")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=a5&status=blue"><font	style="color:green ">A5</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color:blue ">A5</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font style="color:red ">A5</font></td>
								<%
									}
								} // end of A5 if
								
								
								
								if (sid.equalsIgnoreCase("A6")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=a6&status=blue"><font	style="color: green">A6</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">A6</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font style="color: red">A6</font></td>
								<%
									}
								} // end of A6 if
								
								
							
								} // end of while
							%>
							</tr>

							<%	
								String serB = "Select * from bed_booking where series='B'";
								rs1 = st.executeQuery(serB);
							%>
							<tr>
							<th>BLOCK-2</th>
							<%
								while (rs1.next()) {
									sid = rs1.getString(1);
									status = rs1.getString(5);
									System.out.println("status slot b>>>>>>>>>>>>>>>>>>>>>>:: "+ status);
									System.out.println("sid slot b>>>>>>>>>>>>>>>>>>>>>>:: " + sid);
								if (sid.equalsIgnoreCase("B1")) {
											if (status.equals("green")) {
									%>

									<td><a href="./user-bed-booking.jsp?slot=b1&status=blue"><font style="color: green">B1</font></a></td>
									<%
										} else if (status.equals("blue")) {
									%>
									<td><font style="color: blue">B1</font></td>
									<%
										} else if(status.equals("red")){
									%>
									<td><font style="color: red">B1</font></td>
									<%
										}
									} // end of B1 if
									if (sid.equalsIgnoreCase("B2")) {
										if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=b2&status=blue"><font	style="color: green">B2</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">B2</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font style="color: red">B2</font></td>
								<%
									}
								} // end of B2 if
							
							
							
								
								if (sid.equalsIgnoreCase("B3")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=b3&status=blue"><font	style="color: green">B3</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">B3</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">B3</font></td>
								<%
									}
								} // end of B3 if
							
							
							
								
								if (sid.equalsIgnoreCase("B4")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=b4&status=blue"><font	style="color: green">B4</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">B4</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">B4</font></td>
								<%
									}
								} // end of B4 if
								
								
								
								
								if (sid.equalsIgnoreCase("B5")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=b5&status=blue"><font	style="color: green">B5</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">B5</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">B5</font></td>
								<%
									}
								} // end of B5 if
								
								
								
								
								if (sid.equalsIgnoreCase("B6")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=b6&status=blue"><font	style="color: green">B6</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">B6</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">B6</font></td>
								<%
									}
								} // end of B6 if
									
								}//end of while B
							%>
							
							</tr>
							
							<%	
								String serC = "Select * from bed_booking where series='C'";
								rs1 = st.executeQuery(serC);
							%>
							<tr>
							<th>BLOCK-C</th>
							<%
								while (rs1.next()) {
									sid = rs1.getString(1);
									status = rs1.getString(5);
									System.out.println("status slot C>>>>>>>>>>>>>>>>>>>>>>:: "+ status);
									System.out.println("sid slot C>>>>>>>>>>>>>>>>>>>>>>:: " + sid);
								if (sid.equalsIgnoreCase("C1")) {
											if (status.equals("green")) {
									%>

									<td><a href="./user-bed-booking.jsp?slot=c1&status=blue"><font style="color: green">C1</font></a></td>
									<%
										} else if (status.equals("blue")) {
									%>
									<td><font style="color: blue">C1</font></td>
									<%
										} else if(status.equals("red")){
									%>
									<td><font style="color: red">C1</font></td>
									<%
										}
									} // end of C1 if
									if (sid.equalsIgnoreCase("C2")) {
										if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=c2&status=blue"><font	style="color: green">C2</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">C2</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">C2</font></td>
								<%
									}
								} // end of C2 if
							
							
							
								
								if (sid.equalsIgnoreCase("C3")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=c3&status=blue"><font	style="color: green">C3</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">C3</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">C3</font></td>
								<%
									}
								} // end of C3 if
							
							
							
								
								if (sid.equalsIgnoreCase("C4")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=c4&status=blue"><font	style="color: green">C4</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">C4</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">C4</font></td>
								<%
									}
								} // end of C4 if
								
								
								
								
								if (sid.equalsIgnoreCase("C5")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=c5&status=blue"><font	style="color: green">C5</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">C5</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">C5</font></td>
								<%
									}
								} // end of C5 if
								
								
								
								if (sid.equalsIgnoreCase("C6")) {
									if (status.equals("green")) {
								%>

								<td><a href="./user-bed-booking.jsp?slot=c6&status=blue"><font	style="color: green">C6</font></a></td>
								<%
									} else if (status.equals("blue")) {
								%>
								<td><font style="color: blue">C6</font></td>
								<%
									} else if(status.equals("red")){
								%>
								<td><font	style="color: red">C6</font></td>
								<%
									}
								} // end of C6 if
									
								}//end of while C
							%>
							
							</tr>
							
							
							<%
							} catch (Exception e) {
								System.out.println("Error Message in user.jsp..............."+ e.getMessage());
								e.printStackTrace();
							}
						%>
					</table>
				</form>
		
				<br><br><br><br><br><br><br><br><br><br><br><br>
			</div>
		</div>
	</div>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>