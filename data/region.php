<?php
class Region{
	function saveOrUpdate($id=0, $name, $publish, $weight){
		global $conn;
		
		$criteria = array();
		if($id > 0){
			$sql = "UPDATE 
						region 
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
						region 
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
		if($family->getMemberCountByRegion($id) > 0){
			$msg = 'Region can not be deleted because there are members under it.';
		}
		else{
			$sql = "DELETE FROM region WHERE id = :id";
			$criteria = array(
				'id' => $id
			);
			$stmt = $conn->exec($sql, $criteria);
			$msg = 'Region deleted successfully';
		}
		return $msg;
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
		
		$sql = "SElECT * FROM region WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row;
	}
	
	function getTitle($id){
		global $conn;
		
		$id = cleanQuery($id);
		$sql = "SElECT name FROM region WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row['title'];
	}

	function getLastWeight(){
		global $conn;
		$sql = "SElECT max(weight) as maxwt FROM region";
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