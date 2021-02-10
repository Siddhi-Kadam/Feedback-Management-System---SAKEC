<?php
//For First year staff department needs to FE
include('includes/dbconnection.php');
$feedid=$_SESSION['feedid'];
//Fetch Program to connect to the feedback database for student
$sqlfeed="select * from student_table2 where std_id='$feedid'";
$resultfeed = mysqli_query($con,$sqlfeed);
$rowfeed = mysqli_fetch_array($resultfeed);
$progstud=$rowfeed["program"];
$year=$rowfeed["year"];
$batch=$rowfeed["batch"];
//Fetch Program to connect to the feedback database for staff
$sqlfeed="select program from users where id='$feedid'";
$resultfeed = mysqli_query($con,$sqlfeed);
$rowfeed = mysqli_fetch_array($resultfeed);
$progstaff=$rowfeed["program"];
$pg1 = "Computer";
$pg2 = "EXTC";
$pg3 = "ETRX";
//Fetch year to connect to First year feedback database
$yr = "FIRST";
// Connect to First year database
if($year==$yr  || $progstaff=='FE'){
	define ("DB","feedbackfe"); 
	$feeddbc=mysqli_connect("localhost", "root", "",DB);
	$atl=0;
	//echo"connection established with $progstud";
	if(mysqli_connect_errno()){
		echo "Connection Fail".mysqli_connect_error();}}
if($progstud==$pg1 || $progstaff==$pg1 && $year!=$yr){
	$feeddbc=mysqli_connect("localhost", "root", "","feedbackcomputer");
	$atl=1;
	if(mysqli_connect_errno()){
		echo "Connection Fail".mysqli_connect_error();}}
if($progstud==$pg2 || $progstaff==$pg2 && $year!=$yr){
	define ("DB","feedbackcextc"); 
	$feeddbc=mysqli_connect("localhost", "root", "",DB);
	$atl=2;
	if(mysqli_connect_errno()){
		echo "Connection Fail".mysqli_connect_error();}}
if($progstud==$pg3 || $progstaff==$pg3 && $year!=$yr){
	define ("DB","feedbacketrx"); 
	$feeddbc=mysqli_connect("localhost", "root", "",DB);
	$atl=3;
	if(mysqli_connect_errno()){
		echo "Connection Fail".mysqli_connect_error();}}
  ?>