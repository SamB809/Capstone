<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
  <head>
  
  	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/log_in.css" />
		  
		    	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/register.css" />


    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Myriad Cars</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../styles/log_in.css">
    
    
    <style>
          header {
        
        height: 100vh;
        position: relative;

        background-image: linear-gradient(
            rgba(34, 34, 34, 0.6),
            rgba(34, 34, 34, 0.6)
          ),
          url(../resources/img/AstonBG.jpg);
        background-size: cover;
      }
      
            nav {
        font-size: 20px;
        font-weight: 700;
        display: flex;
        justify-content: space-between;
        padding-top: 32px;
        
      }
    </style>

  </head>
  
    <body>
    <header>

      <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
        <a href="main-page.html"><img class=center2 src="${pageContext.request.contextPath}/resources/img/Logo.png" height="50" alt="Myriad Cars" ></a>
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
          <!-- <span class="navbar-text">
            Navbar text with an inline element
          </span> -->
        </div>
      </nav>




  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Log In</h2>


                <form:form action="validateCustomer" modelAttribute="customer" method="POST">

				<form:hidden path="id" />

                <div class="form-outline mb-4">
                <form:input path="email" type="text" name="email" id="email" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">Email</label>
                </div>
                
                 <div class="form-outline mb-4">
                <form:input path="password" type="text" name="password" id="password" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">Password</label>
                </div>


                <div class="d-flex justify-content-center">
                <input type="submit" value="Login" class="save btn btn-success btn-block btn-lg gradient-custom-4 text-body" href="http://localhost:8081/Capstone-MVC/customer/register" />
               
                </div>
                
                <p class="text-center text-muted mt-5 mb-0">Don't have an account? <a href="http://localhost:8081/Capstone-MVC/customer/register"
                    class="fw-bold text-body "><u>Register Here</u></a></p>

				</form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
   </header>
   
 
 
 

      <script type="test/javascreipt" src="${pageContext.request.contextPath}/resources/js/log_in.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>