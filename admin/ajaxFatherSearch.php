<?php
	$host = "localhost";
	$uname = "student"; 		
	$psw = "student";					
	$dbname = "chapagain";

	mysql_connect($host, $uname, $psw);
	mysql_select_db($dbname);

	$key = $_POST['keyword'];

	if($key == '') die('<p>No records found</p>');
	if($key == '-') die();

	$sql = "SELECT 
				family.id as id, 
				family.name as name, 
				region.name as regionName 
			FROM 
				family join region on family.regionId = region.id 
			WHERE (family.name LIKE '%$key%' OR family.id LIKE '%$key%') AND family.gender = 'Male'";
	$result = mysql_query($sql);
	if(mysql_num_rows($result) > 0){
		while ($row = mysql_fetch_array($result)) {
			echo '<a onClick="selectRow(\''.$row['name'].'\', \''.$row['id'].'\', \''.$row['regionName'].'\')">'.$row['name'].' ( ID : '. $row['id'] .' )( ' . $row['regionName'] . ' )</a>';
		}
	}
	else{
		echo '<p>No records found</p>';
	}
?>