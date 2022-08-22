<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
  <head>
  
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


   <script>  // Select all input elements for varification
   const fName = document.getElementById("fName");
   const lName = document.getElementById("lName");
   const email = document.getElementById("email");
   const password = document.getElementById("password");

   // function for form varification
   function formValidation() {
     // checking length of first name
     if (fName.value.length < 2 || fName.value.length > 20) {
       alert("Name length should be more than 2 and less than 21 charaters");
       fName.focus();
       return false;
     }
       // checking length of last name
       if (lName.value.length < 2 || lName.value.length > 20) {
       alert("Name length should be more than 2 and less than 21 charaters");
       lName.focus();
       return false;
     }
     // checking email format
     if (email.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
       alert("Please enter a valid email!");
       email.focus();
       return false;
     }
     // checking password character pattern
     if (password.value.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/)) {
       alert("Password must contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character, and must be between 8 and 15 characters long.");
       password.focus();
       return false;
     }
     
     return true;
   }</script>




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
              <h2 class="text-uppercase text-center mb-5">Register</h2>

              <form:form action="saveCustomer" modelAttribute="customer" method="POST" onsubmit="return formValidation()">

				<form:hidden path="id" />

                <div class="form-outline mb-4">
                <form:input path="firstName" type="text" name="fName"  id="fName"  class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">First Name</label>
                </div>
                
                 <div class="form-outline mb-4">
                <form:input path="lastName" type="text" name="lName" id="lName"  class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">Last Name</label>
                </div>

                <div class="form-outline mb-4">
                  <form:input path="email" type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                   class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">Email</label>
                </div>
                
               <div class="form-outline mb-4">
                  <form:input path="password" type="text" name="password" id="password" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">Password</label>
                </div>
                
                

                <div class="d-flex justify-content-center">
                <input type="submit" value="Register" class="save btn btn-success btn-block btn-lg gradient-custom-4 text-body" />
               
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="http://localhost:8081/Capstone-MVC/customer/log_in.html"
                    class="fw-bold text-body">Login here</a></p>

              </form:form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
   </header>
   
   
      <script src="${pageContext.request.contextPath}/resources/js/log_in.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>