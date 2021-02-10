<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);
if (strlen($_SESSION['feedid']==0)) {
  header('location:logout.php');
  }
else{ 
    $sqlside="select * from users where id='$feedid'";
    $resultside = mysqli_query($con,$sqlside);
    $rowside=mysqli_fetch_array($resultside);
    $prog=$rowside['program'];
?>
<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href='Adashboard.php'><h2>Feedback</h2></a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
                <li><a href="Adashboard.php"  style="color: blue">Dashboard</a></li>
                <li><a href='ETFF.php' style='color: blue'>Faculty Feedback</a></li>
                <li><a href='ELFF.php' style='color: blue'>LAB Faculty Feedback</a></li>
                <?php if($prog=='Computer'){
                    echo"<li><a href='ECEF.php' style='color: blue'>Course Exit Form</a></li>";
                    echo"<li><a href='ELEF.php' style='color: blue'>LAB Exit Form</a></li>";
                    echo"<li><a href='EPEF.php'  style='color: blue'>Program Exit Form</a></li>";
                    echo"<li><a href='ECOCA.php'  style='color: blue'>Co-Curricular Activity Form</a></li>";
                    echo"<li><a href='EECA.php'  style='color: blue'>Extra-Curricular Activity Form</a></li>";
                    echo"<li><a href='EFacilityFeedback.php'  style='color: blue'>Facility Feedback Form</a></li>";
                }?>
                <li><a href='databutton.php' style="color: blue">Database insertions</a></li>
                <li><a href="anbutton.php" style="color: blue">Analysis</a></li>
                <li><a href="anreport.php" style="color: blue">Classwise Report</a></li>
            </ul>
        </nav>
    </div>
</aside>
<?php } ?>