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


<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.0.0.css" type="text/css">	
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleprincipale.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleprincipale-responsive.css" type="text/css">



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
		
		
		
		
	
		<h1>Bootstrap 3 Variable-Width Modal</h1>
<p>I wanted to override the default Bootstrap modal so it's variable-width, and height-optimized.</p>
<p>Add "modal-wide" to the main modal div, and adjust the width in the CSS. In this example, I'm using 90%.</p>
<p>Since I'm using jQuery to set the max-height of the content area based on the browser dimensions, the modal will be only as tall as necessary, and will provide a scrollbar if needed.</p>

<a data-toggle="modal" href="#normalModal" class="btn btn-default">Normal</a>

<a data-toggle="modal" href="#tallModal" class="btn btn-primary">Wide, Tall Content</a>

<a data-toggle="modal" href="#shortModal" class="btn btn-primary">Wide, Short Content</a>





<div id="normalModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <iframe frameborder="0" scrolling="no" width="700" height="700" src="">
        </iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div id="tallModal" class="modal modal-wide fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <iframe frameborder="0" scrolling="no" width="700" height="700" src="http://google.about.com/b/2013/04/01/google-nose.htm">
        </iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div id="shortModal" class="modal modal-wide fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	<div class="container-fluid">
		<jsp:include flush="true" page="/header/2" />
		<!-- end header -->

	
		

		<div class="span12">
			<br />
			<br />
			<c:set var="count" value="0" scope="page" />
			<c:forEach items="${hotels}" var="hotel">

				<c:if test="${count==0}">
					<%="<div class=\"row-fluid\">"%>
				</c:if>
				<c:set var="count" value="${count + 1}" scope="page" />
				<div class="span4">
					<h3>
						<span>${hotel.nomHotel}</span>
					</h3>
					<a href="book-start.html"><img
						src="<%=request.getContextPath()%>/resources/css/images/rooms/luxury_room.jpg"
						alt="" /></a>

					<p>${hotel.nomHotel}</p>
					<div class="row center">
						<a class="btn btn-primary btn-large check-availability"
							href="book-start.html">Show deals</a>
					</div>
				</div>

				<c:if test="${count==3}">
					<c:set var="count" value="0" scope="page" />
					<%="</div>"%>
				</c:if>

			</c:forEach>
		</div>
	</div>
	</div>
	<%@include file="footer.jsp"%>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-3.0.0.js"></script>

</body>
</html>