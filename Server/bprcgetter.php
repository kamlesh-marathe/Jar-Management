<?php 
	require "dbconnect.php";
	$cid = $_POST['cid'];
	$mysql_qry = "SELECT * FROM ltrRate WHERE Lcmpid = ".$cid;
	$result = mysqli_query($conn,$mysql_qry);
	while ($r = mysqli_fetch_array($result)) {
		echo $r['Lrate'];
	}
	
?>