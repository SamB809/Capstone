// Select all input elements for varification
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
}

