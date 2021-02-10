<!-- Questionwise Graph of Theory FF Graph -->
<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$m=1;
if($_GET){
    $stc=$_GET['code'];
    $_SESSION['staffc']=$stc;
}
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
            
            echo '<h2><button class="btn btn-primary btn-sm" name="Back"><a href="/Feedback/staff_analysis.php" style="color: white">Back</a></button><br></h2>';

$sql1 = "select division from tfeedback where teacher_id='$stc' group by division";
if ($result1 = mysqli_query($feeddbc, $sql1)) {
    while ($row1 = mysqli_fetch_row($result1)) {
$di=$row1[0];
$q1= "select * from users where user_name='$stc'";
$r1=mysqli_query($con, $q1);

if (mysqli_num_rows($r1) > 0) {
while($row1 = mysqli_fetch_array($r1)) {
    $query = "select * FROM tfeedback where teacher_id='$stc' AND division='$di' group by division,subject_no";
    $result = mysqli_query($feeddbc, $query);
    while($row = mysqli_fetch_array($result))  { 
        $sn=$row['subject_no'];
        $qu11 = "select * FROM subject_table where subject_no='$sn'";
        $res11 = mysqli_query($con1, $qu11);
        $row11 = mysqli_fetch_array($res11);
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
            "caption": "Faculty Feedback Analysis(Theory) of:<?php echo $row1['full_name']; ?> for subject <?php echo $row11['subject_name'];?>",
            "xAxisname": "<?php echo $row['division'] ?>",
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
            "seriesname": "4",
            "data": [
            <?php
                for($i=1;$i<10;$i++){
                    $qu1="select avg(Q$i)*25 as c$i,Q$i from tfeedback where teacher_id='$stc' AND division='$di'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r2 = mysqli_fetch_array($re1);
                    if($r2['c' . $i]!=NULL){
            ?>
                        {
                            "value": "<?php echo $r2['c' . $i]?>"
                        },
            <?php
                    }
                    else if($r2['c' . $i]==NULL)
                    {
                        $r2['c' . $i]=0;
            ?>
                        {
                            "value": "<?php echo $r2['c' . $i]; ?>"
                        },
            <?php
                    }
                }
                $qu1="select avg(Q10)*25 as c10,Q10 from tfeedback where teacher_id='$stc' AND division='$di'";
                $re1=mysqli_query($feeddbc, $qu1);
                $r2 = mysqli_fetch_array($re1);
                if($r2['c10']!=NULL){
            ?>            
                        {
                            "value":"<?php echo $r2['c10']; ?>"
                        }]
            <?php
                }
                else if($r2['c10']==NULL)
                {
                    $r2['c10']=0;
            ?>
                        {
                            "value":"<?php echo $r2['c10']; ?>"
                        }]
            <?php
                }
            ?>
        <?php } ?>
        }
        ]
    }
//});  remove comment if needed
			chartObj.render();
		});
	</script>
	</head>
	<body>

		<div id="chart-container<?php echo $m;?>">Faculty Analysis will load here!</div><?php  $m++; ?>
	</body>

</html>

<?php }}}} ?>