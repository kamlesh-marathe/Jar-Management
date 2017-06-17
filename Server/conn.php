<?php 

	$servername = "localhost";
	$username = "root";
	$password = "root";

	$conn = new mysqli($servername, $username, $password);

	if ($conn->connect_error) {
		echo "Connection failed";
	    die("Connection failed: " . $conn->connect_error);
	} 
	else 
		echo "Connection Established";	
?>