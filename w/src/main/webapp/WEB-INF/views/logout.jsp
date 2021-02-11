<%@page import="wedigo.Dao.WeddingHallDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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
		
   
	
  		 	
  	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 id="weddinghall" class="text-center text-uppercase mb-3">Wedding Hall</h1>
				<table class="table">
				  <thead class="bg-warning">
				    <tr>
				      <th scope="col">Name</th>
				      <th scope="col">Address</th>
				      <th scope="col">Contact</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
					  <c:forEach  items="${weddinghalls }" var="wh">
					    <tr>
					      <th scope="row">${wh.name }</th>
					      <td>${wh.address }</td>
					      <td>${wh.contact }</td>
					      <td class="font-weight-bold">&#x20B9; ${wh.price }</td>
					      <td>
					      	<button onclick="myFunction()" class="btn btn-warning">Booking</button>
					      	 
					      </td>
					    </tr>
					   </c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
	
	<hr>
	<hr>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 id="photographer" class="text-center text-uppercase mb-3">Photographer</h1>
				<table class="table">
				  <thead class="bg-warning">
				    <tr>
				      <th scope="col">Name</th>
				      <th scope="col">Address</th>
				      <th scope="col">Contact</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
					  <c:forEach  items="${photographers }" var="p">
					    <tr>
					      <th scope="row">${p.name }</th>
					      <td>${p.address }</td>
					      <td>${p.contact }</td>
					      <td class="font-weight-bold">&#x20B9; ${p.price }</td>
					      <td>
					      	<button onclick="myFunction()" class="btn btn-warning">Booking</button>
					      	 
					      </td>
					    </tr>
					   </c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
	<hr>
	<hr>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 id="caterers" class="text-center text-uppercase mb-3">Caterer</h1>
				<table class="table">
				  <thead class="bg-warning">
				    <tr>
				      <th scope="col">Name</th>
				      <th scope="col">Address</th>
				      <th scope="col">Contact</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
					  <c:forEach  items="${caterers }" var="c">
					    <tr>
					      <th scope="row">${c.name }</th>
					      <td>${c.address }</td>
					      <td>${c.contact }</td>
					      <td class="font-weight-bold">&#x20B9; ${c.price }</td>
					      <td>
					      	<button onclick="myFunction()" class="btn btn-warning">Booking</button>
					      	 
					      </td>
					    </tr>
					   </c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
	<hr>
	<hr>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 id="djsystem" class="text-center text-uppercase mb-3">D.J System</h1>
				<table class="table">
				  <thead class="bg-warning">
				    <tr>
				      <th scope="col">Name</th>
				      <th scope="col">Address</th>
				      <th scope="col">Contact</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
					  <c:forEach  items="${djs }" var="d">
					    <tr>
					      <th scope="row">${d.name }</th>
					      <td>${d.address }</td>
					      <td>${d.contact }</td>
					      <td class="font-weight-bold">&#x20B9; ${d.price }</td>
					      <td>
					      	<button onclick="myFunction()" class="btn btn-warning">Booking</button>
					      	 
					      </td>
					    </tr>
					   </c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
  		 	
	
	
	
	
	
	
	
<script >
function myFunction() {
	swal({
		  title: "Are you sure?",
		  text: "For Confirming Booking...",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		    swal("Booking Sucessfull.....details shared on your registered email address", {
		      icon: "success",
		    });
		  } else {
		    swal("Booking UnSucessfull");
		  }
		});
	}

</script>
</body>
</html>
        