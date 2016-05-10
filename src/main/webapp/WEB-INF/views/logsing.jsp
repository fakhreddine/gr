<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.2.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-example.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/prettify.css"
	type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/bootstrap-3.3.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/prettify.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-multiselect.css"
	type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/bootstrap-multiselect.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		window.prettyPrint() && prettyPrint();
	});
</script>
</head>
<jsp:include flush="true" page="/logsing/3" /></td>

<div class="container">

	<div class="example">
		<script type="text/javascript">
			$(document).ready(function() {
				$('#example-getting-started').multiselect();
			});
		</script>
		<select id="example-getting-started" multiple="multiple">
			<option value="cheese">Cheese</option>
			<option value="tomatoes">Tomatoes</option>
			<option value="Mozzarella">Mozzarella</option>
			<option value="Mushrooms">Mushrooms</option>
			<option value="Pepperoni">Pepperoni</option>
			<option value="Onions">Onions</option>
		</select>
	</div>


	<!-- /.row -->

	<!-- Portfolio Item Row -->


	<!-- Related Projects Row -->
	<div class="row">


		<c:forEach items="${hotels}" var="hotel">
			<div class="col-sm-4 col-lg-4 col-md-4">
				<div class="thumbnail">
					<img src="http://placehold.it/320x150" alt="${hotel.nomHotel}">
						<div class="caption">
							<h4>
								<a href="hotel/${hotel.idHotel}">${hotel.nomHotel}</a>
							</h4>
							<p>${hotel.descriptionHotel}</p>
						</div>
						<div class="ratings">
							<p class="pull-right">...</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
				</div>
			</div>
		</c:forEach>


	</div>
	<!-- /.row -->

</div>

<%@include file="footer.jsp"%>


</body>
</html>