<?php
//Exta Co-Curricular Activity Form For Student
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$feedid=$_SESSION['feedid'];
$noeca=$_SESSION['noeca'];
if (strlen($_SESSION['feedid']==0)) 
{
  header('location:logout.php');
} 
else{
    if($noeca==0)
    {
        header("Location: dashboard.php");
        $r=mysqli_query($feeddbc,"INSERT INTO ecafeedback(std_id,division,noeca) VALUES('$feedid','$di','$noeca')");
        for ($j = 1; $j <13; $j++) {
            if(isset($_POST['Q' . $j])){
                $a = $_POST['Q' . $j];   
                $r=mysqli_query($feeddbc,"UPDATE ecafeedback set Q$j=0 where std_id='$feedid' and division='$di' and noeca='$noeca'");
            }
        }
    }
    if(isset($_POST['Submit'])){
        if(isset($_FILES['image'])){
            $errors= array();
            $file_name = $_FILES['image']['name'];
            $file_size =$_FILES['image']['size'];
            $file_tmp =$_FILES['image']['tmp_name'];
            $file_type=$_FILES['image']['type'];
            $file_ext=strtolower(end(explode('.',$_FILES['image']['name'])));
            $extensions= array("jpeg","jpg","png");
            if(in_array($file_ext,$extensions)=== false){
                $errors[]="extension not allowed, please choose a JPEG or PNG file.";
            }
            if($file_size > 55097152){
                $errors[]='File size must be less than 55 MB';
            }
            if(empty($errors)==true){
                move_uploaded_file($file_tmp,"Certificate/ECA/".$file_name);
                echo "Success";
            }
            else{
                print_r($errors);
            }
        }
        header("Location: dashboard.php");
    }  ?>
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
    <title>Extra Co-Curricular Activity Form</title>
    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
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
   <style>
        body, html {
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }
        * {
        box-sizing: border-box;
        }
        .btn{
            padding: 15px 25px;
            border: none;
            background-color: #27ae60;
            color: #fff;
        }
        .btn:hover {
            opacity: 1;
        }
        table { 
            display: table;
            border-collapse: separate;
            border-spacing: 2px;
            border-color: gray;
        }
        </style>
</head>
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <!-- MENU SIDEBAR-->
        <?php include_once('includes/sidebar.php');?>
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <?php include_once('includes/header.php'); ?>
            <!-- HEADER DESKTOP-->
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="card-header">
                    <strong>Kindly give feedback with given choices (4:Excellent,3:Very Good,2:Good,1:Poor)</strong> 
                </div>
                <center>
                    <div class="card-body card-block">
                        <form method="post" enctype="multipart/form-data" class="form-horizontal">
                            <?php for($i=0;$i<$nococa;$i++){?>
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="text-input" class=" form-control-label">Import Certificate (Image name = Student's Name + Events Name / file format = jpeg, jpg, png)</label><br>
                                </div>
                                <div class="col-12 col-md-9">
                                    <input type='file' name='image' class="form-control" required/><br>
                                </div>
                            </div><?php } ?>
                            <div class="row form-group" style="margin-left:200px">
                                <?php
                                $sql="select * from student_table2 where std_id='$feedid')";
                                $result = mysqli_query($con,$sql);
                                $row = mysqli_fetch_array($result);
                                $se=$row["semester"];
                                $di=$row["division"];
                                ?>
                                <table border="1" cellpadding="5" cellspacing="5" align="center">
                                <tr>
                                        <th rowspan="2"><center>Extra-Curricular Activity</center></th>
                                    </tr>
                                    <tr><th>Ratings</th></tr>
                                <?php
                                    while($row = mysqli_fetch_array($result)) { 
                                        $se=$row["semester"];
                                        $di=$row["division"];
                                ?> 
                                    <?php 
                                }?>
                                        <?php
                                        $sql2 = "select * from ecaquestions";
                                        $result2 = mysqli_query($feeddbc,$sql2); 
                                        for($j=1;$j<=12,$row2 = mysqli_fetch_array($result2);$j++){
                                        ?>
                                            <tr>
                                                <td><?php
                                                    $quest=$row2["question"];
                                                    echo $quest; ?> </td>
                                                <td>
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='4' required>4
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='3' required checked>3
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='2' required>2
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='1' required>1
                                                </td>
                                            </tr>
                                        <?php   }  ?>
                                    <tr><td colspan=2><center>
                                        <button type="submit" class="btn" name="Submit" id="Submit">Submit</button>
                                    </center></td></tr>
                                </table>
                                    <?php
                                    if(isset($_POST['Submit'])){
                                        $r=mysqli_query($feeddbc,"INSERT INTO ecafeedback(std_id,division,noeca) VALUES('$feedid','$di','$noeca')");
                                        for ($j = 1; $j <13; $j++) {
                                            if(isset($_POST['Q' . $j])){
                                                $a = $_POST['Q' . $j];   
                                                $r=mysqli_query($feeddbc,"UPDATE ecafeedback set Q$j='$a' where std_id='$feedid' and division='$di'");
                                            }
                                        }
                                    }?>
                            </div>
                        </form>
                        <?php include_once('includes/footer.php');?>`
                    </div>
                </center>
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