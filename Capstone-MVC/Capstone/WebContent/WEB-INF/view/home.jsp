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
		  href="${pageContext.request.contextPath}/resources/css/main.css" />


    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600;700&display=swap"
      rel="stylesheet">
      
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
  
  
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      html {
        font-family: "Rubik", sans-serif;
        color: #444;
      }

      .container {
        margin: 0 auto;
        width: 1200px;
      }

      header {
        
        height: 100vh;
        position: relative;

        background-image: linear-gradient(
            rgba(34, 34, 34, 0.6),
            rgba(34, 34, 34, 0.6)
          ),
          url(../resources/img/AudiBG.gif);
        background-size: cover;
        color: #fff;
      }

      nav {
        font-size: 20px;
        font-weight: 700;
        display: flex;
        justify-content: space-between;
        padding-top: 32px;
        
      }

      .header-container {
        width: 1200px;
        position: absolute;

        
        left: 50%;
        top: 50%;


        transform: translate(-50%, -50%);


      }

      .header-container-inner {
        width: 50%;
       
      }

      h1 {
        font-size: 52px;
        margin-bottom: 32px;
        line-height: 1.05;
      }

      p {
        font-size: 20px;
        line-height: 1.6;
        margin-bottom: 48px;
      }

      .btn:link,
      .btn:visited {
        font-size: 20px;
        font-weight: 600;
        background-color: #ce2507;
        color: #fff;
        text-decoration: none;
        display: inline-block;
        padding: 16px 32px;
        /* border-radius: 1000px; */
      }

      .btn2:link,
      .btn2:visited {
        font-size: 20px;
        font-weight: 600;
        background-color: black;
        color: #fff;
        text-decoration: none;
        display: inline-block;
        padding: 16px 32px;
        border-radius: 9px;
      }




      h2 {
        font-size: 44px;
        margin-bottom: 48px;
      }

      section {
        padding: 96px 0;
        background-color: #ffffff;
      }
    </style>
  </head>
 
    
    
    
    
    <body>
    <header>
      <nav class="container">
        <div><img src="../resources/img/Logo.png" alt="Myriad Cars"></div>
        <div><a href="log_in.html" class="btn2">Log in</a></div>
      </nav>

      <div class="header-container">
        <div class="header-container-inner">
          <h1>Fast cars</h1>
          <h1>Even faster service</h1>
          <p>
            Welcome to Myriad Cars a Boston based premier exotic car sale company, featuring "ultra-exotic" and luxury cars from the most exclusive manufacturers in the world.
          </p>
          <a href="inventory.html"  class="btn">See Our Inventory</a>
          <a href="test_drive.html" class="btn">Schedule a Test Drive</a>
        </div>
      </div>
    </header>

    <section>
      <div class="container">
        <h2>Drive The Car You Deserve</h2>
        <p>
        When you purchase a car from us, in addition to finding the lowest-priced cars in the nation, you are investing in peace of mind.
        Our buying process is absolutely transparent and you will be made aware of any defects, scratches or issues that may exist with your vehicle beforehand. 
        We can provide you Facetime or Skype video calls so you can view your new car from your own home. 
        All accessories that accompany the vehicle will be posted online. The price you see online is a no-hassle fixed price.
        We back all our customers with a 7-day buyback guarantee, a 30-day warranty, we offer free nationwide shipping and financing. 
        </p>
      </div>
      <div class="container">
<h2>Endless Benefits</h2>
<!-- <div class="container"> -->

  <img id="img1" src="../resources/img/shipping.png" alt="Myriad Cars">
  <img id="img1" src="../resources/img/buyback.png" alt="Myriad Cars">
  <img id="img1" src="../resources/img/warranty.png" alt="Myriad Cars">
  <p class="benefits">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Free Delivery&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 7 Day Buy Back Period&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;30 Day Warranty</p>
</div> 
          <div class="container">
  <h2>Contact Us</h2>
  <table class="table table-hover">
    <thead>
    </thead>
    <tbody>
      <tr>
        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
          <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
        </svg> Instagram</td>
        <td>@MyraidCarsIG</td>
      </tr>
      <tr>
        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
          <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
        </svg> Facebook</td>
        <td>@MyraidCarsFB</td>
      </tr>
      <tr>
        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
          <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
        </svg> Twitter</td>
        <td>@MyraidCarsTW</td>
      </tr>
      <tr>
        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
        </svg> Phone</td>
        <td>+1(999)-999-999</td>
      </tr>
      <tr>
        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-check-fill" viewBox="0 0 16 16">
          <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.026A2 2 0 0 0 2 14h6.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.606-3.446l-.367-.225L8 9.586l-1.239-.757ZM16 4.697v4.974A4.491 4.491 0 0 0 12.5 8a4.49 4.49 0 0 0-1.965.45l-.338-.207L16 4.697Z"/>
          <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
        </svg> Email</td>
        <td>MyraidCars@Myraid.com</td>
      </tr>
    </tbody>
  </table>
</div>
          
          <div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	
	<div id="container">
	
		<div id="content">
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
          <!-- <div class="container">
  <h2>Inline form</h2>
  <p>Make the viewport larger than 576px wide to see that all of the form elements are inline and left-aligned. On small screens, the form groups will stack horizontally.</p> -->
  <!-- <form class="form-inline" action="/action_page.php">
    <label for="email">Email:</label>
    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button> -->
  </form>
</div>
          

        </p>
      </div>
    </section>
  </body>
</html>