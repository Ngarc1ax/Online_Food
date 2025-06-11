<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

<style>
.form-module input {
  outline: none;
  display: block;
  width: 100%;
  border-radius: 50px;
  border: 1px solid #ccc;
  margin: 0 0 20px;
  padding: 10px 15px;
  box-sizing: border-box;
  font-weight: 400;
  transition: 0.3s ease;
}

.form-module input:focus {
  border: 1px solid #ffc524; 
  box-shadow: 0 0 5px #ffc524;
}

body {
  font-family: "RobotoDraft", "Roboto", sans-serif;
  font-size: 14px;
  overflow: hidden;
  animation: fadeIn 1s ease-in-out;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.form-module {
  position: relative;
  background:rgb(255, 255, 255);
  width: 50%;
  max-width: 400px;
  border-top: 5px solid #1d503a;
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
  margin: 0 auto;
}

.form-module .toggle {
  cursor: pointer;
  position: absolute;
  top: -0;
  right: -0;
  background: #1d503a;
  width: 30px;
  height: 30px;
  margin: -5px 0 0;
  color: #ffffff;
  font-size: 12px;
  line-height: 30px;
  text-align: center;
}
.form-module .form {
  display: none;
  padding: 40px;
}
.form-module .form:nth-child(2) {
  display: block;
}
.form-module h2 {
  margin: 0 0 20px;
  color: #1d503a;
  font-size: 30px;
  font-weight: bold;
  text-align: center;
}

.btn-primary {
  border: none;
  padding: 14px;
  border-radius: 50px;
  color: white;
  font-size: 20px;
  cursor: pointer;
  width: 100%;
  margin-top: 10px;
  background-color: #1d503a !important;
  transition: background-color 0.3s ease, transform 0.3s ease;
}

.btn-primary:hover {
  transform: translateY(-2px) scale(1.03);
  box-shadow: 0 0 15px #ffc524;
  background-color: #1d503a !important;
}

.form-module .cta {
  background: #1d503a;
  width: 100%;
  padding: 15px 40px;
  box-sizing: border-box;
  color: #ffffff;
  font-size: 12px;
  text-align: center;
}

.form-module .cta a {
  color: #333333;
  text-decoration: none;
}

.login-wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  padding: 20px;
  background-image: url('images/img/newBG.png') !important;
  background-size: cover !important;
  background-repeat: no-repeat !important;
  background-position: center center !important;
}

</style>
  
</head>

<body>
<header id="header" class="header-scroll top-header headrom">
  <nav class="navbar navbar-dark">
    <div class="container">
      <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
      <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logos.png" alt=""> </a>
      <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
        <ul class="nav navbar-nav">
          <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
          <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
                            
							<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
							}
						else
							{
									
									
										echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
							}

						?>					
        </ul>
      </div>
    </div>
  </nav>
</header>

<?php
include("connection/connect.php"); 
error_reporting(0); 
session_start(); 
if(isset($_POST['submit']))  
{
	$username = $_POST['username'];  
	$password = $_POST['password'];
	
	if(!empty($_POST["submit"]))   
     {
	$loginquery ="SELECT * FROM users WHERE username='$username' && password='".md5($password)."'"; 
	$result=mysqli_query($db, $loginquery); 
	$row=mysqli_fetch_array($result);
	
	                        if(is_array($row)) 
								{
                                    	$_SESSION["user_id"] = $row['u_id']; 
										 header("refresh:1;url=index.php"); 
	                            } 
							else
							    {
               $message = "Invalid Username or Password!"; 
                                }
	 }
	
	
}
?>
  
<div class="login-wrapper">
<div class="module form-module">
  <div class="toggle">
   
  </div>
  <div class="form">
    <h2>Login</h2>
	  <span style="color:red;"><?php echo $message; ?></span> 
   <span style="color:green;"><?php echo $success; ?></span>
    <form action="" method="post">
      <input type="text" placeholder="Enter your Username"  name="username" required/>
      <input type="password" placeholder="Enter your Password" name="password" required/>
      <input type="submit" id="button" name="submit" value="Login" class="btn-primary"/>
    </form>
  </div>
  
  <div class="cta">Not registered?<a href="registration.php" style="color:#ffc524;"> Create an account</a></div>
</div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>  
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>
