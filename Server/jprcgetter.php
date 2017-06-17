<?php 
	require "dbconnect.php";
	$cid = $_POST['cid'];
	$mysql_qry = "SELECT * FROM JarRate WHERE cmpid = ".$cid;
	$result = mysqli_query($conn,$mysql_qry);
	while ($r = mysqli_fetch_array($result)) {
		echo $r['rate'];
	}
	
?>