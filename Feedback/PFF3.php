<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$feedid=$_SESSION['feedid'];
if (strlen($_SESSION['feedid']==0)) 
{
  header('location:logout.php');
} 
else
{
    if(isset($_POST['Submit'])){
        $sqltest="select * from sem_details where program in (select program from student_table2 where std_id='$feedid') AND semester in (select semester from student_table2 where std_id='$feedid')";
        $resulttest = mysqli_query($con,$sqltest);
        $rowtest = mysqli_fetch_array($resulttest);
        $Tcount=$rowtest['total_labs'];
        $se=$rowtest['Semester'];
        if($TCount<=5){
            header("Location: PFF4.php");
        }
        else
            header('location:dashboard.php');
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
    <title>FACULTY Feedback</title>

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
                    <strong>Add Practical Feedback (4:Excellent,3:Very Good,2:Good,1:Poor)</strong> 
                </div>
                <center>
                    <div class="card-body card-block">
                    <?php
                        $sql="select * from student_table2 where std_id='$feedid'";
                        $result = mysqli_query($con,$sql);
                        $row = mysqli_fetch_array($result);
                        $semid=$row["semester"];
                        $batch=$row["batch"];
                        $divid=$row["division"];
                        $programtest=$row["program"];
                        //Selects lab table
                        $sql1 = "select distinct * from lab_table where batch = '$batch' AND division = '$divid' AND semester = '$semid' and program='$programtest' limit 1 offset 3";
                        $result1 = mysqli_query($con1,$sql1);
                        $sql2 = "select * from pfquestions";
                        $result2 = mysqli_query($feeddbc,$sql2);
                        ?>
                        <form method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group" style="margin-left:110px">
                                <?php
                                $sql3 = "select * from pquestions";
                                $result3 = mysqli_query($feeddbc,$sql3); 
                                if (mysqli_num_rows($result1) > 0) { ?>
                                    <table border="1" cellpadding="5" cellspacing="5" align="center">
                                        <?php
                                            while($row = mysqli_fetch_array($result1)) { 
                                                $t1=$row["teacher1_id"];
                                                $s1=$row["lab_no"];
                                                $se=$row["semester"];
                                                $di=$row["division"];
                                                $ba=$row["batch"];
                                        ?>
                                                <tr>
                                                    <th rowspan="3">Questions</th>
                                                    <th>PRACTICALS</th>
                                                </tr>
                                                <tr>
                                                    <th> <?php 
                                                        $sqlstaff = "select * from users where user_name='$t1'";
                                                        $resultstaff = mysqli_query($con1,$sqlstaff);
                                                        $rowstaff = mysqli_fetch_array($resultstaff);
                                                        echo $rowstaff["full_name"]; ?> </th>
                                                </tr> 
                                                <tr>
                                                    <th> <?php echo $row["lab_name"]; ?> </th>
                                                </tr>
                                            <?php }
                                } ?>
                                        <?php for($j=1;$j<=5,$row3 = mysqli_fetch_array($result3);$j++) { ?>
                                            <tr>
                                                <td><?php 
                                                    $pquest=$row3["question"];
                                                    echo $pquest;?></td>
                                                <td>
                                                    <input type="radio" name="S<?php echo $j; ?>" value="4" required>4
                                                    <input type="radio" name="S<?php echo $j; ?>" value="3" required checked>3
                                                    <input type="radio" name="S<?php echo $j; ?>" value="2" required>2
                                                    <input type="radio" name="S<?php echo $j; ?>" value="1" required>1
                                                </td>
                                                </tr>
                                        <?php } ?>
                                                <tr><td colspan=5>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input" class=" form-control-label">Comment</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea class="comment" id="comment" name="comment"></textarea>
                                                        </div>
                                                    </div>                                            
                                                </td></tr>
                                                <tr><td colspan=2><center>
                                                    <button type="submit" class="btn" name="Submit" id="Submit">Submit</button>
                                                </center></td></tr>
                                        <?php if(isset($_POST['Submit'])) {
                                            $r=mysqli_query($feeddbc,"INSERT INTO pfeedback(std_id,batch,division,teacher_id,subject_no) VALUES('$feedid','$ba','$di','$t1','$s1')");
                                            $comment=$_POST["comment"];
                                            $r=mysqli_query($feeddbc,"UPDATE pfeedback set comment='$comment' where subject_no='$s1' AND std_id='$feedid' AND division='$di'");
                                            for ($j = 1; $j <=5; $j++) {
                                                if(isset($_POST['S' . $j])){
                                                    $a = $_POST['S' . $j]; 
                                                    $r=mysqli_query($feeddbc,"UPDATE pfeedback set Q$j='$a' where teacher_id='$t1' AND subject_no='$s1' AND std_id='$feedid' AND division='$di'");
                                                }
                                            }                                            
                                        }
                                        ?>

                                    </table>
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