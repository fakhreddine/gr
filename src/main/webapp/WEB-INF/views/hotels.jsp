<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>


        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.2.min.css" type="text/css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-example.css" type="text/css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/prettify.css" type="text/css">

        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-3.3.2.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/prettify.js"></script>

        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-multiselect.css" type="text/css">
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-multiselect.js"></script>

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

		<div class="col-sm-4 col-lg-4 col-md-4">
			<div class="thumbnail">
				<img src="http://placehold.it/320x150" alt="">
					<div class="caption">
						<h4 class="pull-right">$24.99</h4>
						<h4>
							<a href="#">First Product</a>
						</h4>
						<p>
							See more snippets like this online store item at <a
								target="_blank" href="http://www.bootsnipp.com">Bootsnipp -
								http://bootsnipp.com</a>.
						</p>
					</div>
					<div class="ratings">
						<p class="pull-right">15 reviews</p>
						<p>
							<span class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span>
						</p>
					</div>
			</div>
		</div>

		<div class="col-sm-4 col-lg-4 col-md-4">
			<div class="thumbnail">
				<img src="http://placehold.it/320x150" alt="">
					<div class="caption">
						<h4 class="pull-right">$64.99</h4>
						<h4>
							<a href="#">Second Product</a>
						</h4>
						<p>This is a short description. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit.</p>
					</div>
					<div class="ratings">
						<p class="pull-right">12 reviews</p>
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

		<div class="col-sm-4 col-lg-4 col-md-4">
			<div class="thumbnail">
				<img src="http://placehold.it/320x150" alt="">
					<div class="caption">
						<h4 class="pull-right">$74.99</h4>
						<h4>
							<a href="#">Third Product</a>
						</h4>
						<p>This is a short description. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit.</p>
					</div>
					<div class="ratings">
						<p class="pull-right">31 reviews</p>
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

		<div class="col-sm-4 col-lg-4 col-md-4">
			<div class="thumbnail">
				<img src="http://placehold.it/320x150" alt="">
					<div class="caption">
						<h4 class="pull-right">$84.99</h4>
						<h4>
							<a href="#">Fourth Product</a>
						</h4>
						<p>This is a short description. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit.</p>
					</div>
					<div class="ratings">
						<p class="pull-right">6 reviews</p>
						<p>
							<span class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star-empty"></span> <span
								class="glyphicon glyphicon-star-empty"></span>
						</p>
					</div>
			</div>
		</div>

		<div class="col-sm-4 col-lg-4 col-md-4">
			<div class="thumbnail">
				<img src="http://placehold.it/320x150" alt="">
					<div class="caption">
						<h4 class="pull-right">$94.99</h4>
						<h4>
							<a href="#">Fifth Product</a>
						</h4>
						<p>This is a short description. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit.</p>
					</div>
					<div class="ratings">
						<p class="pull-right">18 reviews</p>
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

		<div class="col-sm-4 col-lg-4 col-md-4">
			<h4>
				<a href="#">Like this template?</a>
			</h4>
			<p>
				If you like this template, then check out <a target="_blank"
					href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this
					tutorial</a> on how to build a working review system for your online
				store!
			</p>
			<a class="btn btn-primary" target="_blank"
				href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View
				Tutorial</a>
		</div>

	</div>
	<!-- /.row -->

</div>

<%@include file="footer.jsp"%>


</body>
</html>