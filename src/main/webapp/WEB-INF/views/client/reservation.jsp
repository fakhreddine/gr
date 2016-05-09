<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
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
				href="<%=request.getContextPath()%>/resources/reservation/css/reservation.css" />
			<link rel="stylesheet"
				href="<%=request.getContextPath()%>/resources/css/galeriephoto.css" />
</head>

<nav class="navbar navbar-default navbar-inverse" role="navigation">
<div class="container-fluid">
	<!-- Brand and toggle get grouped for better mobile display -->

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Hotels</a></li>
			<li><a href="#">Offres</a></li>

		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">A propos</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
				<ul id="login-dp" class="dropdown-menu">
					<li>
						<div class="container">
							<div class="row">
								<div class="col-md-4">
									<div class="form-body">
										<ul class="nav nav-tabs final-login">
											<li class="active"><a data-toggle="tab" href="#sectionA">Sign
													In</a></li>
											<li><a data-toggle="tab" href="#sectionB">Join us!</a></li>
										</ul>
										<div class="tab-content">
											<div id="sectionA" class="tab-pane fade in active">
												<div class="innter-form">
													<form class="sa-innate-form" method="post">
														<label>Email Address</label>
														<input type="text" name="username"> <label>Password</label>
															<input type="password" name="password">
																<button type="submit">Sign In</button> <a href="">Forgot
																	Password?</a>
													</form>
												</div>
												<div class="social-login">
													<p>- - - - - - - - - - - - - Sign In With - - - - - - -
														- - - - - -</p>
													<ul>
														<li><a href=""><i class="fa fa-facebook"></i>
																Facebook</a></li>
														<li><a href=""><i class="fa fa-google-plus"></i>
																Google+</a></li>
														<li><a href=""><i class="fa fa-twitter"></i>
																Twitter</a></li>
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
											<div id="sectionB" class="tab-pane fade">
												<div class="innter-form">
													<form class="sa-innate-form" method="post">
														<label>Name</label>
														<input type="text" name="username"> <label>Email
																Address</label> <input type="text" name="username"> <label>Password</label>
																<input type="password" name="password">
																	<button type="submit">Join now</button>
																	<p>By clicking Join now, you agree to hifriends's
																		User Agreement, Privacy Policy, and Cookie Policy.</p>
													</form>
												</div>
												<div class="social-login">
													<p>- - - - - - - - - - - - - Register With - - - - - -
														- - - - - - -</p>
													<ul>
														<li><a href=""><i class="fa fa-facebook"></i>
																Facebook</a></li>
														<li><a href=""><i class="fa fa-google-plus"></i>
																Google+</a></li>
														<li><a href=""><i class="fa fa-twitter"></i>
																Twitter</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</li>
				</ul></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid --> </nav>











<div class="container">
	<div class="row">
		<section>
		<div class="wizard">
			<div class="wizard-inner">
				<div class="connecting-line"></div>
				<ul class="nav nav-tabs" role="tablist">

					<c:if test="${reservation.dateDebutSejour!=''}">
						<li role="presentation" ><a href="#step1"
							data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
								<span class="round-tab"> <i
									class="glyphicon glyphicon glyphicon-user"></i>
							</span>
						</a></li>
					</c:if>
					

					<li role="presentation" class="active"><a href="#step2"
						data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
							<span class="round-tab"> <i
								class="glyphicon glyphicon-lamp"></i>
						</span>
					</a></li>
					<li role="presentation" class="disabled"><a href="#step3"
						data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
							<span class="round-tab"> <i
								class="glyphicon glyphicon-check"></i>
						</span>
					</a></li>

					<li role="presentation" class="disabled"><a href="#complete"
						data-toggle="tab" aria-controls="complete" role="tab"
						title="Complete"> <span class="round-tab"> <i
								class="glyphicon glyphicon-ok"></i>
						</span>
					</a></li>
				</ul>
			</div>


			<div class="tab-content">

				<div class="tab-pane active" role="tabpanel" id="step1">
					<div class="step1">
						<div class="row">
							<div class="col-md-6">
								<label for="exampleInputEmail1">First Name</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="First Name">
							</div>
							<div class="col-md-6">
								<label for="exampleInputEmail1">Last Name</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="Last Name">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="Email">
							</div>
							<div class="col-md-6">
								<label for="exampleInputEmail1">Confirm Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="Email">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label for="exampleInputEmail1">Mobile Number</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="Email">
							</div>
							<div class="col-md-6">
								<label for="exampleInputEmail1">Email address</label>
								<div class="row">
									<div class="col-md-3 col-xs-3">
										<input type="email" class="form-control"
											id="exampleInputEmail1" placeholder="Email">
									</div>
									<div class="col-md-9 col-xs-9">
										<input type="email" class="form-control"
											id="exampleInputEmail1" placeholder="Email">
									</div>
								</div>
							</div>
						</div>
					</div>
					<ul class="list-inline pull-right">
						<li><button type="button" class="btn btn-primary next-step">Save
								and continue</button></li>
					</ul>
				</div>
				<div class="tab-pane" role="tabpanel" id="step2">
					<div class="step2">
						<div class="step_21">

