<?php
session_start();
 require_once('php/connect.php');

     $uid = $_SESSION['uid'];

//$query ="select * from user where email = '$uid'" ;

$query ="select * from user";
$result=mysqli_query($con,$query);

/*echo "
<table border='1'>
<tr>
<th>First Name</th>
</tr>";*/
?>
 
<form method="post" action="">
<select name="email">
<?php while($row = mysqli_fetch_array($result))
  { ?>
	<option value="<?php echo $row['email']; ?>">
	
		<?php 
  			echo  $row['fname'];
    	?>
    </option>
<?php }   ?>
</select>
<input type="submit" value="Share" name="share"></input>
</form>
 


<?php 
	
	require_once("php/connect.php");
	
	$uid = $_SESSION['uid'];
	$e = $_GET['sharecontact'];

# Extract Form values
	if(isset($_POST['share'])){
	$email = $_POST['email'];
	
  $queryupdate = "update contact set  emailfk='$email' where contactid = $e";
		mysqli_query($con,$queryupdate);

	mysqli_close($con);

	echo"ok";
}
?>