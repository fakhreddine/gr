<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link
	href="<%=request.getContextPath()%>/resources/navbar/css/font-awesome.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap-responsive.css" />

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/inscription/css/inscription.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/navbar/css/navbar.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/article_chambre_with_galerie.css" />

<!-- Custom CSS -->
<link
	href="<%=request.getContextPath()%>/resources/css/modern-business.css"
	rel="stylesheet">

	<!-- Custom Fonts -->
	<link
		href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.min.css"
		rel="stylesheet" type="text/css">
</head>
<jsp:include flush="true" page="/logsing" /></td>




<div class="container">

	<!-- Page Heading/Breadcrumbs -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">
				Portfolio Item <small>Subheading</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">Portfolio Item</li>
			</ol>
		</div>
	</div>
	<!-- /.row -->

	<!-- Portfolio Item Row -->
	<div class="row">

		<div class="col-md-8">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img class="img-responsive" src="http://placehold.it/750x500"
							alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="http://placehold.it/750x500"
							alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="http://placehold.it/750x500"
							alt="">
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>

		<div class="col-md-4">
			<h3>Project Description</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
				viverra euismod odio, gravida pellentesque urna varius vitae. Sed
				dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris
				ultricies, justo eu convallis placerat, felis enim.</p>
			<h3>Project Details</h3>
			<ul>
				<li>Lorem Ipsum</li>
				<li>Dolor Sit Amet</li>
				<li>Consectetur</li>
				<li>Adipiscing Elit</li>
			</ul>
		</div>

	</div>
	<!-- /.row -->

	<!-- Related Projects Row -->
	<div class="row">

		<div class="col-lg-12">
			<h3 class="page-header">Related Projects</h3>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive img-hover img-related"
				src="http://placehold.it/500x300" alt=""></a>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive img-hover img-related"
				src="http://placehold.it/500x300" alt=""></a>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive img-hover img-related"
				src="http://placehold.it/500x300" alt=""></a>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive img-hover img-related"
				src="http://placehold.it/500x300" alt=""></a>
		</div>

	</div>
	<!-- /.row -->

	<hr>

		<!-- Footer -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
		</footer>
</div>

<%@include file="footer.jsp"%>



<!-- /.container-fluid -->
</nav>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery-1.11.1.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/inscription/js/inscription.js"></script>

</body>
</html>