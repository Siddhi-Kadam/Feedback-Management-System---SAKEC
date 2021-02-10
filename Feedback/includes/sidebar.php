<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);
$feedid=$_SESSION['feedid'];
if (strlen($_SESSION['feedid']==0)) {
  header('location:logout.php');
  } 
else{ 
    $sqlside="select * from student_table2 where std_id='$feedid'";
    $resultside = mysqli_query($con,$sqlside);
    $rowside=mysqli_fetch_array($resultside);
    $prg=$rowside["program"];
    $semestercheck = $rowside["semester"];
    $prg1="Computer";
?>
<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href='dashboard.php'><h2>Feedback</h2></a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
                <li><a href='dashboard.php'  style='color: blue'>Dashboard</a></li>
                <li><a href='FF.php'  style='color: blue'>Faculty Feedback</a></li>
                <?php if($prg == $prg1){
                echo"<li><a href='Subject Selection.php'  style='color: blue'>Course Exit Form</a></li>";
                echo"<li><a href='Lab Selection.php'  style='color: blue'>Lab Exit Form</a></li>";
                echo"<li><a href='COCAChoice.php'  style='color: blue'>Co-Curricular Activity Form</a></li>";
                echo"<li><a href='ECAChoice.php'  style='color: blue'>Extra-Curricular Activity Form</a></li>";
                echo"<li><a href='FacilityFeedback.php'  style='color: blue'>Facility Feedback</a></li>";
                if($semestercheck==8){
                    echo"<li><a href='PEF.php'  style='color: blue'>Program Exit Form</a></li>";
                }
                } ?>  
            </ul>
        </nav>
    </div>
</aside>
<?php }?>