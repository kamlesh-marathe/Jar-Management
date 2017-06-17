<?php


	require "dbconnect.php";
	$cid = mysqli_escape_string($conn,$_POST['cid']);
	// $cid = $_POST['cid'];
	$bdate = $_POST['bdate'];
	// $Date = date('d-m-Y h:i:s',time());
	$Dateind = date('Y-m-d h:i:s', strtotime($bdate));

	$sql="INSERT INTO `jardeposit`(`CustId`, `jdate`, `Njars`, `Amt`) VALUES ('".$_POST[cid]."','".$Dateind."','".$_POST[Njars]."','".$_POST[Amount]."')";

	if (!mysqli_query($conn,$sql))
	{
		echo "Not_Inserted";
	}
	else
	{
		echo "Inserted";
	}
?>