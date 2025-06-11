<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

$message = "";
$success = "";

if (isset($_POST['submit'])) {
    $username = trim(htmlspecialchars($_POST['username']));
    $password = trim($_POST['password']);

    if (!empty($username) && !empty($password)) {
        $loginquery = "SELECT * FROM admin WHERE username='$username' && password='" . md5($password) . "'";
        $result = mysqli_query($db, $loginquery);
        $row = mysqli_fetch_array($result);

        if (is_array($row)) {
            $_SESSION["adm_id"] = $row['adm_id'];
            header("refresh:1;url=dashboard.php");
        } else {
            $message = "Invalid Username or Password!";
        }
    }
}
?>

<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/login.css">
</head>

<body style="background-image: url('images/newBG6.png') !important; background-repeat: no-repeat !important; background-size: cover !important; background-position: center center !important; background-attachment: fixed !important;">
  <div class="container">
    <div class="info">
      <h1>ADMIN PANEL</h1>
    </div>
  </div>

  <div class="form">
    <div class="thumbnail">
      <img src="images/manager.png" />
    </div>

    <?php if (!empty($message)): ?>
      <div style="color: red;"><?php echo $message; ?></div>
    <?php endif; ?>

    <?php if (!empty($success)): ?>
      <div style="color: green;"><?php echo $success; ?></div>
    <?php endif; ?>

    <form class="login-form" action="index.php" method="post">
      <input type="text" placeholder="Username" name="username" required />
      <input type="password" placeholder="Password" name="password" required />
      <input type="submit" name="submit" value="Login" />
    </form>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="js/index.js"></script>
</body>
</html>
