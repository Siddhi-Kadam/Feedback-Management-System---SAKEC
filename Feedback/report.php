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
        if($_GET){
            $di=$_GET['code'];
        }
        echo 'Questions:';
        $sql2 = "select * from tfquestions";
        $result2 = mysqli_query($feeddbc,$sql2);
        echo "<table>"; 
        for($j=1;$j<=10,$row2 = mysqli_fetch_array($result2);$j++){
            $quest=$row2["question"];
            echo "<tr><td>";
            echo $j;
            echo "</td><td>";
            echo $quest;
            echo "</td></tr>";
        } 
        echo "</table><br>";
        echo '<p style="text-align: center;"><button class="btn btn-primary btn-sm"><a href="/Feedback/anreport.php">Back</a></button></p>';
        echo '<p style="text-align: center;"><input id ="printbtn" type="button" class="btn btn-primary btn-sm" value="Print this page" onclick="window.print();" ></p>';
?>
<html>
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
        <style>
            table { 
                display: table;
                border-collapse: separate;
                border-spacing: 2px;
                border-color: gray;
            }
            a {
  color: white;
}
        </style>
        <style type="text/css">
@media print {
    #printbtn {
        display :  none;
    }
}
</style>
    </head>
    <body>
        <table border="1" cellpadding="10" cellspacing="10" align="center">
            <tr>
                <th rowspan='2'>Teachers</th>
                <th colspan='10'>Subject Grading</th>
                <th rowspan='2'>Average</th>
            </tr>
            <tr>
                <?php 
                    for($j=1;$j<=10;$j++){
                ?>
                <th><?php echo 'Q'.$j; ?></th>
                <?php
                    } 
                ?>
            </tr>
            <?php 
                $sql="SELECT DISTINCT(teacher_id),subject_no FROM tfeedback where division='$di'";
                $r=mysqli_query($feeddbc,$sql);
                while($row = mysqli_fetch_array($r)){ 
            ?>
            <tr>
                <td>
                    <?php 
                        $a=$row['teacher_id'];
                        $a1=$row['subject_no'];
                        $sqlu="select full_name from users where user_name='$a'";
                        $ru=mysqli_query($con,$sqlu);
                        $sqlu1="select subject_name from subject_table where subject_no='$a1' AND (teacher1_id='$a' OR teacher2_id='$a' OR teacher3_id='$a')";
                        $ru1=mysqli_query($con1,$sqlu1);
                        while($row1=mysqli_fetch_array($ru))
                        {                       
                            echo $row1["full_name"];           
                            while($row11=mysqli_fetch_array($ru1))
                            {
                                echo '('.$row11['subject_name'].')';
                            }     
                        }  
                    ?>
                </td>
                <?php
                    $sum=0;
                    for($i=1;$i<=10;$i++){
                    $asd="select count(*) as cal from tfeedback where teacher_id='$a' AND division='$di'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from tfeedback where teacher_id='$a' AND division='$di' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from tfeedback where teacher_id='$a' AND division='$di' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from tfeedback where teacher_id='$a' AND division='$di' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from tfeedback where teacher_id='$a' AND division='$di' group by Q$i having Q$i='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c1'.$i]+$r22['c2'.$i]+$r23['c3'.$i]+$r24['c4'.$i]);
                    $ca=$ca1/$ad['cal'];
                    $sum=$sum+$ca;
                    if($ca!=NULL){
            ?>
                <td>
                    <?php
                        echo(round($ca));
                    ?>
                </td>
            <?php
                    }
                }
            ?>
                <td>
                    <?php
                        $avg=$sum/10;
                        echo(round($avg));
                    ?>
                </td>
            </tr>
            <?php
                }
            ?>
        </table>
    </body>
            <?php } ?>
</html>