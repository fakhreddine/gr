<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Hotel - Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	

	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap-responsive.min.css" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hotel.css" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hotel-responsive.css" type="text/css">

		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/js/slider/default.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/socialcount-with-icons.css" type="text/css" media="screen" />
	
	<style>
		div.ui-datepicker{
			font-size:11px;
		}
	</style>
		
    <!--[if lt IE 9]>
		<link rel="stylesheet" href="css/bootstrap_ie7.css" type="text/css">
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
</head>

<body>
			<div class="row"><!-- start header -->
				<div class="span5 logo">
					<a href="index.html">
					<div class="row">
						<div class="span3 logo">
							<h1>Bootstrap<span>Hotel</span></h1>
							<p>&#9733;&#9733;&#9733;&#9733;&#9734;</p>
						</div>
					</div>
					</a>
				</div>		
				<div class="span6 pull-right main_menu">
					<div class="navbar">
						<div class="container">
							 <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</a>

							<div class="nav-collapse">
								<ul class="nav nav-pills">
									<c:if test="${idpage==1}">
										<li class="active"><a href="/gestionreservation/">Home</a></li>
									</c:if>
									<c:if test="${idpage!=1}">
										<li class=""><a href="/gestionreservation/">Home</a></li>
									</c:if>
									<c:if test="${idpage==2}">
										<li class="active"><a href="/gestionreservation/hotels">Hotels</a></li>
									</c:if>
									<c:if test="${idpage!=2}">
										<li class=""><a href="/gestionreservation/hotels">Hotels</a></li>
									</c:if>
									<c:if test="${idpage==3}">
										<li class="active"><a href="/gestionreservation/rooms">Rooms</a></li>
									</c:if>
									<c:if test="${idpage!=3}">
										<li class=""><a href="/gestionreservation/rooms">Rooms</a></li>
									</c:if>
									<c:if test="${idpage==4}">
										<li class="active"><a href="/gestionreservation/reservations">Reservations</a></li>
									</c:if>
									<c:if test="${idpage!=4}">
										<li class=""><a href="/gestionreservation/reservations">Reservations</a></li>
									</c:if>
									<c:if test="${idpage==5}">
										<li class="active"><a href="/gestionreservation/gallery">Gallery</a></li>
									</c:if>
									<c:if test="${idpage!=5}">
										<li><a href="/gestionreservation/gallery">Gallery</a></li>
									</c:if>
									<c:if test="${idpage==6}">
										<li class="active"><a href="/gestionreservation/about_us">About Us</a></li>
									</c:if>
									<c:if test="${idpage!=6}">
										<li><a href="/gestionreservation/about_us">About Us</a></li>
									</c:if>
									<c:if test="${idpage==7}">
										<li class="active"><a href="/gestionreservation/singin">Sing in /Log in</a></li>
									</c:if>
									<c:if test="${idpage!=7}">
										<li><a href="/gestionreservation/singin">Sing in /Log in</a></li>
									</c:if>
								</ul>
							</div><!-- /.nav-collapse -->
						</div>
					</div><!-- /navbar -->
				</div>
			</div><!-- end header --><div class="row book-start">


	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.nivo.slider.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/socialcount.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.quicksand.js" type="text/javascript"></script>

	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/global.js"></script>
</body>
</html>