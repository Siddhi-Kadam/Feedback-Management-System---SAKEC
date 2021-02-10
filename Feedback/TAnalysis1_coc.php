<!-- Questionwise Graph of Co-Curricular Graph -->
<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
$m=1;
$sql2 = "select * from coaquestions";
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

$sql1 = "select division from coafeedback group by division";
if ($result1 = mysqli_query($feeddbc, $sql1)) {
    while ($row1 = mysqli_fetch_row($result1)) {
$di=$row1[0];
    $query = "select * FROM coafeedback where division='$di' group by division";
    $result = mysqli_query($feeddbc, $query);
    while($row = mysqli_fetch_array($result))  { 
        $asd="select count(*) as t1 FROM coafeedback where division='$di'";
        $asd1=mysqli_query($feeddbc, $asd);
        $asd2=mysqli_fetch_array($asd1);
        
?>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}

</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/material.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
<!--CSS-->
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">
        <!-- Title Page-->
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
<!-- Chart code -->
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_material);
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv<?php echo $m;?>", am4charts.PieChart);

// Add data
chart.data = [ 
                            
                            <?php
                for($i=1;$i<12;$i++){
                    $asd="select count(*) as cal from coafeedback where division='$di'";
                    $asd1=mysqli_query($feeddbc, $asd);
                    $ad = mysqli_fetch_array($asd1);
                    $qu1="select count(Q$i)*100 as c1$i,Q$i from coafeedback where division='$di' group by Q$i having Q$i='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q$i)*75 as c2$i,Q$i from coafeedback where division='$di' group by Q$i having Q$i='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q$i)*50 as c3$i,Q$i from coafeedback where division='$di' group by Q$i having Q$i='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q$i)*25 as c4$i,Q$i from coafeedback where division='$di' group by Q$i having Q$i='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c1'.$i]+$r22['c2'.$i]+$r23['c3'.$i]+$r24['c4'.$i]);
                    $ca=$ca1/$ad['cal'];
                    if($ca!=NULL){
            ?>
                        {
                            "country":"<?php echo 'Q'.$i;?>",
                            "litres": "<?php echo $ca;?>"
                        },
            <?php
                    }
                    else if($ca==NULL)
                    {
                        $ca=0;
            ?>
                        {
                            "country":"<?php echo 'Q'.$i ?>",
                            "litres": "<?php echo $ca?>"
                        },
            <?php
                    }
                }
                $qu1="select count(Q12)*100 as c112,Q12 from coafeedback where division='$di' group by Q12 having Q12='4'";
                    $re1=mysqli_query($feeddbc, $qu1);
                    $r21 = mysqli_fetch_array($re1);
                    $qu2="select count(Q12)*75 as c212,Q12 from coafeedback where division='$di' group by Q12 having Q12='3'";
                    $re2=mysqli_query($feeddbc, $qu2);
                    $r22 = mysqli_fetch_array($re2);
                    $qu3="select count(Q12)*50 as c312,Q12 from coafeedback where division='$di' group by Q12 having Q12='2'";
                    $re3=mysqli_query($feeddbc, $qu3);
                    $r23 = mysqli_fetch_array($re3);
                    $qu4="select count(Q12)*25 as c412,Q12 from coafeedback where division='$di' group by Q12 having Q12='1'";
                    $re4=mysqli_query($feeddbc, $qu4);
                    $r24 = mysqli_fetch_array($re4);
                    $ca1=($r21['c112']+$r22['c212']+$r23['c312']+$r24['c412']);
                    $ca=$ca1/$ad['cal'];
                if($ca!=NULL){
            ?>
                        {
                            "country":"<?php echo 'Q12';?>",
                            "litres": "<?php echo $ca;?>"
                        }
            <?php
                }
                else if($ca==NULL)
                {
                    $ca=0;
            ?>
                        {
                            "country":"<?php echo 'Q12';?>",
                            "litres": "<?php echo $ca;?>"
                        }
            <?php
                }
            ?>              
<?php } ?>
 ];

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "litres";
pieSeries.dataFields.category = "country";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;

// This creates initial animation
pieSeries.hiddenState.properties.opacity = 1;
pieSeries.hiddenState.properties.endAngle = -90;
pieSeries.hiddenState.properties.startAngle = -90;

}); // end am4core.ready()
</script>

<!-- HTML -->
<div id="chartdiv<?php echo $m;?>">Faculty Analysis will load here!</div><?php  $m++; ?>
<?php }} ?>