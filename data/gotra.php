<?php
class Gotra{
	function saveOrUpdate($id=0, $name, $publish, $weight){
		global $conn;
		
		$id = cleanQuery($id);
		$name = cleanQuery($name);
		$publish = cleanQuery($publish);
		$weight = cleanQuery($weight);
		if($id > 0)
			$sql = "UPDATE gotra SET name = '$name', onDate = NOW(), publish = '$publish', weight = '$weight' WHERE id = '$id'";
		else
			$sql = "INSERT INTO gotra SET name = '$name', onDate = NOW(), publish = '$publish', weight = '$weight'";
		
		$conn->exec($sql);
		
		if($id > 0)
			return $conn -> affRows();
		return $conn->insertId();
	}
	
	function delete($id)
	{  
		global $conn;
		global $family;
		
		$id = cleanQuery($id);
		
		//get members if exist
		if($family->getMemberCountByGotra($id) > 0){
			$msg = 'Gotra can not be deleted because there are members under it.';
		}
		else{
			$sql = "DELETE FROM gotra WHERE id = '$id'";
			$conn->exec($sql);
			$msg = 'Gotra deleted successfully';
		}
		return $msg;
	}
	
	function getAll(){
		global $conn;
		
		$sql = "SElECT * FROM gotra ORDER BY weight ASC";
		$result = $conn->exec($sql);
		
		return $result;
	}

	function getById($id){
		global $conn;
		
		$id = cleanQuery($id);
		
		$sql = "SElECT * FROM gotra WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		return $row;
	}
	
	function getTitle($id){
		global $conn;
		
		$id = cleanQuery($id);
		$sql = "SElECT name FROM gotra WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		
		return $row['title'];
	}

	function getLastWeight(){
		global $conn;
		$sql = "SElECT max(weight) FROM gotra";
		$result = $conn->exec($sql);
		$numRows = $conn -> numRows($result);
		if($numRows > 0){
			$row = $conn->fetchArray($result);
			return $row['max(weight)'] + 10;
		}
		else
			return 10;
	}
}