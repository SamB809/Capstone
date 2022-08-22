<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Car Inventory</title>
	
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Myriad Cars</title>

  	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/home.css" />


    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600;700&display=swap"
      rel="stylesheet">
      
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
  
  
  

  
  
		  

</head>

<body>

             <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
        <a href="http://localhost:8081/Capstone-MVC/customer/main-page.html"><img class=center2 src="${pageContext.request.contextPath}/resources/img/Logo.png" height="50" alt="Myriad Cars" ></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Inventory <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Test Drive</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8081/Capstone-myraid-rest/api/customers">B2B</a>
            </li>
          </ul>
              <form class="nav-item">
              <a class="nav-link btn2" href="log_in.html">Log in</a>
    		  </form>
    
        </div>
      </nav>
<!-- end of nav -->


  			<div class="container">
  				
  				<div class="card bg-dark" id="artistList">
        		<div class="card-header">
            	<h2 id="white">Cars</h2>
            
            <input type="button" value="Add Car"
				   onclick="window.location.href='addCar'; return false;"
				   class="add-button"
			/>
         
        		</div>
        		
  				</div>
  				
  				
  				<div class="container">
					<div class="row">
					
						<c:forEach var="tempCar" items="${cars}">
			
			
						
						<c:url var="updateLink" value="/car/updateCar">
							<c:param name="carId" value="${tempCar.cid}" />
						</c:url>					
			
						
						<c:url var="deleteLink" value="/car/deleteCar">
							<c:param name="carId" value="${tempCar.cid}" />
						</c:url>		
						
						
				
							<div class="col-sm-4 mb-3 d-flex justify-content-center" >
								<div class="card bg-dark" style="width: 24rem;">
				  					<img class="card-img-top" src="${tempCar.cUrl}" alt="">
				  					
				  					<div class="card-body">
				    				<h5 class="card-title">${tempCar.cName}</h5>
				    				<p class="card-text" id="white">${tempCar.cMileage}</p>
				    				<!-- display the update link -->
									<a href="${updateLink}" class="btn btn-info" role="button">Update</a>
											|
									<a href="${deleteLink}"
									   onclick="if (!(confirm('Are you sure you want to delete this car?'))) return false" class="btn btn-danger" role="button">Delete</a>
			  						</div>
								</div>
							
							</div>
		
						
						
					
						</c:forEach>
					
					</div>
				</div>
  				
  				

  				
  			
  		
  			</div>
			
			
			








	

</body>

</html>