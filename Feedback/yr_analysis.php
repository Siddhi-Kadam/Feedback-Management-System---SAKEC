<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$feedid = $_SESSION['feedid'];
$year = $_SESSION['year'];
$tcode=$_SESSION['tcode'];
error_reporting(0);
if (strlen($_SESSION['feedid']==0) && strlen($_SESSION['year']==0)) {
    header('location:logout.php');
}
else{
    if($_GET){
        $stc=$_GET['code'];
        $_SESSION['staffc']=$stc;
    }
    $adminid=$_SESSION['feedid'];
    $rethead=mysqli_query($con,"select full_name, user_name from users where user_name='$tcode'");
    $rowhead=mysqli_fetch_array($rethead);
    $name=$rowhead['full_name'];
    $username=$rowhead['user_name'];
    $m=1;
    $n=1;
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



?>

<html>
<head>
    <style type="text/css">
@media print {
    #printbtn {
        display :  none;
    }
}
</style>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">
    <!-- Title Page-->
    <title>Faculty Analysis</title>
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
    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script type="text/javascript">
		FusionCharts.ready(function(){
			var chartObj = new FusionCharts({
    type: 'mscolumn3d',
    renderAt: 'chart-container<?php echo $m;?>',
    width: '1200',
    height: '600',
    dataFormat: 'json',
    dataSource: {
        "chart": {
            "theme": "fusion",
            "caption": "Faculty Feedback Analysis(Theory) of:<?php echo $name; ?> for subject code <?php echo $stc;?>",
            "xAxisname": "<?php echo $year; ?>",
            "yAxisName": "Average Scores of Students",
            "numberPrefix": "",
            "showValues":"1",
            "plotFillAlpha": "80",
            "divLineIsDashed": "1",
            "divLineDashLen": "1",
            "divLineGapLen": "1"
        },
        "categories": [{
            "category": [{
                "label": "Q1"
            }, {
                "label": "Q2"
            }, {
                "label": "Q3"
            }, {
                "label": "Q4"
            },{
                "label":"Q5"
            },{
                "label": "Q6"
            }, {
                "label": "Q7"
            }, {
                "label": "Q8"
            }, {
                "label": "Q9"
            },{
                "label":"Q10"
            }]
        }],
        "dataset": [
        {
            "seriesname": "Counts as per options selected by students",
            "data": [
            <?php
                for($i=1;$i<10;$i++){
                    $asd="select count(*) as cal from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c1'.$i]+$r22['c2'.$i]+$r23['c3'.$i]+$r24['c4'.$i]);
                    $ca=$ca1/$ad['cal'];

                    if($ca!=NULL){
            ?>
                        {
                            "value": "<?php echo $ca;?>"
                        },
            <?php
                    }
                    else if($m==NULL)
                    {
                        $ca=0;
            ?>
                        {
                            "value": "<?php echo $ca;?>"
                        },
            <?php
                    }
                }
                    $qu1="select count(Q10)*100 as c110,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q10)*75 as c210,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q10)*50 as c310,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q10)*25 as c410,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c110']+$r22['c210']+$r23['c310']+$r24['c410']);
                    $ca=$ca1/$ad['cal'];

                if($ca!=NULL){
            ?>
                        {
                            "value":"<?php echo $ca; ?>"
                        }]
            <?php
                }
                else if($r2['c10']==NULL)
                {
                    $r2['c10']=0;
            ?>
                        {
                            "value":"<?php echo $ca; ?>"
                        }]
            <?php
                }
            ?>

        }
        ]
    }
});
			chartObj.render();
		});
	</script>
    <script type="text/javascript">
		FusionCharts.ready(function(){
			var chartObj = new FusionCharts({
    type: 'mscolumn3d',
    renderAt: 'chart-container2',
    width: '1200',
    height: '600',
    dataFormat: 'json',
    dataSource: {
        "chart": {
            "theme": "fusion",
            "caption": "Faculty Feedback Analysis(Theory) of:<?php echo $name; ?> for subject code <?php echo $stc;?>",
            "xAxisname": "<?php echo '2/2021'; ?>",
            "yAxisName": "Average Scores of Students",
            "numberPrefix": "",
            "showValues":"1",
            "plotFillAlpha": "80",
            "divLineIsDashed": "1",
            "divLineDashLen": "1",
            "divLineGapLen": "1"
        },
        "categories": [{
            "category": [{
                "label": "Q1"
            }, {
                "label": "Q2"
            }, {
                "label": "Q3"
            }, {
                "label": "Q4"
            },{
                "label":"Q5"
            },{
                "label": "Q6"
            }, {
                "label": "Q7"
            }, {
                "label": "Q8"
            }, {
                "label": "Q9"
            },{
                "label":"Q10"
            }]
        }],
        "dataset": [
        {
            "seriesname": "Counts as per options selected by students",
            "data": [
            <?php
                for($i=1;$i<10;$i++){
                    $asd="select count(*) as cal from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c1'.$i]+$r22['c2'.$i]+$r23['c3'.$i]+$r24['c4'.$i]);
                    $ca=$ca1/$ad['cal'];

                    if($ca!=NULL){
            ?>
                        {
                            "value": "<?php echo $ca;?>"
                        },
            <?php
                    }
                    else if($n==NULL)
                    {
                        $ca=0;
            ?>
                        {
                            "value": "<?php echo $ca;?>"
                        },
            <?php
                    }
                }
                    $qu1="select count(Q10)*100 as c110,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q10)*75 as c210,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q10)*50 as c310,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q10)*25 as c410,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c110']+$r22['c210']+$r23['c310']+$r24['c410']);
                    $ca=$ca1/$ad['cal'];
                if($ca!=NULL){
            ?>
                        {
                            "value":"<?php echo $ca; ?>"
                        }]
            <?php
                }
                else if($r2['c10']==NULL)
                {
                    $r2['c10']=0;
            ?>
                        {
                            "value":"<?php echo $ca; ?>"
                        }]
            <?php
                }
            ?>

        }
        ]
    }
});
			chartObj.render();
		});
	</script>
