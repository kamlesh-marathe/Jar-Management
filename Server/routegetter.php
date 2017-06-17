<?php 
	require "dbconnect.php";
	$user_name = $_POST['username'];
	$user_pass = $_POST['password'];
	$mysql_qry = "SELECT * FROM Route";
	$result = mysqli_query($conn,$mysql_qry);
	// $chk = mysqli_fetch_array($result);
	$rows = array();
	while ($r = mysqli_fetch_array($result)) {
		$rows[]=$r;
	}
	print json_encode($rows);
	// while ($chk = mysqli_fetch_array($result))
	// {
	// 	echo "\nName ".$chk['RouteName'];
	// 	echo "Desc ".$chk['RouteDescription'];
	// }

	// echo "{";
	// echo "    \"Name\":\"John\",";
	// echo "    \"Desc\":\"Hello\"";
	// echo "}";
	// // if (isset($chk))
	// {
	// 	echo "User_Found";
	// }
	// else
	// {
	// 	echo "User_Not_Found";
	// }
?>