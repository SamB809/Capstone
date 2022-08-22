<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Events</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous" defer></script>
    <!-- Custom styles for this template -->
    
    <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/register.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<!--Navigation bar-->


	
<!--end of Navigation bar-->
<div class="container">
        
        <div class="hero">

    <div id="grad1">
        <h3 style="text-align: center;">Lets check the weather in your area</h3>
        <!-- the DIV that will contain the widget -->
<div class="weatherWidget" ></div>



        <h1 style="text-align: center;">Check out your local events!</h1>
        
        <h3 href="window.location.href='../pages/newEvent.html" style="font-family:'Times New Roman', Times, serif ; text-align: center;margin-bottom: 30px;">Or create your own! </h3>
         
        <button class="center" onclick="window.location.href='../pages/newEvent.html'">
            create event
        </button>
        

        <table class="table" style = "margin-top: 70px;">
            <thead class="">
            <tr id= "new_color">
                
                <th scope="col" style="width: 25%">Name</th>
                <th scope="col" style="width: 25%">Mileage</th>
                <th scope="col" style="width: 25%">Color<th>
                <th scope="col" style="width: 25%">Price</th>
            </tr>
            </thead>
            <tbody>
            
            <!-- loop over and print our customers -->
				<c:forEach var="tempCar" items="${userCars}">
				
				<!-- construct an "update" link with customer id -->
					 <c:url var="deleteLink" value="/customer/deletetestrelationship">
						<c:param name="cid" value="${tempCar.cid}" />
					</c:url>	 
				
					<tr id= "new_color">
					<td style="width: 25%"><img src="${tempCar.cUrl}" height="100" ></td>
						<td style="width: 25%"> ${tempCar.cName} </td>
						<td style="width: 25%"> ${tempCar.cYear} </td>
						<td style="width: 25%">  ${tempCar.cColor} </td>
						<td style="width: 25%">  ${tempCar.cMileage} </td>
						<td style="width: 25%">  ${tempCar.cPrice} </td>
						<td style="width: 25%"> <a href="${deleteLink}">Delete</a> </td> 
						<!-- make attend link to add event to customer -->
					</tr>
				
				</c:forEach> 
            </tbody>
        </table>
        
        <table class="table" style = "margin-top: 70px;">
            <thead class="">
            <tr id= "new_color">
                
                <th scope="col" style="width: 25%">Description</th>
                <th scope="col" style="width: 25%">Location</th>
                <th scope="col" style="width: 25%">Time</th>
                <th scope="col" style="width: 25%">Status</th>
            </tr>
            </thead>
            <tbody>
            
            <!-- loop over and print our customers -->
				 <c:forEach var="tempCar2" items="${nonUserCars}">
				
				<!-- construct an "update" link with customer id -->
					<c:url var="addLink" value="/customer/testrelationship">
						<c:param name="cid" value="${tempCar2.cid}" />
					</c:url>	
				 
					<tr id= "new_color">
						<td style="width: 25%"> ${tempCar2.cName} </td>
						<td style="width: 25%"> ${tempCar2.cMileage} </td>
						<td style="width: 25%"> ${tempCar2.cColor} </td>
						<td style="width: 25%"> <a href="${addLink}">Add</a> </td> 
						<!-- make attend link to add event to customer -->
					</tr>
				
				</c:forEach> 
            </tbody>
        </table>
        
        </div>
        </div>
    </div>
</body>
</html>