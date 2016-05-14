<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Hotel - Bootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.2.min.css"
	type="text/css">



<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap-responsive.min.css"
	type="text/css">
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
div.ui-datepicker {
	font-size: 11px;
}
</style>

<!--[if lt IE 9]>
		<link rel="stylesheet" href="css/bootstrap_ie7.css" type="text/css">
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

</head>

<body>

	<div class="container-fluid">
		<jsp:include flush="true" page="/header/4" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reservation_tab.css"
	type="text/css" />
		<c:url var="reserve" value="/reservation/comfirm-step-one"></c:url>


		<ul class="nav nav-tabs" id="myTab">
			
			<li class="active"><a href="#home" data-toggle="tab"
				title="welcome"> <span class="round-tabs one"> <i
						class="glyphicon glyphicon-home"></i>
				</span>
			</a></li>

			<li><a href="#profile" data-toggle="tab" title="profile"> <span
					class="round-tabs two"> <i class="glyphicon glyphicon-user"></i>
				</span>
			</a></li>
			<li><a href="#messages" data-toggle="tab"
				title="bootsnipp goodies"> <span class="round-tabs three">
						<i class="glyphicon glyphicon-gift"></i>
				</span>
			</a></li>

			<li><a href="#settings" data-toggle="tab" title="blah blah">
					<span class="round-tabs four"> <i
						class="glyphicon glyphicon-comment"></i>
				</span>
			</a></li>

			<li><a href="#doner" data-toggle="tab" title="completed"> <span
					class="round-tabs five"> <i class="glyphicon glyphicon-ok"></i>
				</span>
			</a></li>

		</ul>





















		<form:form action="${reserve}" commandName="reservation">

			<div class="span12">
				<br /> <br />
				<h1>
					Book your room<br /> <small>When would you like to stay
						with us?</small>
				</h1>

				<div class="row">
					<div class="span9">

						<h3>
							<span>Check-in</span>date</h3>
						<div type="text" class="datepicker_from" name="from"></div>
						<h3>
							<span>Check-out</span> date</h3>
						<div type="text" class="datepicker_to" name="to"></div>

					</div>
					<c:set var="count" value="0" scope="page" />
					<div class="span3">
						<div class="row">
							<div class="span3">
								<h3>
									<span>select</span> your room
								</h3>
								<c:forEach items="${categories}" var="categorie">
									<c:if test="${count==0}">
										<div class="room_selector" data-price="34" data-adults="1"
											data-kids="1">
									</c:if>
									<c:if test="${count!=0}">
										<div class="room_selector" data-price="34" data-adults="1"
											data-kids="1" style="display: none;">
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
						</div>
					</div>
				</div>
				<br />

				<div class="row">

					<div class="span3">
						<h3>
							<span>Rooms</span> and people
						</h3>

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
								<label class="control-label" for="inputEmail">Adults per
									room</label>
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

							<div class="control-group">
								<label class="control-label" for="inputEmail">Kids per
									room</label>
								<div class="controls">
									<select class="span1 select_kids">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>



						</div>

					</div>

					<div class="row">

						<div class="span3">
							<h1 id="total_price">128.00 GBP</h1>
							<input type="submit" class="btn btn-primary btn-large book-now" value="Book Now!">
						</div>
					</div>
				</div>
			</div>
	</form:form>
	</div>


	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery-ui.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.nivo.slider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/socialcount.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.quicksand.js"
		type="text/javascript"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/global.js"></script>


	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/bootstrap-3.3.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/reservation_tab.js"
		type="text/javascript"></script>

</body>
</html>