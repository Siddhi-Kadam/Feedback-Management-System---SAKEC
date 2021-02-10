<?php
    include('question.php');
    include('connectivity.php');
    
    $sql = "select * from subject_table where div_id in (select div_id from intake where sem_id in (select sem_id from division_details,feedback where division_details.std_id=feedback.std_id)) limit 1";
   
    $result = mysqli_query($db,$sql);
?>
<!DOCTYPE html>
<html>
    <head>
	    <style>
        body, html {
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }
        * {
        box-sizing: border-box;
        }
        .btn{
            padding: 15px 25px;
            border: none;
            background-color: #27ae60;
            color: #fff;
        }
        .btn:hover {
            opacity: 1;
        }
        table { 
            display: table;
            border-collapse: separate;
            border-spacing: 2px;
            border-color: gray;
        }
        </style>
    </head>
    <body> 
    <center>
	    <h1>FACULTY FEEDBACK</h1></center>
        <form name="4" method="POST">
            <?php
                if (mysqli_num_rows($result) > 0) 
                {
            ?>
            <table border="1" cellpadding="5" cellspacing="5" align="center">
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>

    <tr>
        <th rowspan="3">Questions</th>
        <th colspan="4">
            <?php echo $row["subject_name"]; 
              $i++;}}?>
        </th>
    </tr>
	<tr>
		
		<th colspan="2">THEORY</th>
        <th colspan="2">PRACTICAL</th>
	</tr>
    
		<th>1</th>
        <th>2</th>
        <th>1</th>
        <th>2</th>
	<tr>
    </tr>
    <?php
        for($j=1;$j<=10;$j++)
        {
            $n=1;
        ?>
    <tr>

        <td>
         <?php   
           echo $question[$j]; 
           ?>
        </td>
		<td><?php
            echo "<input type='radio' name='Q$j$n' value='a' required>4";
            echo "<input type='radio' name='Q$j$n' value='b' required>3";
            echo "<input type='radio' name='Q$j$n' value='c' required>2";
            echo "<input type='radio' name='Q$j$n' value='d' required>1";
            $n++;
            ?>
        </td>
		<td><?php
            echo "<input type='radio' name='Q$j$n' value='a' required>4";
            echo "<input type='radio' name='Q$j$n' value='b' required>3";
            echo "<input type='radio' name='Q$j$n' value='c' required>2";
            echo "<input type='radio' name='Q$j$n' value='d' required>1";
            $n++;
            ?>
        </td>
		<td><?php
            echo "<input type='radio' name='Q$j$n' value='a' required>4";
            echo "<input type='radio' name='Q$j$n' value='b' required>3";
            echo "<input type='radio' name='Q$j$n' value='c' required>2";
            echo "<input type='radio' name='Q$j$n' value='d' required>1";
            $n++;
            ?>
        </td>
		<td><?php
            echo "<input type='radio' name='Q$j$n' value='a' required>4";
            echo "<input type='radio' name='Q$j$n' value='b' required>3";
            echo "<input type='radio' name='Q$j$n' value='c' required>2";
            echo "<input type='radio' name='Q$j$n' value='d' required>1";
            $n++;
            ?>
        </td>
        </tr>
        <?php
            }
        ?>
    
</table>

</form>
<form name="n">
    <br><center>
    <button type="submit" class="btn" name="Submit" formaction="log2.php">Next</button></center>
</form>
</body>
</html>