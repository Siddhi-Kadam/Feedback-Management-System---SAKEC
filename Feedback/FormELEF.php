<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
if (strlen($_SESSION['feedid']==0)) {
  header('location:logout.php');} 
else{
    if($_GET){
        $labno=$_GET['code'];  }
    if(isset($_POST['submit'])){
        $adminid=$_SESSION['feedid'];
        for ($j = 0; $j <15; $j++) {
            if(isset($_POST['R' . $j])){
                $b = $_POST['R' . $j];
                $a = $j+1; 
                $query=mysqli_query($feeddbc,"update lequestions set question='$b' where lab_no='$labno' AND question_no='$a'");}}
    if ($query) {
        $msg="Data has been updated.";  }
    else  {
        $msg="Something Went Wrong. Please try again."; }
    }

  ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">
    <!-- Title Page-->
    <title>User Profile</title>
    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
</head>
<body class="animsition">
    <div class="page-wrapper">
        
            <!-- HEADER MOBILE-->
        <?php 
            $qss = "select user_level from users where id='$adminid'";
            $rss = mysqli_query($con,$qss);
            $rowselectside = mysqli_fetch_array($rss);
            $userlevel=$rowselectside['user_level'];
            if($userlevel>1){
                include_once('includes/asidebar.php');
            }
            else{
                include_once('includes/ssidebar.php');
            }
            ?>
        <!-- END HEADER MOBILE-->
        <!-- MENU SIDEBAR-->   
        <!-- END MENU SIDEBAR-->
        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <?php include_once('includes/sheader.php');?>
            <!-- HEADER DESKTOP-->
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Edit Course Exit Form</strong>
                                    </div>
                                    <div class="card-body card-block">
                                    <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <p style="font-size:16px; color:red" align="center"> <?php if($msg){echo $msg;}?></p>
                                        <?php
                                            $adminid=$_SESSION['feedid'];
                                            $ret=mysqli_query($feeddbc,"select * from lequestions where lab_no='$labno'");
                                            $row = mysqli_fetch_array($ret);
                                            $se=$row['semester'];
                                            ?>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Semester</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="semester" name="semester" value="<?php  echo $se?>" class="form-control" required="" readonly>
                                                </div>
                                            </div>
                                            <?php 
                                            $ret1=mysqli_query($feeddbc,"select * from lequestions where lab_no='$labno'");
                                            for($j=0;$j<=15,$row2 = mysqli_fetch_array($ret1);$j++){
                                                $quest=$row2["question"];
                                                $questno=$row2["question_no"];
                                                $a=$j+1;?>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class="form-control-label">Question<?php echo $a;?></label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                <input type="text" name='R<?php echo $j; ?>' value="<?php echo $quest;?>" class="form-control" required>
                                                </div>
                                            </div>                                                                      
                                            <?php } ?>
                                            <div class="card-footer">
                                                <p style="text-align: center;"><button type="submit" name="submit" id="submit" class="btn btn-primary btn-sm">Update
                                                </button></p>
                                            </div>
                                    </form>
                                </div>
                            </div>
                            <?php include_once('includes/footer.php');?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <!-- Main JS-->
    <script src="js/main.js"></script>
</body>

</html>
<!-- end document-->
<?php }  ?>