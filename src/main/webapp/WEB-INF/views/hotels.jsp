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
	
		<div class="container-fluid">
			<jsp:include flush="true" page="/header/2" />
			<!-- end header -->
			
			
			
	
	<div class="span12">	
		<br /><br />
		<c:set var="count" value="0" scope="page" />
		<c:forEach items="${hotels}" var="hotel" >
				 
				 <c:if test="${count==0}"> 
				 	<div class="row-fluid">
				 </c:if>
				 <c:set var="count" value="${count + 1}" scope="page"/>
				<div class="span4">
					<h3><span>${hotel.nomHotel}</span></h3>
					<a href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/rooms/luxury_room.jpg" alt="" /></a>
					<ul class="thumbnails hotel-options no_margin_left">
						<li class="no_margin_left"><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
						<li><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Restaurant-black.png" alt="" width="24"/></a></li>
						<li><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
						<li><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
					</ul>
					<p>${hotel.nomHotel}</p>		
					<div class="row center">
						<a class="btn btn-primary btn-large check-availability" href="book-start.html">Show deals</a>
					</div>			
				</div>	
 
				 <c:if test="${count==3}"> 
				 	<c:set var="count" value="0" scope="page"/>
				 	</div>
				 </c:if>
						
		</c:forEach>
		</div>
			
	</div>
	


	</div> <!-- /container -->

</div>
<%@include file="footer.jsp"%>
	
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