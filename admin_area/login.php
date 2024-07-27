<?php

session_start();

include("includes/db.php");

?>
<!DOCTYPE HTML>
<html>

<head>

<title>Admin Login</title>

<link rel="stylesheet" href="css/bootstrap.min.css" >

<link rel="stylesheet" href="css/login.css" >
<style>
@import url('https://fonts.googleapis.com/css2?family=Anton&family=Prompt:wght@300;500&display=swap');

/* Base layout styles */
body {
  background-color: #FBDFE7; /* Dark pink background */
  font-family: 'Prompt', sans-serif;
}

.container {
  width: 60%; /* Higher width to height ratio */
  margin: 50px auto;
  padding: 20px;
  background-image: url(loginpagebg.png); /* Purple background for the form */
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Deeper shadow for depth */
  border-radius: 10px; /* More curved edges */
}

.form-login {
  margin: 20px 0;
}

.form-login-heading {
  font-family: 'Anton', sans-serif;
  color: #F6078B; /* Bright pink color for the heading */
  padding: 10px;
  text-align: center;
  border-radius: 10px 10px 0 0;
}

/* Input styles */
.form-control {
  margin-bottom: 20px;
  padding: 15px;
  border: 2px solid #69E28E; /* Light green border */
  border-radius: 8px;
  background-color: #F2EB68; /* Light yellow background */
  font-family: 'Prompt Medium', sans-serif;
}

/* Placeholder text color */
::placeholder {
  color: #9412EB; /* Purple text for placeholders */
  font-family: 'Prompt Light', sans-serif;
}

/* Button styles */
.btn-primary {
  background-color: #69E28E; /* Light green color for the button */
  border: none;
  border-radius: 8px;
  padding: 10px 15px;
  color: #E44C6B; /* Dark pink text for the button */
  font-size: 20px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.btn-primary:hover {
  background-color: #F6078B; /* Bright pink on hover */
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .container {
    width: 90%;
    padding-top: 10%;
  }
}
</style>


</head>

<body>

<div class="container" ><!-- container Starts -->

<form class="form-login" action="" method="post" ><!-- form-login Starts -->

<h2 class="form-login-heading" >Admin Login</h2>

<input type="text" class="form-control" name="admin_email" placeholder="Email Address" required >

<input type="password" class="form-control" name="admin_pass" placeholder="Password" required >

<button class="btn btn-lg btn-primary btn-block" type="submit" name="admin_login" >

Log in

</button>


</form><!-- form-login Ends -->

</div><!-- container Ends -->



</body>

</html>

<?php

if(isset($_POST['admin_login'])){

$admin_email = mysqli_real_escape_string($con,$_POST['admin_email']);

$admin_pass = mysqli_real_escape_string($con,$_POST['admin_pass']);

$get_admin = "select * from admins where admin_email='$admin_email' AND admin_pass='$admin_pass'";

$run_admin = mysqli_query($con,$get_admin);

$count = mysqli_num_rows($run_admin);

if($count==1){

$_SESSION['admin_email']=$admin_email;

echo "<script>alert('You are Logged in into admin panel')</script>";

echo "<script>window.open('index.php?dashboard','_self')</script>";

}
else {

echo "<script>alert('Email or Password is Wrong')</script>";

}

}

?>