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
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="panel-title" id="contactLabel"><span class="glyphicon glyphicon-info-sign"></span> New hotel</h4>
                    </div>
                    <c:url var="addHotel" value="/hotel/add" ></c:url>
					<form:form action="${addHotel}" commandName="hotel">
                    <div class="modal-body" style="padding: 5px;">
                          <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="nomHotel" placeholder="Label" type="text" required="true" autofocus="true" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="emailHotel" placeholder="Email" type="text" required="true" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="adresseHotel" placeholder="Adress" type="text" required="true" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="codePostalHotel" placeholder="Code ZIP" type="text" required="true" />
                                </div>
                            </div>
                            <div class="row">
                            	<div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="telHotel" placeholder="Phone" type="text" required="true" />
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="faxHotel" placeholder="Fax" type="text" required="true" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <form:textarea style="resize:vertical;" class="form-control" placeholder="About hotel.." rows="6" path="descriptionHotel" required="true" ></form:textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                	<div id="stars" class="starrr stars" data-rating="2"></div>
                                    
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                     <form:input id="count" path="nbEtoil"  type="hidden" />
                                </div>
                               
                            </div>
                            
                        </div>  
                    
	                    <div class="panel-footer" style="margin-bottom:-14px;">
	                            <button type="submit" class="btn btn-success submit-with-icon" value="Send"> save
	                            	<span class="glyphicon glyphicon-floppy-disk">
	                            	</span>
	                            </button>    
	                    </div>
                    </form:form>
                    </div>
            </div>
        </div>

        <a class="btn btn-primary btn-lg" data-toggle="modal" data-target="#contact" data-original-title>
         Add hotel
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
</div>
</div>
	<%@include file="footer.jsp"%>


	<script src="<%=request.getContextPath()%>/resources/js/popup_hotel.js" type="text/javascript"></script>
</body>
</html>