</head>
<body>
<table class="w3-table" border="1">
    <tr>
        <th>Questions</th>
        <th><?php echo $year; ?></th>
        <th>2/2021</th>
    </tr>
    <?php
        for($i=1;$i<10;$i++){
        ?>
        <tr>
            <td>Q.<?php echo $i; ?></td>
        <?php
                    $asd="select count(*) as cal from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $x1 = $ad['cal'];
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q$i having Q$i='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c1'.$i]+$r22['c2'.$i]+$r23['c3'.$i]+$r24['c4'.$i]);
                    $ca=$ca1/$ad['cal'];
                    if($ca!=NULL){
        ?>
            <td><?php echo $ca;?></td>
        <?php
                    }

                    $asd="select count(*) as cal from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $x2 = $ad['cal'];
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q$i having Q$i='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c1'.$i]+$r22['c2'.$i]+$r23['c3'.$i]+$r24['c4'.$i]);
                    $ca=$ca1/$ad['cal'];
                    if($ca!=NULL){
        ?>
            <td><?php echo $ca;?></td></tr>
        <?php
                    }
        }
        ?>
        </tr>
        <tr>
            <td>Q.10</td>
        <?php
                    $qu1="select count(Q10)*100 as c110,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q10)*75 as c210,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q10)*50 as c310,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q10)*25 as c410,Q10 from tfeedback where teacher_id='$username' AND dates='$year' AND subject_no='$stc' group by Q10 having Q10='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c110']+$r22['c210']+$r23['c310']+$r24['c410']);
                    $ca=$ca1/$x1;
                    if($ca!=NULL){
        ?>
            <td><?php echo $ca;?></td>
        <?php
                    }
                    $qu1="select count(Q10)*100 as c110,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q10)*75 as c210,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q10)*50 as c310,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q10)*25 as c410,Q10 from tfeedback where teacher_id='$username' AND dates='2/2021' AND subject_no='$stc' group by Q10 having Q10='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c110']+$r22['c210']+$r23['c310']+$r24['c410']);
                    $ca=$ca1/$x2;
                    if($ca!=NULL){
        ?>
            <td><?php echo $ca;?></td>
        <?php
                    }
        ?>
        </tr>
</table>
<br>
<div id="chart-container<?php echo $m;?>">Faculty Analysis will load here!</div>
<div id="chart-container2">Faculty Analysis will load here!</div>
</body>

</html>
<?php } ?>
