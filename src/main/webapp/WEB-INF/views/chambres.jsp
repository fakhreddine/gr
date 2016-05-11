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
	
		<div class="container-fluid">
			<jsp:include flush="true" page="/header/3" />
			<!-- end header -->
			<div class="row-fluid">
	
	<div class="span12">	
		<br /><br />
		<h1>Rooms and Suites</h1>
		
		<div class="row-fluid">
			
			<div class="span4">
				<h3><span>SINGLE</span> ROOM</h3>
				<a href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/rooms/single_room.jpg" alt="" /></a>
				<ul class="thumbnails hotel-options no_margin_left">
					<li class="no_margin_left"><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
				</ul>
				<p> Wake up to this traditional room with 25-inch TV and on-demand movies. The comfortable room, with opening windows, has 1 single bed. Sleeps 1 adult. </p>
				
				<div class="row center">
					<a class="btn btn-primary btn-large check-availability" href="/gestionreservation/reservations">Check availability</a>
				</div>
				
			</div>		
			
			<div class="span4">
				<h3><span>Double</span> ROOM</h3>
				<a href="/gestionreservation/reservations"><img src="css/images/rooms/double_room.jpg"  alt="" /></a>
				<ul class="thumbnails hotel-options no_margin_left">
					<li class="no_margin_left"><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
				</ul>
				<p> Feel at home in this spacious room with sea views, a desk and a 21-inch TV. The bright and airy room, in calm tones, has 1 double bed. Maximum occupancy 2 adults. </p>
				<div class="row center">
					<a class="btn btn-primary btn-large check-availability" href="/gestionreservation/reservations">Check availability</a>
				</div>
			</div>	
			
			<div class="span4">
				<h3><span>Triple</span> ROOM</h3>
				<a href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/rooms/triple_room.jpg"  alt="" /></a>
				<ul class="thumbnails hotel-options no_margin_left">
					<li class="no_margin_left"><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
				</ul>
				<p>A spacious room with a sea view and a 32-inch TV. The bright and airy room, in cool, calm tones, has 1 double bed and a single bed. Maximum occupancy 3 adults. </p>
				<div class="row center">
					<a class="btn btn-primary btn-large check-availability" href="/gestionreservation/reservations">Check availability</a>
				</div>
			</div>				
		
		</div>				
		
		<div class="row-fluid">
			<div class="span4">
				<h3><span>Luxury</span> ROOM</h3>
				<a href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/rooms/luxury_room.jpg" alt="" /></a>
				<ul class="thumbnails hotel-options no_margin_left">
					<li class="no_margin_left"><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Restaurant-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
				</ul>
				<p>  Wrap up in a fluffy bathrobe in this spacious room with views of the sea all around. The room has 2 double beds and a balcony. Maximum occupancy 4 adults. </p>
				
				<div class="row center">
					<a class="btn btn-primary btn-large check-availability" href="/gestionreservation/reservations">Check availability</a>
				</div>
				
			</div>		
			
			<div class="span4">
				<h3><span>Private</span> pool ROOM</h3>
				<a href="/gestionreservation/reservations"><img src="css/images/rooms/private_pool.jpg" alt="" /></a>
				<ul class="thumbnails hotel-options no_margin_left">
					<li class="no_margin_left"><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Restaurant-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Indoor-Swimming.png" alt="" width="24"/></a></li>
				</ul>
				<p>A private pool, 2 double beds, sea view and a 32-inch TV. Unwind on the terrace in the oversized day bed and watch the sun set.  Maximum occupancy 4 adults.</p>

				<div class="row center">
					<a class="btn btn-primary btn-large check-availability" href="/gestionreservation/reservations">Check availability</a>
				</div>
				
			</div>	
			
			<div class="span4">
				<h3><span>Private </span> villa</h3>
				<a href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/rooms/private_villa.jpg" alt="" /></a>
				<ul class="thumbnails hotel-options no_margin_left">
					<li class="no_margin_left"><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Restaurant-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
					<li><a class="btn btn-large btn-info" href="/gestionreservation/reservations"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Indoor-Swimming.png" alt="" width="24"/></a></li>
				</ul>
				<p>Choose a Water Villa and enjoy sublime views of the sea. Enjoy the en-suite bathroom with its own sundeck, gazebo and rain showers. Maximum occupancy 5 adults.</p>

				<div class="row center">
					<a class="btn btn-primary btn-large check-availability" href="/gestionreservation/reservations">Check availability</a>
				</div>
				
			</div>	
			
		</div>
		
		
		
		
	</div>
	
</div>

<div class="row-fluid">
	<div class="span12 what_people_say">
		<div id="quotes">
			<blockquote class="textItem" style="display: none;">
				<p>This is the best hotel I've ever been to.</p>
				<small>Someone famous <cite title="Source Title">Source Title</cite></small>
			</blockquote>			
			
			<blockquote class="textItem" style="display: none;">
				<p>The food is incredible.</p>
				<small>Someone famous <cite title="Source Title">Source Title</cite></small>
			</blockquote>			
			
			<blockquote class="textItem" style="display: none;">
				<p>Beyond All Expectations</p>
				<small>Someone famous <cite title="Source Title">Source Title</cite></small>
			</blockquote>
		</div>
	</div>	
</div>	</div> <!-- /container -->
</div>
<jsp:include flush="true" page="/footer" />

	

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