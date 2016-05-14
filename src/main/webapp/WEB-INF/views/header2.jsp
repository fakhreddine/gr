<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Reservation - Hotel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap3.3.0.css" type="text/css">	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hotel.css" type="text/css">

	
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
					<a href="/gestionreservation/">
					<div class="row">
						<div class="span3 logo">
							<h1>Rsv<span>Hotel</span></h1>
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
										<li class="active"><a href="/gestionreservation/reservation">Reservations</a></li>
									</c:if>
									<c:if test="${idpage!=4}">
										<li class=""><a href="/gestionreservation/reservation">Reservations</a></li>
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
							</div>
						</div>
					</div><!-- /navbar -->
				</div>
			</div>
			
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap3.3.0.js"></script>
        
</body>

</html>