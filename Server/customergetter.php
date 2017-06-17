<?php 
	require "dbconnect.php";
 	$maxid = $_POST['maxid'];
//	$maxid=0;
	// $mysql_qry = "SELECT * FROM CustReg WHERE CustId > ".$maxid;
	//$mysql_qry = "SELECT * FROM CustReg,JarRate,ltrRate WHERE CustReg.CustID=JarRate.cmpid AND CustReg.CustID=ltrRate.Lcmpid AND CustReg.CustID > ".$maxid;
	$mysql_qry = "SELECT 
			CustReg.*,
	    		JarRate.rate,
	    		ltrRate.Lrate,
			COALESCE(jar.numberjar,0) AS NumberOfJar,
			COALESCE(rjar.numberjar,0) AS RNumberOfJar,
			COALESCE(jar.jaramt,0) AS AmountOfJar,
			COALESCE(rjar.jaramt,0) AS RAmountOfJar,
			COALESCE(trans.paidamt,0) AS Paidamt
		From JarRate,ltrRate,CustReg
		LEFT JOIN (SELECT CustId AS jarcustid,COALESCE(SUM(njars),0) AS numberjar,COALESCE(SUM(Amt),0) AS jaramt FROM jardeposit GROUP BY CustId) jar ON CustReg.CustId = jar.jarcustid
	    	LEFT JOIN (SELECT CustId AS jarcustid,COALESCE(SUM(njars),0) AS numberjar,COALESCE(SUM(Amt),0) AS jaramt FROM returndeposit GROUP BY CustId) rjar ON CustReg.CustId = rjar.jarcustid
	    	LEFT JOIN (SELECT CustId AS transcustid,COALESCE(SUM(PaidAmt),0) AS paidamt FROM Transaction GROUP BY CustId) trans ON CustReg.CustId = trans.transcustid
		WHERE CustReg.CustID=JarRate.cmpid AND CustReg.CustID=ltrRate.Lcmpid AND CustReg.CustID > ".$maxid."
		ORDER BY CustReg.CustID";
	$result = mysqli_query($conn,$mysql_qry);
	$rows = array();
	while ($r = mysqli_fetch_array($result)) {
		$rows[]=$r;
	}
	print json_encode($rows);
?>