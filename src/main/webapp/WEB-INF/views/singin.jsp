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
			<div class="row"><!-- start header -->
				<jsp:include flush="true" page="/header/7" />
				<img src="<%=request.getContextPath()%>/resources/css/images/under.png" />
				
			</div>
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