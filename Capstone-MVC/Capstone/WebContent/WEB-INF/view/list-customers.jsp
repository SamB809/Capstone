<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
  <div id="header">
			<h2>SRM - Service Relationship Manager</h2>
		</div>
	
	
	<div id="container">
	
		<div id="content">
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>Name</th>
					<th>Mileage</th>
					<th>Color</th>
					<th>Price</th>
					<th>Year</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempService" items="${services}">
				
					<tr>
						<td> ${tempService.sName} </td>
						<td> ${tempService.sMileage} </td>
						<td> ${tempService.sColor} </td>
						<td> ${tempService.sPrice} </td>
						<td> ${tempService.sYear} </td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	
	</div>
	


	
	
	

</body>

</html>









