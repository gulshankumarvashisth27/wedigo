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
        
        
        
        <main class="p-5">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-dark text-center" style="background-color: #fff59d">
                            <span class="fa fa-phone fa-spin fa-3x"></span>
                            <br>
                            <p>Contact Us</p>
                        </div>
                        <div class="card-body" style="background: #fffde7">
                            <form  method="post">
                                <div class="form-group">
                                    <label for="user_name">Name</label>
                                    <input name="user_name" type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter name" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required">
                   
                                </div>
                                
                                <div class="form-group">
                                    <label for="user_name">Contact number</label>
                                    <input name="user_name" type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter number" required="required">                         
                                </div>
                                
                           
                                
                                
                                
                                <div class="form-group">
                                    <textarea name="about" class="form-control" rows="5" placeholder="Enter your query..."></textarea>
                                </div>
                                
                                <div class="text-center">
                                    
                                    <br>
                                    <a href="home" onclick="myFunction()"  class="btn btn-warning">Submit</a>
                                </div>
                                </form>   
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <hr>
       <%--  <%@include file="footer.jsp" %> --%>
        
<script >
function myFunction() {
	alert("We will contact you as soon as possible");
	
	
}
</script>        
</body>
</html>
        