<!DOCTYPE html>
<html lang="en">
<?php
session_start(); 
error_reporting(0); 
include("connection/connect.php"); 
if(isset($_POST['submit'] )) 
{
     if(
      empty($_POST['firstname']) || 
   	    empty($_POST['lastname'])|| 
		empty($_POST['email']) ||  
		empty($_POST['phone'])||
		empty($_POST['password'])||
		empty($_POST['cpassword']) ||
		empty($_POST['cpassword'])
      ){
			$message = "All fields must be Required!";
		}else{
	$check_username= mysqli_query($db, "SELECT username FROM users where username = '".$_POST['username']."' ");
	$check_email = mysqli_query($db, "SELECT email FROM users where email = '".$_POST['email']."' ");
		

	if($_POST['password'] != $_POST['cpassword']){  
      echo "<script>alert('Password not match');</script>"; 
    } elseif(strlen($_POST['password']) < 6) {
      echo "<script>alert('Password Must be >=6');</script>"; 
	} elseif(strlen($_POST['phone']) < 10) {
      echo "<script>alert('Invalid phone number!');</script>"; 
	} elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
      echo "<script>alert('Invalid email address please type a valid email!');</script>"; 
   } elseif(mysqli_num_rows($check_username) > 0) {
      echo "<script>alert('Username Already exists!');</script>"; 
   } elseif(mysqli_num_rows($check_email) > 0) {
      echo "<script>alert('Email Already exists!');</script>"; 
   } else {

	$mql = "INSERT INTO users(username,f_name,l_name,email,phone,password,address) VALUES('".$_POST['username']."','".$_POST['firstname']."','".$_POST['lastname']."','".$_POST['email']."','".$_POST['phone']."','".md5($_POST['password'])."','".$_POST['address']."')";
	
   mysqli_query($db, $mql);
	header("refresh:0.1;url=login.php");
    }
	}

}

?>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link rel="stylesheet" href="css/login.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <style>
    .btn-primary {
        border: none;
        padding: 14px;
        border-radius: 50px;
        color: white;
        font-size: 20px;
        cursor: pointer;
        width: 50%;
        margin-top: 10px;
        background-color: #1d503a !important;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-primary:hover {
    transform: translateY(-2px) scale(1.03);
    box-shadow: 0 0 15px #ffc524;
    background-color: #1d503a !important;
    }

    .reg-wrapper {
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

    .row h2 {
        margin: 0 0 20px;
        color: #1d503a;
        font-size: 30px;
        font-weight: bold;
        text-align: center;
    }

   input.form-control,
   textarea.form-control {
      border-radius: 50px;
      padding: 12px 20px;
      border: 1px solid #ccc;
      transition: all 0.3s ease;
      width: 100%;
      max-width: 100%;
}

   input.form-control:focus,
   textarea.form-control:focus {
  border: 1px solid #ffc524; 
  box-shadow: 0 0 5px #ffc524;
}

.reg-box {
    position: relative;
    background: white;
    padding: 40px 30px;
    border-radius: 0px;
    border-top: 5px solid #1d503a;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    max-width: 500px;
    margin: 0 auto;
}

.reg-box::before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    width: 30px;
    height: 30px;
    background-color: #1d503a;
    z-index: 2;
}

.cta {
    background: #1d503a;
    width: 100%;
    padding: 15px 40px;
    box-sizing: border-box;
    color: #ffffff;
    font-size: 12px;
    text-align: center;
}
.cta a {
    color: #333333;
    text-decoration: none;
}

    </style>
</head>
<body>
    <header id="header" class="header-scroll top-header headrom">
        <nav class="navbar navbar-dark">
            <div class="container">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logos.png" alt=""> </a>
                <div class="collapse navbar-toggleable-md float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"> <a class="nav-link active" href="index.php">Home</a> </li>
                        <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants</a> </li>
                        <?php
                        if (empty($_SESSION["user_id"])) {
                            echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a></li>
                                  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a></li>';
                        } else {
                            echo '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a></li>
                                  <li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a></li>';
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="reg-wrapper">
        <section class="contact-page inner-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                               <div class="reg-box"> 
                                <form action="" method="post">
                                    <div class="row">
                                       <h2>Registration</h2>
                                        <div class="form-group col-sm-12">
                                            <input class="form-control" type="text" name="username"  placeholder="Username" required> 
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input class="form-control" type="text" name="firstname"  placeholder="Firstname" required> 
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input class="form-control" type="text" name="lastname"  placeholder="Lastname" required> 
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="text" class="form-control" name="email"  placeholder="Email Address" required> 
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input class="form-control" type="text" name="phone"  placeholder="Phone number" required> 
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="password" class="form-control" name="password"  placeholder="Password" required> 
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="password" class="form-control" name="cpassword"  placeholder="Confirm Password" required> 
                                        </div>
                                        <div class="form-group col-sm-12">
                                            <textarea class="form-control" name="address" rows="3"  placeholder="Delivery Address" required></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12" style="text-align: center;">
                                            <input type="submit" value="Register" name="submit" class="btn btn-primary"> 
                                        </div>
                                    </div>
                                </form>
                                </div><!-- login-box -->
                                <div class="cta">Registered?<a href="login.php" style="color:#ffc524;"> Login your account</a></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
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