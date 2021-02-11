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
    
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 85% 0, 100% 0, 100% 100%, 72% 96%, 46% 100%, 23% 96%, 0 100%, 0 0, 23% 0);
            }
            .card-background{
                clip-path: polygon(20% 0%, 80% 0%, 100% 20%, 100% 80%, 80% 100%, 20% 100%, 0% 80%, 0% 20%);
            }
        </style>
    
    </head>
<body>
        <!-- Start Nav-bar -->
        <%-- <%@include file="navbar.jsp" %> --%>
         
        
        
        <main class="p-5">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header  text-dark text-center" style="background-color: #fff59d">
                            <span class="fa fa-user-circle fa-spin fa-3x"></span>
                            <br>
                            <p>Register here....</p>
                        </div>
                        <div class="card-body" style="background: #fffde7">
                            <form action="reg-form" >
                                <div class="form-group">
                                    <label for="user_name">User name</label>
                                    <input name="name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name" required="required">                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required="required">
                   
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="password" type="password" class="form-control" id="password" placeholder="Password" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <br>
                                    <input type="radio"  name="gender" value="Male"> Male
                                    <input type="radio"  name="gender" value="Female"> Female
                                </div>
                                
                                <div class="form-group">
                                    <textarea name="about" class="form-control" rows="5" placeholder="Enter Something about yourself"></textarea>
                                </div>
                               
                                <div class="text-center">
                                   
                                    <br>
                                    <button  type="submit" class="btn btn-warning">Submit</button>
                                </div>
                                </form>   
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <hr>
        <%-- <%@include file="footer.jsp" %> --%>
</body>
</html>
        