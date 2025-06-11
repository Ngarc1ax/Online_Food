<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Restaurants</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"> 

<style>
    
    .top-links .links {
        display: flex;
        justify-content: center;
        text-align: center;
        padding: 5px;
    }

    .top-links .link-item {
        margin: 0 2px;
    }

    .btn-orange {
        background-color: #1d503a !important;
        color: #fff !important;
        border: none !important;
        border-radius: 4px !important;
        transition: background-color 0.3s ease, transform 0.2s ease !important;
    }

    .btn-orange:hover {
        background-color: #ffc524 !important;
        transform: translateY(-2px) !important;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1) !important;
        text-decoration: none !important;
    }

    .inner-page-hero {
        height: 10px !important; 
        background-image: url('images/img/respic.png') !important;
        background-size: cover !important;
        background-position: center !important;
        background-repeat: no-repeat !important;
    }

    .footer-area {
        background-color: #1e1e1e !important;
        color: #ffffff !important;
            padding: 25px 0 !important;
        }

    .footer-area h5 {
        color: #ffffff !important;
        font-weight: bold !important;
        }

    .footer-area p,
    .footer-area li,
    .footer-area a {
        color: #cccccc !important;
        }

    .footer-area a:hover {
        color: #ffc107 !important;
        }
    
</style>
</head>
<body>
    <header id="header" class="header-scroll top-header headrom">
        <nav class="navbar navbar-dark">
            <div class="container"> 
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php"> 
                    <img class="img-rounded" src="images/logos.png" alt=""> 
                </a>
                <div class="collapse navbar-toggleable-md float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants</a> </li>
                        <?php
                        if (empty($_SESSION["user_id"])) {
                            echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
                                  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
                        } else {
                            echo '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
                            echo '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="page-wrapper">
        <div class="top-links">
            <div class="container">
                <ul class="row links">
                    <li class="col-xs-12 col-sm-4 link-item active"><span>1</span><a href="#">Choose Restaurant</a></li>
                    <li class="col-xs-12 col-sm-4 link-item "><span>2</span><a href="#">Pick Your favorite food</a></li>
                    <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Order and Pay</a></li>
                </ul>
            </div>
        </div>
        <div class="inner-page-hero bg-image">
            <div class="container"></div>
        </div>

        <div class="result-show">
            <div class="container">
                <div class="row"></div>
            </div>
        </div>

        <section class="restaurants-page">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3"></div>
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                        <div class="bg-gray restaurant-entry">
                            <?php 
                            $ress = mysqli_query($db,"SELECT * FROM restaurant");
                            while($rows = mysqli_fetch_array($ress)) {
                                echo '
                                <div class="row mb-4">
                                    <div class="col-sm-12 col-md-12 col-lg-8 text-xs-center text-sm-left">
                                        <div class="entry-logo">
                                            <a class="img-fluid" href="dishes.php?res_id='.$rows['rs_id'].'">
                                                <img src="admin/Res_img/'.$rows['image'].'" alt="Food logo">
                                            </a>
                                        </div>
                                        <div class="entry-dscr">
                                            <h5><a href="dishes.php?res_id='.$rows['rs_id'].'">'.$rows['title'].'</a></h5>
                                            <span>'.$rows['address'].'</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-12 col-lg-4 text-xs-center">
                                        <div class="right-content bg-white">
                                            <div class="right-review">
                                                <a href="dishes.php?res_id='.$rows['rs_id'].'" class="btn btn-orange">View Menu</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>';
                            }
                            ?>
                        </div>
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

<footer>
<div class="footer-area text-center text-md-left">
    <div class="container footer-bg">
        <div class="container text-white py-5">
            <div class="row">
                <div class="col-md-4">
                    <h5>About FoodDash</h5>
                    <p>Your favorite local food delivered fast to your door.</p>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.php" class="text-white">Home</a></li>
                        <li><a href="restaurants.php" class="text-white">Restaurants</a></li>
                        <li><a href="your_orders.php" class="text-white">My Orders</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact Us</h5>
                    <p>Email: support@FoodDash.com</p>
                    <p>Phone: +63 912 345 6789</p>
                    <p>Location: United States of America</p>
                </div>
            </div>
            <hr class="bg-white">
            <p class="text-center mb-0">&copy; 2025 FoodDash. All rights reserved.</p>
        </div>
    </div>
    </div>
</footer>
</body>
</html>
