<?php 

	$servername = "localhost";
	$username = "root";
	$password = "root";
	$dbname = "vijaynee_jardemo";

	$conn = mysqli_connect($servername,$username,$password,$dbname);

	if ($conn)
	{
		// echo "Connection_Established";
	}
	else
	{
		echo "No_Connection";
	
	}
?>