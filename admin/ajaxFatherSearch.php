<?php
	require '../data/conn.php';
	$conn = new Dbconn();
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
	$result = $conn->exec($sql);
	if($conn->numRows($result) > 0){
		while ($row = $conn->fetchArray($result)) {
			echo '<a onClick="selectRow(\''.$row['name'].'\', \''.$row['id'].'\', \''.$row['regionName'].'\')">'.$row['name'].' ( ID : '. $row['id'] .' )( ' . $row['regionName'] . ' )</a>';
		}
	}
	else{
		echo '<p>No records found</p>';
	}
?>