<?php 
	require "dbconnect.php";
	$user_name = $_POST['username'];
	$user_pass = $_POST['password'];
	$mysql_qry = "SELECT * FROM Login WHERE username = '$user_name' AND pass = '$user_pass'";
	$result = mysqli_query($conn,$mysql_qry);
	$chk = mysqli_fetch_array($result);
	// while ($chk = mysqli_fetch_array($result))
	// {
	// 	echo "User ".$chk['username'];
	// 	echo "<br />";
	// }
	if (isset($chk))
	{
		echo "User_Found";
	}
	else
	{
		echo "User_Not_Found";
	}
?>