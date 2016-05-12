<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Hotel - Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	

	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.2.min.css" type="text/css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" type="text/css">	
		
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-3.3.2.min.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/singin.css" type="text/css" />
	<link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet">
	
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

<body background="./images/pattern2.jpg">
	<jsp:include flush="true" page="/header/7" />
		<div class="container-fluid">
		
			<div class="span12">	
		<br /><br />
			
				
			<div class="container">
	<div class="row">
		<h2>User Login / Registration form</h2>
	</div>
</div>
<br>
<br>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">Login to <b>RSVHotel</b></h4> or go back to our <a href="/gestionreservation/">main site</a>.
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well">
                          <form id="loginForm" method="POST">
                              <div class="form-group">
                                  <label for="username" class="control-label">Username</label>
                                  <input type="text" class="form-control" name="username" value="" required="" title="Please enter your username" placeholder="username">
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                  <input type="password" class="form-control" name="password" placeholder="password" value="" required="" title="Please enter your password">
                                  <span class="help-block"></span>
                              </div>
                              <div id="loginErrorMsg" class="alert alert-error hide">Wrong username or password</div>
                              <div class="checkbox">
                                  <label>
                                      <input type="checkbox" name="remember" id="remember"> Remember login
                                  </label>
                                  <p class="help-block">(if this is a private computer)</p>
                              </div>
                              <button type="submit" value="login" name="submit" class="btn btn-success btn-block">Login</button>
                          </form>
                      </div>
                  </div>
                  <div class="col-xs-6">
                      <p class="lead">Register now for <span class="text-success">FREE</span></p>
                      <ul class="list-unstyled" style="line-height: 2">
                          <li><span class="fa fa-check text-success"></span> See all your orders</li>
                          <li><span class="fa fa-check text-success"></span> Shipping is always free</li>
                          <li><span class="fa fa-check text-success"></span> Save your favorites</li>
                          <li><span class="fa fa-check text-success"></span> Fast checkout</li>
                          <li><span class="fa fa-check text-success"></span> Get a gift <small>(only new customers)</small></li>
                          <li><span class="fa fa-check text-success"></span>Holiday discounts up to 30% off</li>
                      </ul>
                      <p><a href="/gestionreservation/step-two" class="btn btn-info btn-block">Yes please, register now!</a></p>
                  </div>
              </div>
          </div>
      </div>

  </div>
<script type="text/javascript">

</script>


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			</div>
		</div>
		</div>
<jsp:include flush="true" page="/footer" />

	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/singin.js" type="text/javascript"></script>
</body>
</html>