<?php 
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['login'])){
    if($_POST['USERTYPE']=='admin')
    {
        $loginuser=$_POST['username'];
        $password=$_POST['password'];
        $query=mysqli_query($con,"select * from users where user_name='$loginuser' && pwd='$password' AND user_level>=5"); 
        $ret=mysqli_fetch_array($query);
        if($ret>0){
			$_SESSION['feedid']=$ret['id'];
			$std=$_SESSION['feedid'];
			if($ret['user_level']==5){
				header('location:Adashboard.php');
			}
			if($ret['user_level']>5){
				header('location:Adashboard1.php');
			}
        }
        else{
            $msg="Invalid Details.";
        }
    }
    else if(($_POST['USERTYPE']=='student')){
        $loginuser=$_POST['username'];
        $password=$_POST['password'];
        $query=mysqli_query($con,"select std_id from student_table2 where  email='$loginuser' && registration_no='$password' ");
        $ret=mysqli_fetch_array($query);
        if($ret>0){
            $_SESSION['feedid']=$ret['std_id'];
            $std=$_SESSION['feedid'];
            header('location:dashboard.php');
        }
        else{
            $msg="Invalid Details.";
        }
    }
    else if($_POST['USERTYPE']=='staff')
    {
        $loginuser=$_POST['username'];
		$password=md5($_POST['password']);
		$query=mysqli_query($con,"select id from users where user_name='$loginuser' AND user_level<=5");// && pwd='$password'
        $ret=mysqli_fetch_array($query);
        if($ret>0){
            $_SESSION['feedid']=$ret['id'];
            $std=$_SESSION['feedid'];
            header('location:Sdashboard.php');
        }
        else{
            $msg="Invalid Details.";
        }
	}     
}

  ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login_v1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<!--center><h1 style="color:'blue';">Shah and Anchor Kutchhi Engineering College</h1></center-->
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Login_v1/images/img-02.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="Post">
					<span class="login100-form-title">
						Member Login
					</span>
					<center>
						<p style="font-size:16px; color:red" align="center"><?php if($msg){echo $msg;}?></p>
                        <input type="radio" name="USERTYPE" id="USERTYPE" value="admin">Admin
                        <input type="radio" name="USERTYPE" id="USERTYPE" value="staff">Staff
                        <input type="radio" name="USERTYPE" id="USERTYPE" value="student" checked>Student
						
                    </center>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<label>User Name</label>
						<input class="input100" type="text" name="username" placeholder="User Name" required="true">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<label>Password</label>
                        <input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" name="login">Sign in</button>
					</div>
				</form>
			</div>
		</div>
	</div>	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>