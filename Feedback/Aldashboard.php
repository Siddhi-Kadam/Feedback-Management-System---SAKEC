<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$feedid=$_SESSION['feedid'];  
if(isset($_POST['Submit'])){
    header('location:index_alumini.php');
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
    <title>Alumini Form</title>

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
        
table.imagetable {
	font-family: verdana,arial,sans-serif;
	font-size:16px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.imagetable th {
	background:#b5cfd2 url('cell-blue.jpg');
	border-width: 2px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
table.imagetable td {
	background:#dcddc0 url('cell-grey.jpg');
	border-width: 2px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
</style>


        
</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <!-- MENU SIDEBAR-->
        <div class="page-container">
            <!-- MAIN CONTENT-->
            <!-- <div class="main-content"> -->
                
                <center>4-Excellent,3-Very Good,2-Good,1-Poor
                    <!-- <div class="card-body card-block"> -->
                        <form method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group" style="margin-left:240px">
                            
                                <table class="imagetable" border="1" cellpadding="5" cellspacing="5" align="right">
                                
                                <tr>
                                        <th rowspan="2"><center>Alumini Form</center></th>
                                    </tr>
                                    <tr><th>Ratings</th></tr>
                                    <?php
                                    $sql2 = "select * from alquestions";
                                    $result2 = mysqli_query($feeddbc,$sql2); 
                                    for($j=1;$j<=10,$row2 = mysqli_fetch_array($result2);$j++){?>
                                        <tr>
                                            
                                            <td><?php
                                                $quest=$row2["question"];
                                                echo $quest; ?> </td>
                                            <td>
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='4'>4
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='3'>3
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='2'>2
                                                <input type='radio' name='Q<?php echo "$j"; ?>' value='1'>1
                                            </td>
                                        </tr>
                                    <?php   }  
                                    if(isset($_POST['Submit'])){
                                        $r=mysqli_query($feeddbc,"INSERT INTO alfeedback(user) VALUES('$feedid')");
                                        for ($j = 1; $j <11; $j++) {
                                            if(isset($_POST['Q' . $j])){
                                                $a = $_POST['Q' . $j]; 
                                                $r1=mysqli_query($feeddbc,"UPDATE alfeedback set Q$j='$a' where user='$feedid'");
                                            }
                                        }
                                    }?>
                                    <tr><td colspan=3><center>
                                        <button type="submit" class="btn" name="Submit" id="Submit">Submit</button>
                                    </center></td></tr>
                                </table>
                                
                            </div>
                        </form>
                        <?php include_once('includes/footer.php');?>`
                    <!-- </div> -->
                </center>
            <!-- </div> -->
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
