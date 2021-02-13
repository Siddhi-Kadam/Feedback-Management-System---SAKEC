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
        $sqliloc="select * from student_table2 where std_id=$feedid";
        $resultiloc = mysqli_query($con,$sqliloc);
        $rowiloc = mysqli_fetch_array($resultiloc);
        $semes=$rowiloc["semester"];
        if($semes<7)
            header("Location: PFF.php");
        else
            header("Location: FF8.php");
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
                    <strong>Add Theory Feedback</strong> 
                </div>
                <center>
                    <div class="card-body card-block">
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group">                                      
                                <?php 
                                $d = date("n");
                                $d .= '/';
                                $d .= date("Y");
                                $sql="select * from student_table2 where std_id=$feedid";
                                $result = mysqli_query($con,$sql);
                                $row = mysqli_fetch_array($result);
                                $semid=$row["semester"];
                                $programstude=$row["program"];
                                $batch=$row["batch"];
                                $di=$row["division"];
                                $sqlelect="SELECT * FROM elective_subject WHERE semester = '$semid' AND program = '$programstude' AND division = '$di' AND batch = '$batch'";
                                $resultelect = mysqli_query($con,$sqlelect);
                                if (mysqli_num_rows($resultelect) > 0) { ?>
                                <table border="1" cellpadding="5" cellspacing="5" align="center">
                                <?php
                                    $i=0;
                                    while($rowelect = mysqli_fetch_array($resultelect)) {
                                        $s1=$rowelect["subject_no"];
                                        $subn=$rowelect["subject_name"]; 
                                ?>
                                        <tr>
                                            <th rowspan="3">Questions</th>
                                            <th colspan="4">
                                            <?php echo $subn; ?>                                     
                                            </th>
                                        </tr>
                                        <tr>
                                        <th colspan="2">THEORY</th>
                                        </tr>
                                        <th>
                                            <?php 
                                                $sqlthstff="select * from subject_table where subject_name='$subn' and division = '$di'";
                                                $resultthstff = mysqli_query($con1,$sqlthstff);
                                                $rowthstff = mysqli_fetch_array($resultthstff);
                                                $se=$rowthstff["semester"];
                                                $t11=$rowthstff["teacher1_id"];
                                                $t12=$rowthstff["teacher2_id"];
                                                $sqlstaff = "select * from users where user_name='$t11'";
                                                $resultstaff = mysqli_query($con1,$sqlstaff);
                                                $rowstaff = mysqli_fetch_array($resultstaff);
                                                $fullnamestff = $rowstaff["full_name"];
                                                echo $fullnamestff;
                                            ?>
                                        </th>
                                        <th>
                                            <?php $sqlstaff = "select * from users where user_name='$t12'";
                                                $resultstaff = mysqli_query($con1,$sqlstaff);
                                                $rowstaff = mysqli_fetch_array($resultstaff);
                                                echo $rowstaff["full_name"];
                                            $i++;
                                    }
                                }?>
                                        </th>
                                        <tr>
                                        </tr>
                                        <?php 
                                            $sql2 = "select * from tfquestions";
                                            $result2 = mysqli_query($feeddbc,$sql2);
                                            for($j=1;$j<=10,$row2 = mysqli_fetch_array($result2);$j++){
                                        ?>
                                            <tr>
                                                <td> <?php $quest=$row2["question"];
                                                    echo $quest;
                                                    if ($t11!=''){?> </td></td>
                                                <td><center>
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='4' required>4  
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='3' required checked>3  
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='2' required>2  
                                                    <input type='radio' name='Q<?php echo "$j"; ?>' value='1' required>1
                                                </center></td><?php }?>
                                                <td><center><?php if ($t12!=''){?>
                                                    <input type='radio' name='R<?php echo "$j";?>' value='4' required>4
                                                    <input type='radio' name='R<?php echo "$j";?>' value='3' required checked>3
                                                    <input type='radio' name='R<?php echo "$j";?>' value='2' required>2
                                                    <input type='radio' name='R<?php echo "$j";?>' value='1' required>1
                                                </center></td><?php }?>
                                            </tr>
                                    <?php }?>
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
                                            <tr><td colspan=5><center>
                                                    <button type="submit" class="btn" name="Submit" formaction="<?php echo $jump;?>">Next</button>
                                            </center></td></tr>
                                            <?php
                                            if(isset($_POST['Submit'])){
                                                
                                                if ($t11!=''){
                                                $r=mysqli_query($feeddbc,"INSERT INTO tfeedback(std_id,teacher_id,subject_no,division,semester,dates) VALUES('$feedid','$t11','$s1','$di','$se','$d')");
                                                }
                                                if ($t12!=''){
                                                $r=mysqli_query($feeddbc,"INSERT INTO tfeedback(std_id,teacher_id,subject_no,division,semester,dates) VALUES('$feedid','$t12','$s1','$di','$se','$d')");
                                                }
                                                $comment=$_POST["comment"];
                                                $r=mysqli_query($feeddbc,"UPDATE tfeedback set comment='$comment' where subject_no='$s1' AND std_id='$feedid' AND division='$di' AND semester='$se'");
                                                for ($j = 1; $j <11; $j++) {
                                                    if(isset($_POST['Q' . $j])){
                                                        $a = $_POST['Q' . $j];
                                                        $r=mysqli_query($feeddbc,"UPDATE tfeedback set Q$j='$a' where teacher_id='$t11' AND subject_no='$s1' AND std_id='$feedid' AND division='$di' AND semester='$se'");
                                                    }
                                                    if(isset($_POST['R' . $j])){
                                                        $b = $_POST['R' . $j]; 
                                                        $r=mysqli_query($feeddbc,"UPDATE tfeedback set Q$j='$b' where teacher_id='$t12' AND subject_no='$s1' AND std_id='$feedid' AND division='$di' AND semester='$se'");
                                                    }
                                                }
                                            }?>
                                    </table>
                            </div>
                        </form>
                        <?php include_once('includes/footer.php');?>
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