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
    if(isset($_POST['editdata'])){
        $ch1=$_POST['Tid'];
        $asd="select subject_no from subject_table where subject_name='$ch1'";
        $resq=mysqli_query($con1, $asd);
        $q = mysqli_fetch_array($resq);
        $codech=$q["subject_no"];
        $rettry=mysqli_query($feedbc,"select * from cequestions where subject_no='$codech'");
            header("Location:FormECEF.php?code=$codech");
    }
    else if(isset($_POST['submit'])){
        $ch1=$_POST['Tid'];
        $asd="select subject_no from subject_table where subject_name='$ch1'";
        $resq=mysqli_query($con1, $asd);
        $q = mysqli_fetch_array($resq);
        $codech=$q["subject_no"];
        $sqldelete="DELETE FROM cequestions WHERE subject_no = '$codech'";
        mysqli_query($feedbc,$sqldelete);
        $filename = $_FILES["file"]["tmp_name"];
        if($_FILES["file"]["size"] > 0) {
            $file = fopen($filename, "r");
            $c=0;
            while (($col = fgetcsv($file, 10000, ",")) !== FALSE){
                if($c==0){
                    //for header
                }
                else{
                $insert = "insert into cequestions(subject_no,semester,question_no,question) values('" . $col[0] . "','" . $col[1] . "','" . $col[2] . "','" . $col[3] . "')";
                mysqli_query($feeddbc,$insert);}
            }
            $c++;
            $msg='<center><p> CSV Data inserted successfully</p></center>';
        }
        
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.search-box input[type="text"]').on("keyup input", function(){
        /* Get input value on change */
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("backend_ce.php", {term: inputVal}).done(function(data){
                // Display the returned data in browser
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });
    
    // Set search input value on click of result item
    $(document).on("click", ".result p", function(){
        $(this).parents(".search-box").find('input[type="text"]').val($(this).text());
        $(this).parent(".result").empty();
    });
});
</script>
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>\
        <style>
        a {
            color: white;
        }
        /* Formatting search box */
    .search-box{
        width: 300px;
        position: relative;
        display: inline-block;
        font-size: 14px;
        
    }
    .search-box input[type="text"]{
        height: 32px;
        padding: 5px 10px;
        border: 1px solid #CCCCCC;
        font-size: 14px;
    }
    .result{
        position: absolute;        
        z-index: 999;
        top: 100%;
        left: 0;
    }
    .search-box input[type="text"], .result{
        width: 100%;
        box-sizing: border-box;
        background-color:#e5e5e5;
        
    }
    /* Formatting result items */
    .result p{
        margin: 0;
        padding: 7px 10px;
        border: 1px solid #CCCCCC;
        border-top: none;
        cursor: pointer;
    }
    .result p:hover{
        background: #f2f2f2;
    } 
    th{
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
                                            <strong>Questions for Course Exit Form</strong>
                                        </div>
                                        <div class="card-body card-block">
                                            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <p style="font-size:16px; color:red" align="center"> <?php if($msg){echo $msg;}  ?> </p>
                                                <div class="row form-group">
                                                    <div class="col col-md-3">
                                                         <label for="text-input" class=" form-control-label">Select Subject</label><br>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <div class="search-box">
                                                            <input type="text" id="Tid" name="Tid" class="form-control" autocomplete="off" placeholder="Search Course..." required=""/>
                                                            <div class="result">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col col-md-3">
                                                         <label for="text-input" class=" form-control-label">Import excel data(.CSV only/ Add one subject at a time)</label><br>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <input type='file' name='file' class="form-control" /><br>
                                                    </div>
                                                </div>
                                                
                                                <div class="card-footer">
                                                    <table style="margin-left:300px">
                                                    <th><p style="text-align: center;"><button class="btn btn-primary btn-sm"><a href="/Feedback/uploads/Book_exit.csv" download="demo">Download Template</a></button></th>
                                                    <th><p style="text-align: center;"><button type="submit" name="submit" id="submit" class="btn btn-primary btn-sm">Submit</button></p></th>
                                                    <th><p style="text-align: center;"><button type="submit" name="editdata" id="editdata" class="btn btn-primary btn-sm">Edit</button></p></th>
                                                    </table>
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