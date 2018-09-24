<?php
class Family{
	function saveOrUpdate($id, $name, $fatherId, $motherId, $birthDate, $email, $phone, $maritalStatus, $gotraId, 
		$regionId, $gender, $publish, $weight){
		global $conn;
		// echo $id; die();
		
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
							-- fatherId = '$fatherId',
							-- motherId = '$motherId',
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
							-- fatherId = '$fatherId',
							-- motherId = '$motherId',
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
		if($id > 0){
			// $insertId = $conn -> affRows();
			$insertId = $id;
		}
		else{
			$insertId = $conn->insertId();
		}
		if($fatherId != '' && $motherId != '')
			$this->saveParents($insertId, $fatherId, $motherId);
		return $insertId;
	}

	function saveParents($memberId, $fatherId, $motherId){
		global $conn;
		// echo $memberId.', '.$fatherId.', '.$motherId; die();
		$sql = "SElECT * FROM rel_mother WHERE memberId = '$memberId'";
		$member = $conn->exec($sql);
		if($conn->numRows($member) > 0){
			$sqlf = "UPDATE rel_father
						SET
							fatherId = '$fatherId'
						WHERE
							memberId = '$memberId'
					";
			$sqlm = "UPDATE rel_mother
						SET
							motherId = '$motherId'
						WHERE
							memberId = '$memberId'
					";
		}
		else{
			$sqlf = "INSERT INTO rel_father 
						SET
							memberId = '$memberId',
							fatherId = '$fatherId'
					";
			$sqlm = "INSERT INTO rel_mother 
						SET
							memberId = '$memberId',
							motherId = '$motherId'
					";
		}
		$conn->exec($sqlf);
		$conn->exec($sqlm);
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

	function getAllMales(){
		global $conn;
		
		$sql = "SElECT * FROM family where gender = 'Male' AND maritalStatus = 'Married' ORDER BY weight ASC";
		$result = $conn->exec($sql);
		
		return $result;
	}

	function getAllFemales(){
		global $conn;
		
		$sql = "SElECT * FROM family where gender = 'Female' AND maritalStatus = 'Married' ORDER BY weight ASC";
		$result = $conn->exec($sql);
		
		return $result;
	}

	function getById($id){
		// echo $id; die();
		global $conn;
		
		$id = cleanQuery($id);
		
		$sql = "SELECT * FROM family WHERE id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		// print_r($row); die();
		return $row;
	}

	function getMemberById($id){
		global $conn;
		$id = cleanQuery($id);
		$sql = "SELECT 
					f1.id as id, 
					f1.name as name, 
					f1.birthDate as birthDate, 
					f1.email as email, 
					f1.phone as phone, 
					f1.maritalStatus as maritalStatus, 
					f1.gotraId as gotraId, 
					f1.regionId as regionId, 
					f1.gender as gender, 
					f1.image as image, 
					f1.publish as publish, 
					f1.onDate as onDate, 
					f1.weight as weight, 
					f2.id as fatherId, 
					f2.name as fatherName, 
					f3.id as motherId, 
					f3.name as motherName 
				FROM 
					family as f1 
				LEFT JOIN 
					rel_father as rf on f1.id = rf.memberId
				LEFT JOIN 
					family as f2 on rf.fatherId = f2.id
				LEFT JOIN 
					rel_mother as rm on f1.id = rm.memberId
				LEFT JOIN
					 family as f3 on rm.motherId = f3.id
				WHERE 
					f1.id = '$id'";
		$result = $conn->exec($sql);
		$row = $conn -> fetchArray($result);
		// print_r($row); die();
		return $row;
	}

	function getMemberCountByGotra($gotraId){
		// echo $id; die();
		global $conn;
		
		$id = cleanQuery($id);
		
		$sql = "SElECT * FROM family WHERE gotraId = '$gotraId'";
		$result = $conn->exec($sql);
		return $conn->numRows($result);
	}

	function getMemberCountByRegion($regionId){
		// echo $id; die();
		global $conn;
		
		$id = cleanQuery($id);
		
		$sql = "SElECT * FROM family WHERE regionId = '$regionId'";
		$result = $conn->exec($sql);
		return $conn->numRows($result);
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

	function getFirstParents(){
		global $conn;
		$sql = "SElECT name FROM family WHERE id IN(1, 7)";
		$result = $conn->exec($sql);
		return $result;
		// print_r($result); die();
	}
}