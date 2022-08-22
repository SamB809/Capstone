<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Myriad Cars</title>

   	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/car_inventory.css" />
		  
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
  
    <style>
    
      body {
        
        position: relative;

        background-image: linear-gradient(
            rgba(34, 34, 34, 0.6),
            rgba(34, 34, 34, 0.6)
          ),
          url(../resources/img/road.jpg);
        background-size: cover;
        
      }
    </style>
    
 
  </head>

<body>

             <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
        <a href="http://localhost:8081/Capstone-MVC/customer/main-login"><img class=center2 src="${pageContext.request.contextPath}/resources/img/Logo.png" height="50" alt="Myriad Cars" ></a>
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
              <a class="nav-link" href="http://localhost:8081/myraid/api/customers">B2B</a>
            </li>
          </ul>
                <form class="nav-item">
              <a class="nav-link btn2" href="http://localhost:8081/Capstone-MVC/customer/my_cart">Checkout</a>
              
    		  </form>
    
    
        </div>
      </nav>
  				<div class="container">
					<div class="row">

				 <c:forEach var="tempCar2" items="${nonUserCars}">
				
				<!-- construct an "update" link with customer id -->
					<c:url var="addLink" value="/customer/testrelationship">
						<c:param name="cid" value="${tempCar2.cid}" />
					</c:url>
						

<div style="margin-left: 30px; margin-top: 50px;">
  <div class="row mt-5">
    <div class="col-sm-4">
      <div class="card">
    <img src="${tempCar2.cUrl}" class="card-img-top" width="100%">
    <div class="card-body pt-0 px-0">
      <div class="d-flex flex-row justify-content-between mb-0 px-3">
        <small class="text-muted mt-1">Price</small>
        <h6>&dollar;${tempCar2.cPrice}&ast;</h6>
      </div>
      <hr class="mt-2 mx-3">
		<div class="d-flex flex-row justify-content-between px-3 pb-4">
        <div class="d-flex flex-column"><span class="text-muted">Name</span></div>
        <div class="d-flex flex-column"><h5 class="mb-0">${tempCar2.cYear}&emsp;${tempCar2.cName}</h5></div>
      </div>
      <div class="d-flex flex-row justify-content-between px-3 pb-4">
        <div class="d-flex flex-column"><span class="text-muted">Color</span></div>
        <div class="d-flex flex-column"><h5 class="mb-0">${tempCar2.cColor}</h5></div>
      </div>
        <div class="d-flex flex-row justify-content-between px-3 pb-4">
        <div class="d-flex flex-column"><span class="text-muted">Mileage</span></div>
        <div class="d-flex flex-column"><h5 class="mb-0">${tempCar2.cMileage}</h5><small class="text-muted">Miles</small></div>
      </div>
      <div class="d-flex flex-row justify-content-between p-3 mid">
        <div class="d-flex flex-column"><small class="text-muted mb-1">ENGINE</small><div class="d-flex flex-row"><img src="https://imgur.com/iPtsG7I.png" width="35px" height="25px"><div class="d-flex flex-column ml-1"><small class="ghj">1.4L MultiAir</small><small class="ghj">16V I-4 Turbo</small></div></div></div>
        <div class="d-flex flex-column"><small class="text-muted mb-2">HORSEPOWER</small><div class="d-flex flex-row"><img src="https://imgur.com/J11mEBq.png"><h6 class="ml-1">135 hp&ast;</h6></div></div>
      </div>
      <small class="text-muted key pl-3">*Dealer Fees May Apply</small>
      <div class="mx-3 mt-3 mb-2"><a href="${addLink}" class="btn">Buy</a></div>
      <small class="d-flex justify-content-center text-muted">*Legal Disclaimer</small>
    </div>
  </div>
    </div>
  </div>
</div>

						</c:forEach>
										</div>
				</div>
					

</body>
</html>