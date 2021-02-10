<!-- Questionwise Graph of Extra-Curricular Graph -->
<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$m=1;
$sql2 = "select * from facilityquestions";
$result2 = mysqli_query($feeddbc,$sql2);
echo "<table>"; 
for($j=1;$j<=12,$row2 = mysqli_fetch_array($result2);$j++){
  $quest=$row2["question"];
echo "<tr><td>";
echo $j;
echo "</td><td>";
            echo $quest;
            echo "</td></tr>";
             } 
            echo "</table><br>";
echo '<input id ="printbtn" type="button" class="btn btn-primary btn-sm" value="Print this page" onclick="window.print();" ><br>';

$sql1 = "select division from facilityfeedback group by division";
if ($result1 = mysqli_query($feeddbc, $sql1)) {
    while ($row1 = mysqli_fetch_row($result1)) {
$di=$row1[0];
    $query = "select * FROM facilityfeedback where division='$di' group by division";
    $result = mysqli_query($feeddbc, $query);
    while($row = mysqli_fetch_array($result))  { 
        $asd="select count(*) as t1 FROM facilityfeedback where division='$di'";
        $asd1=mysqli_query($feeddbc, $asd);
        $asd2=mysqli_fetch_array($asd1);
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
        <title>Facility Analysis</title>
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
            "caption": "Facility Feedback Analysis:<?php echo $row['division'] ?>( <?php echo $asd2['t1'];?> entries by students)",
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
                    $asd="select count(*) as cal from facilityfeedback where division='$di'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from facilityfeedback where division='$di' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from facilityfeedback where division='$di' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from facilityfeedback where division='$di' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from facilityfeedback where division='$di' group by Q$i having Q$i='1'";
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
                $qu1="select count(Q10)*100 as c112,Q10 from facilityfeedback where division='$di' group by Q10 having Q10='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q10)*75 as c212,Q10 from facilityfeedback where division='$di' group by Q10 having Q10='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q10)*50 as c312,Q10 from facilityfeedback where division='$di' group by Q10 having Q10='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q10)*25 as c412,Q10 from facilityfeedback where division='$di' group by Q10 having Q10='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c112']+$r22['c212']+$r23['c312']+$r24['c412']);
                    $ca=$ca1/$ad['cal'];
                if($ca!=NULL){
            ?>            
                        {
                            "value":"<?php echo $ca; ?>"
                        }]
            <?php
                }
                else if($ca==NULL)
                {
                    $ca=0;
            ?>
                        {
                            "value":"<?php echo $ca; ?>"
                        }]
            <?php
                }
            ?>
        <?php } ?>
        }
        ]
    }
});
			chartObj.render();
		});
	</script>
	</head>
	<body>
    
		<div id="chart-container<?php echo $m;?>">Faculty Analysis will load here!</div><?php  $m++; ?>
	</body>

</html>

<?php }} ?>