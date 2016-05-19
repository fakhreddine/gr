<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Reservation - Hotel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.0.0.css" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/navbar.css" type="text/css">

	
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

<nav style="
    position: fixed;
    right: 0;
    left: 0;
    border-width: 0 0 1px;
    border-radius: 0;
    background-color: #f8f8f8;
    border-color: #e7e7e7;
    top: 0;
    z-index: 1030;
    min-height: 50px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    display: block;" >
  <div >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Hotels Reservation</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
				<ul class="nav navbar-nav">
					<c:if test="${idpage==1}">
						<li class="active"><a href="/gestionreservation/">Home</a></li>
					</c:if>
					<c:if test="${idpage!=1}">
						<li class=""><a href="/gestionreservation/">Home</a></li>
					</c:if>
					<c:if test="${idpage==2}">
						<li class="active"><a href="/gestionreservation/hotels">Hotels</a></li>
					</c:if>
					<c:if test="${idpage!=2}">
						<li class=""><a href="/gestionreservation/hotels">Hotels</a></li>
					</c:if>
					<c:if test="${idpage==3}">
						<li class="active"><a href="/gestionreservation/rooms">Rooms</a></li>
					</c:if>
					<c:if test="${idpage!=3}">
						<li class=""><a href="/gestionreservation/rooms">Rooms</a></li>
					</c:if>
					<c:if test="${idpage==4}">
						<li class="dropdown active"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false"> <span
								class="glyphicon glyphicon-shopping-cart"></span>Reservations<span
								class="caret"></span></a>
							<ul class="dropdown-menu dropdown-cart" role="menu">
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li class="divider"></li>
								<li><a class="text-center" href="/gestionreservation/reservations">View Reservation</a></li>
							</ul></li>
					</c:if>
					<c:if test="${idpage!=4}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"> <span
								class="glyphicon glyphicon-shopping-cart"></span>Reservations<span
								class="caret"></span></a>
							<ul class="dropdown-menu dropdown-cart" role="menu">
								<li><span class="item"> <span class="item-left"> <!-- http://lorempixel.com/50/50/ -->
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li><span class="item"> <span class="item-left">
											<img src="" alt="" /> <span
											class="item-info"> <span>Item name</span> <span>23$</span>
										</span>
									</span> <span class="item-right">
											<button class="btn btn-xs btn-danger pull-right">x</button>
									</span>
								</span></li>
								<li class="divider"></li>
								<li><a class="text-center" href="/gestionreservation/reservations">View Reservation</a></li>
							</ul></li>
					</c:if>
					<c:if test="${idpage==5}">
						<li class="active"><a href="/gestionreservation/gallery">Gallery</a></li>
					</c:if>
					<c:if test="${idpage!=5}">
						<li><a href="/gestionreservation/gallery">Gallery</a></li>
					</c:if>
					<c:if test="${idpage==6}">
						<li class="active"><a href="/gestionreservation/about_us">About
								Us</a></li>
					</c:if>
					<c:if test="${idpage!=6}">
						<li><a href="/gestionreservation/about_us">About Us</a></li>
					</c:if>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<c:if test="${idpage==7}">
						<li class="active"><a href="/gestionreservation/singin">Sing in</a></li>
					</c:if>
					<c:if test="${idpage!=7}">
						<li><a href="/gestionreservation/singin">Sing in</a></li>
					</c:if>

					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown">Log in <b class="caret"></b></a>
						<ul class="dropdown-menu" style="padding: 15px; min-width: 250px;">
							<li>
								<div class="row">
									<div class="col-md-12">
										<form class="form" role="form"
											accept-charset="UTF-8" id="login-nav" action="j_spring_security_check" method="post">
											<div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">Email
													address</label> <input id="j_username" name="j_username" class="form-control" placeholder="Email address" required>
											</div>
											<div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">Password</label>
												<input type="password" id="j_password" name="j_password" class="form-control" placeholder="Password" required>
											</div>
											<div class="checkbox">
												<label> <input type="checkbox"> Remember me
												</label>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-success btn-block">Sign
													in</button>
											</div>
										</form>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li><input class="btn btn-primary btn-block" type="button"
								id="sign-in-google" value="Sign In with Google"> <input
								class="btn btn-primary btn-block" type="button"
								id="sign-in-twitter" value="Sign In with Twitter"></li>
						</ul></li>
				</ul>
			</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-3.0.0.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/navbar.js"></script> 
</body>

</html>