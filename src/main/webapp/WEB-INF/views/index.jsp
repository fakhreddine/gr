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
	






<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/hotel.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/hotel-responsive.css"
	type="text/css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/slider/default.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/nivo-slider.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/socialcount-with-icons.css"
	type="text/css" media="screen" />

	
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
	
		<div class="container-fluid">
			<div class="row"><!-- start header -->
				
				<!-- end header --><div class="row-fluid slideshow-row">
	
				<div class="span12 slideshow">
					<div class="slider-wrapper theme-default">
						<div class="ribbon"></div>
						<div id="nivoslider-125" class="nivoSlider">
							<img src="<%=request.getContextPath()%>/resources/css/images/slide-1.png" alt="" />
							<img src="<%=request.getContextPath()%>/resources/css/images/slide-2.png" alt="" />
							<img src="<%=request.getContextPath()%>/resources/css/images/slide-3.png" alt="" />
						</div>
					</div>
					<div id="nivoslider-125-caption-0" class="nivo-html-caption">You can add captions too&#8230;</div>
				</div>
				</div>
				<div class="row-fluid home">
					<div class="span12">
						<h2>start <span>Booking your room</span><br > select your dates and options below</h2>
					</div>
				</div>
				<c:url var="checkout" value="/client/add" ></c:url>
			<c:set var="count" value="0" scope="page" />
			<form:form action="${checkout}" commandName="r" class="form-inline">
				<div class="row-fluid home">
					<div class="span3">
						<h3>
							<span>select</span> your room
						</h3>
						<c:forEach items="${categories}" var="categorie">
			
												<c:if test="${count==0}">
													<%="<div class=\"room_selector\" data-price=\"34\" data-adults=\"1\" data-kids=\"1\">"%>
												</c:if>
												<c:if test="${count!=0}">
													<%="<div class=\"room_selector\" data-price=\"34\" data-adults=\"1\" data-kids=\"1\" style=\"display: none;\">"%>
												</c:if>
												<c:set var="count" value="${count + 1}" scope="page" />
												<h5>
													<a href="#" class="pull-left"><i class="icon-chevron-left"></i></a>${categorie.labelCatgorie}<a
														href="#" class="pull-right "><i
														class="icon-chevron-right"></i></a>
												</h5>
												<a href="listings.html"><img
													src="<%=request.getContextPath()%>/resources/css/images/rooms/single_room.jpg"
													alt="" /></a>
												<p>${categorie.descriptionCatgorie}</p>							
										</c:forEach>
					</div>		
					<div class="span3 home_calendar">
									<div class="form-horizontal">			
							<div class="control-group">
								<label class="control-label pull-left" for="inputEmail">Arrive</label>
								<div class="controls">
									<input type="text" value="" class="span2 check-in-date" value="2012/11/22"/>
								</div>
							</div>
						</div>
						<div class="datepicker_from"></div>
					</div>
					<div class="span3 home_calendar">
						<div class="form-horizontal">			
							<div class="control-group">
								<label class="control-label pull-left" for="inputEmail">Depart</label>
								<div class="controls">
									<input type="text" value="" class="span2 check-out-date" value="2012/11/22"/>
								</div>
							</div>
						</div>
						<div class="datepicker_to"></div>
					</div>
					<div class="span3">
						<div class="form-horizontal">
							
							<div class="control-group">
								<label class="control-label" for="inputEmail">Rooms</label>
								<div class="controls">
									<select class="span1 select_rooms">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>			
							<div class="control-group">
								<label class="control-label" for="inputEmail">Adults per room</label>
								<div class="controls">
									<select class="span1 select_adults">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
						</div>
						<div id="total_price" class="price">128.00 GBP</div>
						<a class="btn btn-primary btn-large book-now" href="/gestionreservation/reservations">Reserve Now!</a>
					</div>		
				</div>	
			</form:form>
			<hr />
			<div class="row-fluid">
				
				<div class="span3">
					<h3><span>R</span>ooms</h3>
					<a href="rooms.html"><img src="<%=request.getContextPath()%>/resources/css/images/rooms.jpg" alt="" /></a>
					<p>View our range of availiable rooms and options</p>
				</div>		
				<div class="span3">
					<h3><span>S</span>ervices</h3>
					<a href="facilities.html"><img src="<%=request.getContextPath()%>/resources/css/images/services.png" alt="" /></a>
					<p>We have a gym, swimming pool, golf course, and much more</p>
				</div>		
				<div class="span3">
					<h3><span>P</span>romotions</h3>
					<a href="promotions.html"><img src="<%=request.getContextPath()%>/resources/css/images/promotions.png" alt="" /></a>
					<p>Stay five nights and get one night totally <b>FREE</b>!</p>
				</div>		
				<div class="span3">
					<h3><span>L</span>ocation</h3>
					<a href="map.html"><img src="<%=request.getContextPath()%>/resources/css/images/location.jpg" alt="" /></a>
					<p>We're easily accessible - go anywhere quickly.</p>
				</div>		
			</div>		
			</div> 
		</div>


<script src="http://maps.google.com/maps/api/js?sensor=false"></script>


	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.nivo.slider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/socialcount.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.quicksand.js"
		type="text/javascript"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/global.js"></script>



</body>
</html>