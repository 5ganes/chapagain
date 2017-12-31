<?php
class Region{
	function saveOrUpdate($id=0, $name, $publish, $weight){
		global $conn;
		
		$id = cleanQuery($id);
		$name = cleanQuery($name);
		$publish = cleanQuery($publish);
		$weight = cleanQuery($weight);
		if($id > 0)
			$sql = "UPDATE region SET name = '$name', onDate = NOW(), publish = '$publish', weight = '$weight' WHERE id = '$id'";
		else
			$sql = "INSERT INTO region SET name = '$name', onDate = NOW(), publish = '$publish', weight = '$weight'";
		
		$conn->exec($sql);
		
		if($id > 0)
			return $conn -> affRows();
		return $conn->insertId();
	}
	
	function delete($id)
	{  
		global $conn;
		
		$id = cleanQuery($id);
	
		$sql = "DELETE FROM region WHERE id = '$id'";
		$conn->exec($sql);
	}
	
	function getAll(){
		global $conn;
		
		$sql = "SElECT * FROM region ORDER BY weight ASC";
		$result = $conn->exec($sql);
		
		return $result;
	}

	function getById($id){
		global $conn;
		
		$id = cleanQuery($id);
		
		$sql = "SElECT * FROM region WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		return $row;
	}
	
	function getTitle($id){
		global $conn;
		
		$id = cleanQuery($id);
		$sql = "SElECT name FROM region WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		
		return $row['title'];
	}

	function getLastWeight(){
		global $conn;
		$sql = "SElECT max(weight) FROM region";
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