<p class="bg-info">faite le ${reservation.dateReservation}</p>

							<c:url var="addAction" value="/reservation/add"></c:url>

							<form:form action="${addAction}" commandName="reservation"
								method="post" class="form-horizontal">
								<div class="row form-group">
									<div class="col-xs-2">
										<label for="dateDebutSejour">Date debut de sejour</label>
									</div>
									<div class="col-xs-3">
										<input path="dateDebutSejour" type="date" class="form-control">
									</div>
									<div class="col-xs-2">
										<label for="dateFinSejour">Date fin de sejour</label>
									</div>
									<div class="col-xs-3">
										<input path="dateFinSejour" type="date" class="form-control">
									</div>

								</div>
								<div class="form-group">
									<label for="inputnbPersonne" class="col-sm-2 control-label">nombre
										de personne</label>
									<div class="col-sm-10">
										<input path="nbPersonne" type="number" class="form-control"
											id="inputnbPersonne" placeholder="nombre de personne">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<c:if test="${reservation.arrivee=='false'}">
											<button type="submit" class="btn btn-info">Comfirmer
												l'arriver</button>
										</c:if>
										<c:if test="${reservation.idReservation=='true'}">
											<button type="button" class="btn btn-success">arriver</button>
										</c:if>
									</div>
								</div>
							</form:form>



							<div class="container">
								<div class="row">
									<h1>Bootstrap 3 lightbox hidden gallery using modal</h1>
									<hr>

										<div class="row">

											<div class="col-12 col-md-4 col-sm-6">
												<a title="Image 1" href="#"> <img
													class="thumbnail img-responsive" id="image-1"
													src="http://dummyimage.com/600x350/ccc/969696&amp;text=0xD10x810xD00xB50xD10x800xD10x8B0xD00xB9"></a>
											</div>

											<div class="col-12 col-md-4 col-sm-6">
												<a title="Image 2" href="#"> <img
													class="thumbnail img-responsive" id="image-2"
													src="http://dummyimage.com/600x350/2255EE/969696&amp;text=0xD10x810xD00xB80xD00xBD0xD00xB80xD00xB9"></a>

											</div>
											<div class="col-12 col-md-4 col-sm-6">
												<a title="Image 3" href="#"> <img
													class="thumbnail img-responsive" id="image-3"
													src="http://dummyimage.com/600x350/449955/FFF&amp;text=0xD00xB70xD00xB50xD00xBB0xD00xB50xD00xBD0xD10x8B0xD00xB9"></a>
											</div>
										</div>

										<hr>
								</div>
							</div>

							<div class="hidden" id="img-repo">

								<!-- #image-1 -->
								<div class="item" id="image-1">
									<img class="thumbnail img-responsive" title="Image 11"
										src="http://dummyimage.com/600x350/ccc/969696">
								</div>
								<div class="item" id="image-1">
									<img class="thumbnail img-responsive" title="Image 12"
										src="http://dummyimage.com/600x600/ccc/969696">
								</div>
								<div class="item" id="image-1">
									<img class="thumbnail img-responsive" title="Image 13"
										src="http://dummyimage.com/300x300/ccc/969696">
								</div>

								<!-- #image-2 -->
								<div class="item" id="image-2">
									<img class="thumbnail img-responsive" title="Image 21"
										src="http://dummyimage.com/600x350/2255EE/969696">
								</div>
								<div class="item" id="image-2">
									<img class="thumbnail img-responsive" title="Image 21"
										src="http://dummyimage.com/600x600/2255EE/969696">
								</div>
								<div class="item" id="image-2">
									<img class="thumbnail img-responsive" title="Image 23"
										src="http://dummyimage.com/300x300/2255EE/969696">
								</div>

								<!-- #image-3-->
								<div class="item" id="image-3">
									<img class="thumbnail img-responsive" title="Image 31"
										src="http://dummyimage.com/600x350/449955/FFF">
								</div>
								<div class="item" id="image-3">
									<img class="thumbnail img-responsive" title="Image 32"
										src="http://dummyimage.com/600x600/449955/FFF">
								</div>
								<div class="item" id="image-3">
									<img class="thumbnail img-responsive" title="Image 33"
										src="http://dummyimage.com/300x300/449955/FFF">
								</div>

							</div>

							<div class="modal" id="modal-gallery" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button class="close" type="button" data-dismiss="modal">×</button>
											<h3 class="modal-title"></h3>
										</div>
										<div class="modal-body">
											<div id="modal-carousel" class="carousel">

												<div class="carousel-inner"></div>

												<a class="carousel-control left" href="#modal-carousel"
													data-slide="prev"><i
													class="glyphicon glyphicon-chevron-left"></i></a> <a
													class="carousel-control right" href="#modal-carousel"
													data-slide="next"><i
													class="glyphicon glyphicon-chevron-right"></i></a>

											</div>
										</div>
										<div class="modal-footer">
											<button class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>



						</div>
						<div class="step-22"></div>
					</div>
					<ul class="list-inline pull-right">
						<li><button type="button" class="btn btn-default prev-step">Previous</button></li>
						<li><button type="button" class="btn btn-primary next-step">Save
								and continue</button></li>
					</ul>
				</div>
				<div class="tab-pane" role="tabpanel" id="step3">
					<c:url var="addActio" value="/reservation/ad"></c:url>
					<form:form action="${addActio}" commandName="reservatio"
						method="post">
						<div class="step33">
							<h5>
								<strong>Basic Details</strong>
							</h5>
							<hr>
								<div class="row mar_ned"></div>
								<div class="row mar_ned">
									<div class="col-md-4 col-xs-3">
										<p align="right">
											<stong>Date of birth</stong>
										</p>
									</div>
									<div class="col-md-8 col-xs-9">
										<div class="row">
											<div class="col-md-4 col-xs-4 wdth">
												<select name="visa_status" id="visa_status"
													class="dropselectsec1">
													<option value="">Date</option>
													<option value="2">1</option>
													<option value="1">2</option>
													<option value="4">3</option>
													<option value="5">4</option>
													<option value="6">5</option>
													<option value="3">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
												</select>
											</div>
											<div class="col-md-4 col-xs-4 wdth">
												<select name="visa_status" id="visa_status"
													class="dropselectsec1">
													<option value="">Month</option>
													<option value="2">Jan</option>
													<option value="1">Feb</option>
													<option value="4">Mar</option>
													<option value="5">Apr</option>
													<option value="6">May</option>
													<option value="3">June</option>
													<option value="7">July</option>
													<option value="8">Aug</option>
													<option value="9">Sept</option>
												</select>
											</div>
											<div class="col-md-4 col-xs-4 wdth">
												<select name="visa_status" id="visa_status"
													class="dropselectsec1">
													<option value="">Year</option>
													<option value="2">1990</option>
													<option value="1">1991</option>
													<option value="4">1992</option>
													<option value="5">1993</option>
													<option value="6">1994</option>
													<option value="3">1995</option>
													<option value="7">1996</option>
													<option value="8">1997</option>
													<option value="9">1998</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row mar_ned">
									<div class="col-md-4 col-xs-3">
										<p align="right">
											<stong>Marital Status</stong>
										</p>
									</div>
									<div class="col-md-8 col-xs-9">
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
												Single </label> <label class="radio-inline"> <input
											type="radio" name="inlineRadioOptions" id="inlineRadio3"
											value="option3"> Married </label>
									</div>
								</div>
								<div class="row mar_ned">
									<div class="col-md-4 col-xs-3">
										<p align="right">
											<stong>Highest Education</stong>
										</p>
									</div>
									<div class="col-md-8 col-xs-9">
										<select name="highest_qualification"
											id="highest_qualification" class="dropselectsec">
											<option value="">Select Highest Education</option>
											<option value="1">Ph.D</option>
											<option value="2">Masters Degree</option>
											<option value="3">PG Diploma</option>
											<option value="4">Bachelors Degree</option>
											<option value="5">Diploma</option>
											<option value="6">Intermediate / (10+2)</option>
											<option value="7">Secondary</option>
											<option value="8">Others</option>
										</select>
									</div>
								</div>
								<div class="row mar_ned">
									<div class="col-md-4 col-xs-3">
										<p align="right">
											<stong>Specialization</stong>
										</p>
									</div>
									<div class="col-md-8 col-xs-9">
										<input type="text" name="specialization" id="specialization"
											placeholder="Specialization" class="dropselectsec"
											autocomplete="off">
									</div>
								</div>
								<div class="row mar_ned">
									<div class="col-md-4 col-xs-3">
										<p align="right">
											<stong>Year of Passed Out</stong>
										</p>
									</div>
									<div class="col-md-8 col-xs-9">
										<select name="year_of_passedout" id="year_of_passedout"
											class="birthdrop">
											<option value="">Year</option>
											<option value="1980">1980</option>
											<option value="1981">1981</option>
											<option value="1982">1982</option>
											<option value="1983">1983</option>
											<option value="1984">1984</option>
											<option value="1985">1985</option>
											<option value="1986">1986</option>
											<option value="1987">1987</option>
											<option value="1988">1988</option>
											<option value="1989">1989</option>
											<option value="1990">1990</option>
											<option value="1991">1991</option>
											<option value="1992">1992</option>
											<option value="1993">1993</option>
											<option value="1994">1994</option>
											<option value="1995">1995</option>
											<option value="1996">1996</option>
											<option value="1997">1997</option>
											<option value="1998">1998</option>
											<option value="1999">1999</option>
											<option value="2000">2000</option>
											<option value="2001">2001</option>
											<option value="2002">2002</option>
											<option value="2003">2003</option>
											<option value="2004">2004</option>
											<option value="2005">2005</option>
											<option value="2006">2006</option>
											<option value="2007">2007</option>
											<option value="2008">2008</option>
											<option value="2009">2009</option>
											<option value="2010">2010</option>
											<option value="2011">2011</option>
											<option value="2012">2012</option>
											<option value="2013">2013</option>
											<option value="2014">2014</option>
											<option value="2015">2015</option>
										</select>
									</div>
								</div>
								<div class="row mar_ned">
									<div class="col-md-4 col-xs-3">
										<p align="right">
											<stong>Total Experience</stong>
										</p>
									</div>
									<div class="col-md-8 col-xs-9">
										<div class="row">
											<div class="col-md-6 col-xs-6 wdth">
												<select name="visa_status" id="visa_status"
													class="dropselectsec1">
													<option value="">Month</option>
													<option value="2">Jan</option>
													<option value="1">Feb</option>
													<option value="4">Mar</option>
													<option value="5">Apr</option>
													<option value="6">May</option>
													<option value="3">June</option>
													<option value="7">July</option>
													<option value="8">Aug</option>
													<option value="9">Sept</option>
												</select>
											</div>
											<div class="col-md-6 col-xs-6 wdth"></div>
										</div>
									</div>
								</div>
								<div class="row mar_ned"></div>
						</div>
						<ul class="list-inline pull-right">
							<li><button type="button" class="btn btn-default prev-step">Previous</button></li>
							<li><button type="button" class="btn btn-default next-step">Skip</button></li>
							<li><button type="button"
									class="btn btn-primary btn-info-full next-step">Save
									and continue</button></li>
						</ul>
					</form:form>
				</div>
				<div class="tab-pane" role="tabpanel" id="complete">
					<div class="step44">
						<h5>Completed</h5>


					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
		</section>
	</div>
</div>

<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery-1.11.1.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/inscription/js/inscription.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/reservation/js/reservation.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/galeriephoto.js"></script>
</body>
</html>