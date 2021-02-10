<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
include('includes/feedbackcon.php');
    $query = "select avg(Q1) as t1 ,avg(Q2) as t2,avg(Q3) as t3,avg(Q4) as t4,avg(Q5) as t5,avg(Q6) as t6,avg(Q7) as t7,avg(Q8) as t8,avg(Q9) as t9,avg(Q10) as t10 FROM coafeedback";
    $result = mysqli_query($feeddbc, $query);
?>
<!DOCTYPE html>
<html lang="en">
        <!-- Graph CSS-->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {'packages':['bar']});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Classes', 'Q1', 'Q2', 'Q3','Q4','Q5','Q6','Q7','Q8','Q9','Q10'],
                    ['Division', 0, 0, 0, 0,0,0,0,0,0,0],
                    <?php  
                        while($row = mysqli_fetch_array($result))  {  
                            echo "['".$row["division"]."','".$row["t1"]."','".$row["t2"]."','".$row["t3"]."','".$row["t4"]."','".$row["t5"]."','".$row["t6"]."','".$row["t7"]."','".$row["t8"]."','".$row["t9"]."', ".$row["t10"]."],";   
                          }  
                    ?>  
                    ]);
                var options = {
                chart: {
                    title: 'Co-Curricular Analysis',
                    subtitle: '',},
                bars: 'vertical' // Required for Material Bar Charts.
            };
        var chart = new google.charts.Bar(document.getElementById('barchart_material<?php echo $i;?>'));
        chart.draw(data, google.charts.Bar.convertOptions(options));}
    </script>
</head>
<body class="animsition">
        
    <center>
        <div class="card-body card-block">
            <div id="barchart_material<?php echo $i;?>" style="width: 900px; height: 500px;align: bottom"></div>
        </div><?php $i++; ?>
    </center>
    
</body>
</html>
<!-- end document-->
<?php  ?>