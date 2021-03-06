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


<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleprincipale.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleprincipale-responsive.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/popup_hotel.css" type="text/css">


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
		<jsp:include flush="true" page="/header/2" />


<div class="span12">






        
        <div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                        <h4 class="panel-title" id="contactLabel"><span class="glyphicon glyphicon-info-sign"></span> Any questions? Feel free to contact us.</h4>
                    </div>
                    <form action="#" method="post" accept-charset="utf-8">
                    <div class="modal-body" style="padding: 5px;">
                          <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <input class="form-control" name="firstname" placeholder="Firstname" type="text" required autofocus />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <input class="form-control" name="lastname" placeholder="Lastname" type="text" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="email" placeholder="E-mail" type="text" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="subject" placeholder="Subject" type="text" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <textarea style="resize:vertical;" class="form-control" placeholder="Message..." rows="6" name="comment" required></textarea>
                                </div>
                            </div>
                        </div>  
                    </form>
                    <div class="panel-footer" style="margin-bottom:-14px;">
                            <input type="submit" class="btn btn-success" value="Send"/>
                                <!--<span class="glyphicon glyphicon-ok"></span>-->
                            <input type="reset" class="btn btn-danger" value="Clear" />
                                <!--<span class="glyphicon glyphicon-remove"></span>-->
                            <button style="float: right;" type="button" class="btn btn-default btn-close" data-dismiss="modal">Close</button>
                        </div>
                    </div>
            </div>
        </div>
  
        <div class="modal fade" id="vote" tabindex="-1" role="dialog" aria-labelledby="voteLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                <h4 class="panel-title" id="voteLabel"><span class="glyphicon glyphicon-arrow-right"></span> How is My Site?</h4>
              </div>
              <div class="modal-body">
                <ul class="list-group">
                    <li class="list-group-item">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios">
                                Excellent
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios">
                                Good
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios">
                                Can Be Improved
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios">
                                Bad
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios">
                                No Comment
                            </label>
                        </div>
                    </li>
                </ul>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-success btn-vote">Vote!</button>
                <span class="btn btn-primary dropdown-results btn-results" data-for=".results">View Results</span>
                <button type="button" class="btn btn-default btn-close" data-dismiss="modal">Close</button>
                
              </div>
              <div class="row vote-results results">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-left: 5px;">
                        Excellent
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">40% Excellent (success)</span>
                            </div>
                        </div>
                        Good
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">20% Good (primary)</span>
                            </div>
                        </div>
                        Can Be Improved
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%">
                                <span class="sr-only">60% Can Be Improved (warning)</span>
                            </div>
                        </div>
                        bad
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                <span class="sr-only">80% Bad (danger)</span>
                            </div>
                        </div>
                        No Comment
                        <div class="progress">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                                <span class="sr-only">80% No Comment (info)</span>
                            </div>
                        </div>
                        Overall
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 20%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-primary" style="width: 40%">
                                <span class="sr-only">20% Complete (primary)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 25%">
                                <span class="sr-only">10% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                            <div class="progress-bar progress-bar-info" style="width: 5%">
                                <span class="sr-only">10% Complete (info)</span>
                            </div>
                        </div>
                    </div>
              </div>
            </div>
          </div>
        </div>
    <p class="text-right">Thanks to Cyruxx and BhaumikPatel</p>
    
















		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		<!-- end header -->

	<a class="btn btn-primary btn-lg" data-toggle="modal" data-target="#vote" data-original-title>
          Vote Now!
        </a>
        <a class="btn btn-primary btn-lg" data-toggle="modal" data-target="#contact" data-original-title>
          Contact
        </a>

		
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


	<%@include file="footer.jsp"%>
</div>

	<script src="<%=request.getContextPath()%>/resources/js/popup_hotel.js" type="text/javascript"></script>
</body>
</html>