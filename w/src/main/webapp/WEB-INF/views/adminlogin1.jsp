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
    
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    </head>
<body>
        <!-- Start Nav-bar -->
        <%--  <%@include file="navbar.jsp" %>  --%>
        
        
         <main class="d-flex align-items-center " style="height: 80vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        
                        <div class="card">
                            <div class="card-header text-dark text-center" style="background-color: #fff59d">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <p class="text-warning" >Admin Login here...</p>
                           		<p class="text-danger">Invalid Admin login detail</p>
                            <div class="card-body text-dark" style="background: #fffde7">
                                <form action="adminloginform" method="post">
                                    <div class="form-group">
                                       <label for="exampleInputEmail1">Email address</label>
                                       <input name="email" type="email" class="form-control" id="userEmail" name="email" aria-describedby="emailHelp" placeholder="Enter email" required="required">
                                       <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                       <label for="exampleInputPassword1">Password</label>
                                       <input name="password" type="password" class="form-control" id="userPass" name="password" placeholder="Password" required="required">
                                    </div>
                                    <div class="text-center">
                                        <button   type="submit" class="btn btn-warning">Submit</button>
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
            </div>
        </main>
      <hr>
      <%-- <%@include file="footer.jsp" %> --%>
</body>
</html>
        