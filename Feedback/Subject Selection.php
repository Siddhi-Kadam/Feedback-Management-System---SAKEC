<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$feedid=$_SESSION['feedid'];
error_reporting(0);
if (strlen($_SESSION['feedid']==0)) {
  header('location:logout.php');
  } 
else{
	if(isset($_POST['submit'])){
        $ch=$_POST['choice'];
		header("Location: CEF.php?code=$ch");
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
        <title>Update Form</title>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <!-- HEADER MOBILE-->
            <?php include_once('includes/sidebar.php');?>      
            <div class="page-container">
                <!-- HEADER DESKTOP-->
                <?php include_once('includes/header.php');?>
                <!-- HEADER DESKTOP-->
                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong>Subject Selection</strong>
                                        </div>
                                        <div class="card-body card-block">
                                            <?php //Fetch batch and semester program division
                                                $sql="select * from student_table2 where std_id='$feedid'";
                                                $result = mysqli_query($con,$sql);
                                                $row= mysqli_fetch_array($result);
                                                $batch=$row["batch"];
                                                $semid=$row["semester"];
                                                $divid=$row["division"];
                                                $programtest=$row["program"];
                                                $yearselect=$row["year"];
                                                $sql = "select * from subject_table where division = '$divid' and semester='$semid' and program='$programtest' and year='$yearselect'";
                                                $result = mysqli_query($con1,$sql);?>
                                            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <p style="font-size:16px; color:red" align="center"> <?php if($msg){echo $msg;}  ?> </p>
                                                <div class="row form-group">
                                                    <div class="col col-md-3">
                                                         <label for="text-input" class=" form-control-label">Select Subject</label><br>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <select name="choice" id="choice">
                                                       	<?php for($i=0;$i<5,$row= mysqli_fetch_array($result);$i++){
                                                        	$s1=$row["subject_name"];
                                                        	$sn=$row["subject_no"];?>
  															<option value="<?php echo "$sn"; ?>"><?php echo $s1; ?></option>
  														<?php }?>
														</select> 
                                                    </div>
                                                </div>
                                                <div class="card-footer">
                                                    <p style="text-align: center;"><button type="submit" name="submit" id="submit" class="btn btn-primary btn-sm">Submit</button></p>
                                                </div>
                                            </form>
                                        </div>
                                    </div>                           
                            </div>                            
                        </div>
    <?php include_once('includes/footer.php');?>
    </div></div></div></div></div>
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