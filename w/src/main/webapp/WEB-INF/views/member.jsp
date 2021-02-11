<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
       	<link  href="<c:url value="/resources/css/mystyle.css"  />">
		<script src="<c:url value="/resources/js/scripts.js"  />"></script>
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
    </head>
<body>
        <!-- Start Nav-bar -->
        <%--  <%@include file="navbar.jsp" %>  --%>
        
         <div class="container" >
         <br>
         	<h1 class="text-center">Register Here...</h1>
         	<h5 class="text-center">register as a</h5>
         	<br>
            <div class="row mb-4">
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                          <img class="card-img-top" src="<c:url value="/resources/images/whh1.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">Wedding Hall</h5>
                          <div class="container text-center">	
                          	<a href="weddinghall" class="btn btn-outline-primary">Click Here</a>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                          <img class="card-img-top" src="<c:url value="/resources/images/pg2.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">Photogarpher</h5>
                          <div class="container text-center">	
                          	<a href="photographer" class="btn btn-outline-primary">Click Here</a>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                          <img class="card-img-top" src="<c:url value="/resources/images/ct2.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">Carters</h5>
                          <div class="container text-center">	
                          	<a href="caterer" class="btn btn-outline-primary">Click Here</a>
                          </div>
                        </div>
                    </div>
                </div>  
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                        <img class="card-img-top" src="<c:url value="/resources/images/dj2.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">DJ system</h5>
                          <div class="container text-center">	
                          	<a href="dj" class="btn btn-outline-primary">Click Here</a>
                          </div>
                        </div>
                    </div>
                </div>   
            </div>
            
        </div>
        
       
</body>
</html>
        