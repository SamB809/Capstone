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
    
    
        </div>
      </nav>     
       
       
       
       
       
       
    
       
        <table class="table" style = "margin-top: 70px;">

            <tr id= "new_color">
                <th scope="col" style="width: 50px">Image</th>
                <th scope="col" style="width: 50px">Name</th>
                <th scope="col" style="width: 50px">Year</th>
                <th scope="col" style="width: 50px">Mileage</th>
                <th scope="col" style="width:50px">Color<th>
                <th scope="col" style="width:50px">Price<th>
            </tr>
            <tbody>
            
            <!-- loop over and print our customers -->
				<c:forEach var="tempCar" items="${userCars}">
				
				<!-- construct an "update" link with customer id -->
					 <c:url var="deleteLink" value="/customer/deletetestrelationship">
						<c:param name="cid" value="${tempCar.cid}" />
					</c:url>	 
				
					<tr id= "new_color">
					<td style="width: 50px"><img src="${tempCar.cUrl}" height="100" ></td>
						<td style="width: 50px"> ${tempCar.cName} </td>
						<td style="width: 50px"> ${tempCar.cYear} </td>
						<td style="width: 50px">  ${tempCar.cColor} </td>
						<td style="width: 50px">  ${tempCar.cMileage} </td>
						<td style="width: 50px">  ${tempCar.cPrice} </td>
						<td style="width: 50px"> <a href="${deleteLink}">Delete</a> </td> 
						<!-- make attend link to add event to customer -->
					</tr>
				
				</c:forEach> 
            </tbody>
        </table>
        
        
        
       </body>
</html> 
        
        
        