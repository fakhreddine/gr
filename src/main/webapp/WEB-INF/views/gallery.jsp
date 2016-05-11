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

		<link rel="stylesheet" href="js/slider/default.css" type="text/css" media="screen" />
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
			<jsp:include flush="true" page="/header" />
			<!-- end header --><div class="row">
	<div class="span12">	
		<br /><br /><h1>The gallery</h1><br />
	</div>	
	
	<div class="span12">
		<div class="row">
			<div class="span6 offset3">
				<ul class="nav nav-pills gallery-pills" id="gallery_links">
					<li><a href="#all" data-id="all">All</a></li>
					<li><a href="#resort" data-id="resort">The resort</a></li>
					<li><a href="#rooms" data-id="rooms">Rooms</a></li>
					<li><a href="#dining" data-id="dining">Dining</a></li>
					<li><a href="#attractions" data-id="attractions">Attractions</a></li>
				</ul>	
			</div>
		</div>
	</div>
	
	<div class="span12">	
		<ul class="thumbnails" id="gallery">
											<li class="span4 aa-resort" data-id="resort0" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_1.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort1" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_2.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort2" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_3.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort3" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_4.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort4" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_5.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort5" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_6.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort6" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_7.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-resort" data-id="resort7" data-type="resort">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/resort_8.jpg" alt="">
					</a>
				</li>
															<li class="span4 aa-rooms" data-id="rooms0" data-type="rooms">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/rooms_1.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-rooms" data-id="rooms1" data-type="rooms">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/rooms_2.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-rooms" data-id="rooms2" data-type="rooms">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/rooms_3.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-rooms" data-id="rooms3" data-type="rooms">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/rooms_4.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-rooms" data-id="rooms4" data-type="rooms">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/rooms_5.jpg" alt="">
					</a>
				</li>
															<li class="span4 aa-dining" data-id="dining0" data-type="dining">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/dining_1.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-dining" data-id="dining1" data-type="dining">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/dining_2.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-dining" data-id="dining2" data-type="dining">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/dining_3.jpg" alt="">
					</a>
				</li>
															<li class="span4 aa-attractions" data-id="attractions0" data-type="attractions">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/attractions_1.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-attractions" data-id="attractions1" data-type="attractions">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/attractions_2.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-attractions" data-id="attractions2" data-type="attractions">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/attractions_3.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-attractions" data-id="attractions3" data-type="attractions">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/attractions_4.jpg" alt="">
					</a>
				</li>
								<li class="span4 aa-attractions" data-id="attractions4" data-type="attractions">
					<a href="#" class="thumbnail">
						<img src="<%=request.getContextPath()%>/resources/css/images/gallery/attractions_5.jpg" alt="">
					</a>
				</li>
									</ul>
	</div>

</div></div> <!-- /container -->
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