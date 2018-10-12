<?php
class Gotra{
	function saveOrUpdate($id=0, $name, $publish, $weight){
		global $conn;
		$criteria = array();
		if($id > 0){
			$sql = "UPDATE 
						gotra 
					SET 
						name = :name,  
						publish = :publish, 
						weight = :weight 
					WHERE 
					id = :id";
			$criteria['id'] = $id;
		}
		else{
			$sql = "INSERT INTO 
						gotra 
					SET 
						name = :name, 
						publish = :publish, 
						weight = :weight,
						onDate = :onDate";
			$criteria['onDate'] = date('Y-m-d');
		}
		$criteria['name'] = $name;
		$criteria['publish'] = $publish;
		$criteria['weight'] = $weight;
		
		$stmt = $conn->exec($sql, $criteria);
		
		if($id > 0)
			return $conn -> affRows($stmt);
		return $conn->insertId();
	}
	
	function delete($id)
	{  
		global $conn;
		global $family;
		
		//get members if exist
		if($family->getMemberCountByGotra($id) > 0){
			$msg = 'Gotra can not be deleted because there are members under it.';
		}
		else{
			$sql = "DELETE FROM gotra WHERE id = :id";
			$criteria = array(
				'id' => $id
			);
			$stmt = $conn->exec($sql, $criteria);
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
		
		$sql = "SElECT * FROM gotra WHERE id = :id";
		$criteria = array(
				'id' => $id
			);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row;
	}
	
	function getTitle($id){
		global $conn;
	
		$sql = "SElECT name FROM gotra WHERE id = :id";
		$criteria = array(
				'id' => $id
			);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row['title'];
	}

	function getLastWeight(){
		global $conn;
		$sql = "SElECT max(weight) as maxwt FROM gotra";
		$result = $conn->exec($sql);
		$numRows = $conn -> numRows($result);
		if($numRows > 0){
			$row = $conn->fetchArray($result);
			return $row['maxwt'] + 10;
		}
		else
			return 10;
	}
}