<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Myriad Cars</title>

    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600;700&display=swap"
      rel="stylesheet"
    />
      
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/log_in.css" />
  
  
  
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
          url(../resources/img/AstonBG.jpg);
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
        background-color: #e67e22;
        color: #fff;
        text-decoration: none;
        display: inline-block;
        padding: 16px 32px;
        border-radius: 9px;
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
        background-color: #f7f7f7;
      }


/* -------------------------------------------------------------------------------- */

      body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: darkgreen;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

.btn3 {
  background-color: grey;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}


span.pass {
  float: right;
  padding-top: 16px;
}
center {
    text-align: center;
}

/* Change styles for span and cancel button on extra small screens */
/* @media screen and (max-width: 300px) { */
  .cancelbtn {
     width: 100%;
     max-width: 100px
  }
/* } */


    </style>
  </head>
    <body>
    <header>
      <nav class="container">
        <a href="main-page.html"><img class=center2 src="../resources/img/Logo.png" alt="Myriad Cars" ></a>
        <!-- <div><a href="log_in.html" class="btn2">Log in</a></div> -->
      </nav>

      <div class="header-container">
        <div class="header-container-inner">
            


              </div>
            
              <div class="container">
                <h2 class=center> Log In</h2>
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>
            
                <label for="pass"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="pass" required>
                    
                <button type="submit">Login</button>

                <a href ="register.html"><button class = "btn3" type="submit">New User? Register</button></a>

                <label>
              </div>
            
              <div class="container">
                <!-- <a href="main-page.html" class="btn btn-info">Cancel</a> -->
                <a href ="main-page.html"><button class = "btn btn-dark" type="submit">Home</button></a>
                <!-- <button type="button" class="cancelbtn">Forgot Password?</button> -->
              </div>
            </form>
            
            
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
      </div>
      
    
      
      
      
      
      
      
      
    </header>
  </body>
</html>