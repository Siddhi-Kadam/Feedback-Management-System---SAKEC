<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('question.php');
$feedid=$_SESSION['feedid'];
if (strlen($_SESSION['feedid']==0)) 
{
  header('location:logout.php');
} 
else
{
  if(isset($_POST['submit']))
    {
     /*
        $y=0;
        $x=0;
        $r=mysqli_query($con,"UPDATE feedback SET Q1 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q2 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q3 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q4 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q5 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q6 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q7 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q8 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q9 = 'Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        $r=mysqli_query($con,"UPDATE feedback SET Q10 ='Q[$x][$y]' Where teacher_id='$t11' AND student_id='$feedid' AND subject_no='$s1'");
        }*/
    }
    $sql = "select * from subject_table where div_id in (select div_id from intake where sem_id in (select sem_id from division_details Where std_id='$feedid')) limit 1 offset 2";
    $result = mysqli_query($con,$sql);
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
                    <strong>Add Feedback</strong> 
                </div>
                <center>
                    <div class="card-body card-block">
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group">                                      
                                <?php if (mysqli_num_rows($result) > 0) {  ?>
                                <table border="1" cellpadding="5" cellspacing="5" align="center">
                                <?php
                                    $i=0;
                                    while($row = mysqli_fetch_array($result)) { 
                                        $t11=$row["teacher1_id"];
                                        $s1=$row["subject_no"];
                                        $t12=$row["teacher2_id"];
                                        $r=mysqli_query($con,"INSERT INTO feedback(std_id,teacher_id,subject_no) VALUES('$feedid','$t11','$s1')");
                                        $r=mysqli_query($con,"INSERT INTO feedback(std_id,teacher_id,subject_no) VALUES('$feedid','$t12','$s1')");
                                ?>
                                        <tr>
                                            <th rowspan="3">Questions</th>
                                            <th colspan="4">
                                            <?php echo $row["subject_name"]; ?>                                     
                                            </th>
                                        </tr>
                                        <tr>
                                        <th colspan="2">THEORY</th>
                                        <th colspan="2">PRACTICAL</th>
                                        </tr>
                                        <th>
                                            <?php echo $row["teacher1_name"]; ?>
                                        </th>
                                        <th>
                                            <?php echo $row["teacher2_name"];
                                            $i++;
                                    }
                                }?>
                                        </th>
                                        </tr>
                                        <?php for($j=1;$j<=10;$j++){
                                                $n=1;
                                        ?>
                                            <tr>
                                                <td> <?php echo $question[$j]; ?> </td>
                                                <td>
                                                    <input type='radio' name='<?php echo "Q[$j]"; ?>' value='4'>4
                                                    <input type='radio' name='<?php echo "Q[$j]"; ?>' value='3'>3
                                                    <input type='radio' name='<?php echo "Q[$j]"; ?>' value='2'>2
                                                    <input type='radio' name='<?php echo "Q[$j]"; ?>' value='1'>1
                                                    <?php $n++; ?>
                                                </td>
                                                <td>
                                                    <input type='radio' name='<?php echo "R[$j]";?>' value='4'>4
                                                    <input type='radio' name='<?php echo "R[$j]";?>' value='3'>3
                                                    <input type='radio' name='<?php echo "R[$j]";?>' value='2'>2
                                                    <input type='radio' name='<?php echo "R[$j]";?>' value='1'>1
                                                    <?php $n++;?>
                                                </td>
                                                <td>
                                                    <input type='radio' name='<?php echo "S[$j]";?>' value='4'>4
                                                    <input type='radio' name='<?php echo "S[$j]";?>' value='3'>3
                                                    <input type='radio' name='<?php echo "S[$j]";?>' value='2'>2
                                                    <input type='radio' name='<?php echo "S[$j]";?>' value='1'>1
                                                </td><!-- n<4 j<11-->
                                            </tr>
                                            <?php
                                        }?>
                                        <tr><td colspan=5><center>
                                            <button type="submit" class="btn" name="Submit" formaction="log4.php">Next</button>
                                        </center></td></tr>   
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