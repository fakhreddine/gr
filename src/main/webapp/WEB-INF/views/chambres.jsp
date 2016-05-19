<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Hotel - Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
	

	
	
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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleprincipale.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleprincipale-responsive.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/popup.css" type="text/css">
<body>
	
		<div class="container-fluid">
			<jsp:include flush="true" page="/header/3" />
			<!-- end header -->
			
		<div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="panel-title" id="contactLabel"><span class="glyphicon glyphicon-info-sign"></span> New hotel</h4>
                    </div>
                    <c:url var="addRoom" value="/room/add" ></c:url>
					<form:form action="${addRoom}" commandName="chambre">
                    <div class="modal-body" style="padding: 5px;">
                    		<div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                   <form:select path="hotel.idHotel" id="aar" name="aar" class="form-control">
								      <c:set var="countH" value="0" scope="page" />
										<c:forEach items="${hotelsadmin}" var="hotel" >
											<c:if test="${countH==0}"> 
												 <%= "<option value=\"\">Select hotel</option>" %>
											</c:if>
											<c:set var="countH" value="${countH + 1}" scope="page"/>
							      			<option value="${hotel.idHotel}">${hotel.nomHotel}</option>
								      	</c:forEach>
								    </form:select>
                                </div>
                            </div>
                            <div class="row">
                            	<div class="col-lg-4 col-md-4 col-sm-4" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="numChambre" placeholder="Room number" type="text" value="" required="true" autofocus="true" />
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4" style="padding-bottom: 10px;">
                                    <form:input class="form-control" path="nbPlace" placeholder="Person places" type="text" required="true" />
                                </div>
                                 <div class="col-lg-4 col-md-4 col-sm-4" style="padding-bottom: 10px;">
                                   <form:input class="form-control" path="telChambre" placeholder="Phone number" type="text" required="true" />
                                </div>
                            </div>
                            
                            
                            
                           
                            
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <select id="aar" name="aar" class="form-control">
                                    	<c:set var="countC" value="0" scope="page" />
										<c:forEach items="${categories}" var="categorie" >
											<c:if test="${countC==0}"> 
												 <%= "<option value=\"\">Select category</option>" %>
											</c:if>
											<c:set var="countC" value="${countC + 1}" scope="page"/>
							      			<option value="${categorie.idCategorie}">${categorie.labelCatgorie}</option>
								      	</c:forEach>
								    </select>
								  
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <select id="aar" name="aar" class="form-control">
								     <c:set var="countT" value="0" scope="page" />
										<c:forEach items="${typechambres}" var="typechambre" >
											<c:if test="${countT==0}"> 
												 <%= "<option value=\"\">Select type</option>" %>
											</c:if>
											<c:set var="countT" value="${countT + 1}" scope="page"/>
							      			<option value="${typechambre.idTypechambre}">${typechambre.descriptionType}</option>
								      	</c:forEach>
								    </select>
								   
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
         Add Chambre
        </a>
	
	<div class="span12">	
		<br /><br />
		<c:set var="count" value="0" scope="page" />
		<c:forEach items="${chambres}" var="chambre" >
				 
				 <c:if test="${count==0}"> 
				 <%= 	"<div class=\"row-fluid\">"  %>
				 </c:if>
				 <c:set var="count" value="${count + 1}" scope="page"/>
				<div class="span4">
					<h3><span>${chambre.typechambre.descriptionType}</span><br/>${chambre.hotel.nomHotel}</h3>
					<a href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/rooms/luxury_room.jpg" alt="" /></a>
					<ul class="thumbnails hotel-options no_margin_left">
						<li class="no_margin_left"><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Wireless.png" alt="" width="24" height="24"  /></a></li>
						<li><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Restaurant-black.png" alt="" width="24"/></a></li>
						<li><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Tv-black.png" alt="" width="24"/></a></li>
						<li><a class="btn btn-large btn-info" href="book-start.html"><img src="<%=request.getContextPath()%>/resources/css/images/icons/Shower.png" alt="" width="24"/></a></li>
					</ul>
					<p>${chambre.categorie.labelCatgorie}</p>		
					<div class="row center">
						<a class="btn btn-primary btn-large check-availability" href="book-start.html">Show deals</a>
					</div>			
				</div>	
 
				 <c:if test="${count==3}"> 
				 	<c:set var="count" value="0" scope="page"/>
				 	<%= 	"</div>" %>
				 </c:if>
						
		</c:forEach>
		</div>
	</div>
	</div>
<%@include file="footer.jsp"%>
	
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script href="<%=request.getContextPath()%>/resources/css/popup.js"></script>
	
</body>
</html>