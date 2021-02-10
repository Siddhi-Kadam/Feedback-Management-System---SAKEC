<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
error_reporting(0);
if (strlen($_SESSION['feedid']==0)) {
  header('location:logout.php');
  } 
else{ 
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
        <style>
        a {
  color: white;
}
td{
    padding:10px;
}
    </style>
    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <!-- HEADER MOBILE-->
            <?php include_once('includes/asidebar.php');?>      
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
                                            <strong>Questions for Extra-Curricular Activity Form</strong>
                                        </div>
                                        <div class="card-body card-block">
                                            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <p style="font-size:16px; color:red" align="center"> <?php if($msg){echo $msg;}  ?> </p>
                                                <div class="row form-group">
                                                    <div class="col col-md-3">
                                                         <label for="text-input" class=" form-control-label">Import excel data(.CSV only)</label><br>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <input type='file' name='file' class="form-control" /><br>
                                                    </div>
                                                </div>
                                                <div class="card-footer">
                                                    <table  cellspacing="10" style="margin-left:300px">
                                                    <td><p style="text-align: center;"><button class="btn btn-primary btn-sm"><a href="/Feedback/uploads/Book_curr.csv" download="demo">Download Template</a></button></td>
                                                    <td><p style="text-align: center;"><button type="submit" name="submit" id="submit" class="btn btn-primary btn-sm">Submit</button></p></td>
                                                    </table>
                                                </div>
                                                <?php
                                                    if(isset($_POST['submit'])){
                                                        mysqli_query($feeddbc,"Truncate ecaquestions");
                                                        $filename = $_FILES["file"]["tmp_name"];
                                                        if($_FILES["file"]["size"] > 0) {
                                                            $file = fopen($filename, "r");
                                                            $c=0;
                                                            while (($col = fgetcsv($file, 10000, ",")) !== FALSE){
                                                                //echo'<p><pre>'; print_r($col); echo'</  pre></p>';
                                                                if($c==0){}
                                                                else{
                                                                $insert = "insert into ecaquestions(question_no,question) values('" . $col[0] . "','" . $col[1] . "')";
                                                                mysqli_query($feeddbc,$insert);
                                                                }
                                                                $c++;
                                                            }
                                                            $msg='<center><p> CSV Data inserted successfully</p></center>';
                                                        }
                                                    }?>
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