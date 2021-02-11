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
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        
    
    </head>
    <body>
        <!-- Start Nav-bar -->
    <%--  <%@include file="navbar.jsp" %> --%>
        <!-- End Nav-bar -->
        
        <!-- Start Banner -->
       <%-- <div class="container-fluid p-0 m-0" >
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="d-block w-100  " src="<c:url value="/resources/images/hp5.jpg"  />" alt="First slide">
			      <div class="carousel-caption d-none d-md-block">
				    <h5>WediGo</h5>
				    <p>...</p>
				  </div>
			    </div>
			  </div>
			</div>
	</div> --%>
	
	<div class="card bg-dark text-white">
	  <img class="card-img" src="<c:url value="/resources/images/hp5.jpg"  />" alt="Card image">
	  <div class="card-img-overlay text-center">
	  <br>
	  <br>
	  <br>
	  <br>
	  <br>
	  
	    <h5 class="card-title">WediGo</h5>
	    <p class="card-text">Life is an event. Make it memorable.</p>
	    
	  </div>
	</div>
		<hr>	
	<!-- class="img-fluid mx-auto "  -->
		<section id="about" class="about">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>About</h2>
          <p>Who we are</p>
        </div>

        <div class="row content" data-aos="fade-up">
          <div class="col-lg-6">
            <p>
              A weddigo  is a professional who assists with the design, planning and management of a client's wedding. 
              Weddings are significant events in people's lives and as such, couples are often willing to spend considerable amount of money to ensure that their weddings are well-organized.
              When a wedding planner first meets with a client.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> The system automates the manual procedure of managing wedding activities.</li>
              <li><i class="ri-check-double-line"></i>Customer can view their wedding planning records and details easily.</li>
              <li><i class="ri-check-double-line"></i>The system is convenient and flexible to be used.</li>
              <li><i class="ri-check-double-line"></i>It saves their time, efforts, money and resources.</li>
              <li><i class="ri-check-double-line"></i>The user has to manually keep updating the information.</li>
              
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
             The conversation should consist of simply explaining the packages available and briefly discussing the type of wedding the client wants
           	 Typically, a wedding planner is hired for either Full Service or Day-of Coordination
 			 it is imperative that the planner fully explains to the client what is included in each of their packages.            </p>

          </div>
        </div>

      </div>
    </section>
		
		<hr>
		<h3 class="text-center" id="service">Our Service</h3>
		<br>
        <!-- Start Cards -->
        <div class="container" >
            <div class="row mb-4">
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                          <img class="card-img-top" src="<c:url value="/resources/images/whh1.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">Wedding Hall</h5>
                          <p class="card-text">Wedding Hall are curious places.Technically, It is simply a place where you can host a wedding.</p>
                          <div class="container text-center">	
                          	<a onclick="myFunction()" id="myBtn" class="btn btn-outline-primary">Read more</a>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                          <img class="card-img-top" src="<c:url value="/resources/images/pg2.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">Photographer</h5>
                          <p class="card-text">Photographer is to capture every part of your wedding day,which you will miss touching up makeup.</p>
                          <div class="container text-center">	
                          	<a href="#" class="btn btn-outline-primary">Read more</a>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                          <img class="card-img-top" src="<c:url value="/resources/images/ct2.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">Caterer</h5>
                          <p class="card-text">Catering a wedding is only demands attention to detail and timing, as well as clear communication </p>
                          <div class="container text-center">	
                          	<a href="#" class="btn btn-outline-primary">Read more</a>
                          </div>
                        </div>
                    </div>
                </div>  
                <div class="col-md-3 card-background">
                    <div class="card">
                        
                        <div class="card-body">
                        <img class="card-img-top" src="<c:url value="/resources/images/dj2.png"  />" alt="Card image cap">
                          <h5 class="card-title text-center p-2">DJ system</h5>
                          <p class="card-text">DJs is the combination of various instruments to be played in the background throughout the Wedding.</p>
                          <div class="container text-center">	
                          	<a href="#" class="btn btn-outline-primary">Read more</a>
                          </div>
                        </div>
                    </div>
                </div>   
            </div>
            
        </div>
        
        
        
		<hr>
		<h3 class="text-center">Our Partner</h3>
		<br>
        <!-- Start Cards -->
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-4 card-background">
                    <div class="card">
                        
                        <div class="card-body text-center">
                        	<%-- <img class="card-img-top" src="<c:url value="/resources/images/dj2.png"  />" alt="Card image cap"> --%>
                          <h5 class="card-title p-2">Gopchude Parnita Kishan</h5>
                          <p class="card-text">Roll no : 200250320020</p>
                          <p class="card-text">B.Tech(CSE)</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 card-background">
                    <div class="card">
                        
                        <div class="card-body text-center">
                           <%-- <img class="card-img-top" src="<c:url value="/resources/images/gulshan.jpg"  />" alt="Card image cap"> --%>
                          <h5 class="card-title p-2">Gulshan kumar vashisth</h5>
                          <p class="card-text">Roll no : 200250320021</p>
                          <p class="card-text">B.Tech(CSE)</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 card-background">
                    <div class="card">
                        
                        <div class="card-body text-center">
                        <%-- <img class="card-img-top" src="<c:url value="/resources/images/dj2.png"  />" alt="Card image cap"> --%>
                          <h5 class="card-title p-2">Hakeem SaiSharath</h5>
                          <p class="card-text">Roll no : 200250320023</p>
                          <p class="card-text">B.Tech(ECE)</p>
                        </div>
                    </div>
                </div>   
            </div>
            
        </div>
       <hr>
         <%--  <%@include file="footer.jsp" %> --%>
     
     
     
        
    </body>
</html>
