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
		  href="${pageContext.request.contextPath}/resources/css/register.css" />
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
    </style>
  </head>
    <body>
    <header>
      <nav class="container">
        <div><a href="main-page.html"><img src="../resources/img/Logo.png" alt="Myriad Cars" ></a></div>
        <div><a href="log_in.html" class="btn2">Back</a></div>
      </nav>

      <div class="header-container">
        <div class="header-container-inner">
            






          <form action="action_page.php">
            <div class="container">
              <h1>Register</h1>
              <!-- <p>Please fill in this form to create an account.</p> -->
              <hr>
          
              <label for="email"><b>Email</b></label>
              <input type="text" placeholder="Enter Email" name="email" id="email" required>
          
              <label for="psw"><b>Password</b></label>
              <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
          
              <label for="psw-repeat"><b>Repeat Password</b></label>
              <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

              <label for="birthday">Birthday:</label>
              <input type="date" class="DOB" name="DOB">
              <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Agree To Terms and Conditions?:
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="#">Yes</a>
                  <a class="dropdown-item" href="#">No</a>
                </div>
              </div>
              <hr>
              <button type="submit" class="registerbtn">Register</button>
            </div>
          </form>

        </div>
      </div>
    </header>
  </body>
</html>