<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
$feedid=$_SESSION['feedid'];  
echo $feedid;
if(isset($_POST['Submit'])){
    $r=mysqli_query($con1,"INSERT INTO alfeedback(user) VALUES('$feedid')");
    /*for ($j = 1; $j <11; $j++) {
        if(isset($_POST['Q' . $j])){
            $a = $_POST['Q' . $j];   
            $r=mysqli_query($con1,"UPDATE alfeedback set Q$j='$a' where user='$feedid'");
        }
    }*/
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,700,800" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
  
    
    <!-- <div class="js-fullheight"> -->
    <div class="hero-wrap js-fullheight">
      <div class="overlay"></div>
      <div id="particles-js"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Alumini Form</strong></h1>

            <table border="0" cellpadding="5" cellspacing="5" align="center">
                                    <tr>
                                        <th rowspan="2"><center>Alumini Form</center></th>
                                    </tr>
                                    <tr><th>Ratings</th></tr>
                                    <?php
                                    
                                    for($j=1;$j<=10;$j++){?>
                                        <tr><?$sql2 = "select * from alquestions where question_no='$j'";
                                    $result2 = mysqli_query($con1,$sql2); 
                                    while($row2 = mysqli_fetch_array($result2)){?>
                                            <td style="background-color:cyan">
                                            <h3 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><?php echo $row2['question'];?></td></h3>
                                            <td>
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='4'>4
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='3'>3
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='2'>2
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='1'>1
                                            </td>
                                        </tr>
                                    <?php   }  ?>
                                    <tr><td colspan=2><center>
                                        <button type="submit" class="btn" name="Submit" id="Submit"><a href="/Feedback/index.php">SUBMIT</a></button>
                                    </center></td></tr>
                                </table>
                                
          </div>
        </div>
      </div>
    </div>
  
    <footer><center>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></center></footer>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/particles.min.js"></script>
  <script src="js/particle.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>