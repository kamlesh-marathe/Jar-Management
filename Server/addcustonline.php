<?php 
	require "dbconnect.php";
	$name = $_POST['name'];
	$compname = $_POST['compname'];
	$email = $_POST['email'];
	$mob = $_POST['mob'];
	$address = $_POST['address'];
	$routeid = $_POST['routeid'];
	$bprc = $_POST['bprc'];
	$jprc = $_POST['jprc'];
	$Date = date('d-m-Y h:i:s',time());
	$Dateind = date('Y-m-d h:i:s', strtotime($Date));
	$date1 = date('Y-m-d',  strtotime($ab1));

	$result = mysqli_query($conn,"SELECT Max(CustID) FROM CustReg");
	$id=0;
	while($row = mysqli_fetch_array($result))
	{
		$id=$row[0];
	}
	$id=$id+1;
			
	$sql="INSERT INTO CustReg (CustID,ComName,CustName,Address,date,RouteId,CustTypeId,email,phone,mobile) VALUES ('$id','$_POST[name]','$_POST[compname]','$_POST[address]','$Dateind','".$_POST[routeid]."','1','$_POST[email]','$_POST[mob]','$_POST[mob]')";

	if (!mysqli_query($conn,$sql))
	{
		echo "Not_Inserted";
	}
	else
	{
		$sql3="INSERT INTO ltrRate(Lcmpid,LRdate,Lrate) VALUES ('$id','$date1','$bprc')";
		if (!mysqli_query($conn,$sql3))
		{
			echo "Not_Inserted";
		}
		else
		{
			$sql3="INSERT INTO JarRate(cmpid,Rdate,rate) VALUES ('$id','$date1','$jprc')";
			if (!mysqli_query($conn,$sql3))
			{
				echo "Not_Inserted";		  
			}
			else
				echo $id;
		}
	}	
?>