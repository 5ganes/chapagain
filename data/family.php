<?php
class Family{
	function saveOrUpdate($id, $name, $fatherId, $motherId, $birthDate, $email, $phone, $maritalStatus, $gotraId, 
		$regionId, $gender, $publish, $weight){
		global $conn;
		
		$id = cleanQuery($id);
		$name = cleanQuery($name);
		$fatherId = cleanQuery($fatherId);
		$motherId = cleanQuery($motherId);
		// echo $motherId; die();
		$birthDate = cleanQuery($birthDate);
		$email = cleanQuery($email);
		$phone = cleanQuery($phone);
		$maritalStatus = cleanQuery($maritalStatus);
		$gotraId = cleanQuery($gotraId);
		$regionId = cleanQuery($regionId);
		$gender = cleanQuery($gender);
		$publish = cleanQuery($publish);
		$weight = cleanQuery($weight);
		
		if($id > 0){
					// echo $id; die();
					$sql = "UPDATE family
						SET
							name = '$name',
							fatherId = '$fatherId',
							motherId = '$motherId',
							birthDate='$birthDate',
							email = '$email',
							phone = '$phone',
							maritalStatus = '$maritalStatus',
							gotraId = '$gotraId',
							regionId = '$regionId',
							gender = '$gender',
							publish = '$publish',
							weight = '$weight'
						WHERE
							id = '$id'";
		}
		else{
					$sql = "INSERT INTO family 
						SET
							name = '$name',
							fatherId = '$fatherId',
							motherId = '$motherId',
							birthDate='$birthDate',
							email = '$email',
							phone = '$phone',
							maritalStatus = '$maritalStatus',
							gotraId = '$gotraId',
							regionId = '$regionId',
							gender = '$gender',
							publish = '$publish',
							weight = '$weight',
							onDate = NOW()";
		}
		
		$conn->exec($sql);
		if($id > 0)
			return $conn -> affRows();
		return $conn->insertId();
	}

	function saveImage($id)
	{
		global $conn;
		global $_FILES;
		
		if ($_FILES['image']['size'] <= 0)
			return;
		
		$id = cleanQuery($id);
		$filename = $_FILES['image']['name'];
		$image = $filename;
		copy($_FILES['image']['tmp_name'], "../". CMS_FAMILY_DIR . $image);
		
		$sql = "UPDATE family SET image = '$image' WHERE id = '$id'";
		// echo $sql; die();
		$conn->exec($sql);
	}

	function updateImage($id, $image)
	{
		global $conn;
		
		$id = cleanQuery($id);
		$image = cleanQuery($image);
		
		$sql = "UPDATE family SET image = '$image' WHERE id = '$id'";
		$conn->exec($sql);
	}
	
	function delete($id)
	{  
		global $conn;
		
		$id = cleanQuery($id);
		
		$result = $this->getById($id);
		$row = $conn->fetchArray($result);
		
		$file = "../" . CMS_FAMILY_DIR . $row['image'];
		
		if (file_exists($file) && !empty($row['image']))
			unlink($file);
		
		$sql = "DELETE FROM FAMILY WHERE id = '$id'";
		$conn->exec($sql);
	}
	
	function getAll(){
		global $conn;
		
		$sql = "SElECT * FROM family ORDER BY weight ASC";
		$result = $conn->exec($sql);
		
		return $result;
	}

	function getById($id){
		// echo $id; die();
		global $conn;
		
		$id = cleanQuery($id);
		
		$sql = "SElECT * FROM family WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		// print_r($row); die();
		return $row;
	}
	
	function getTitle($id){
		global $conn;
		
		$id = cleanQuery($id);
		$sql = "SElECT name FROM family WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		
		return $row['title'];
	}

	function getLastWeight(){
		global $conn;
		$sql = "SElECT max(weight) FROM family";
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