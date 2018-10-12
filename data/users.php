<?php
class Users
{
 function validate($uname,$pswd)
 {
 	global $conn;
	$sql = "SELECT * FROM users u where md5(u.username) = :md5uname AND md5(u.password) = :md5pswd AND u.status = :status";
  	//echo $sql;
  	$criteria = array(
  		'md5uname' => md5($uname),
  		'md5pswd' => md5($pswd),
  		'status' => 'A'
  	);
  	$stmt = $conn -> exec($sql, $criteria);
  	$numRows = $conn -> numRows($stmt);
  	if($numRows)
  	{
   		$row = $conn -> fetchArray($stmt);
   		$_SESSION['sessUserId'] = $row['id'];
   		$_SESSION['sessUsername'] = $row['username'];
   		$_SESSION['sessLastLogin'] = $row['lastLogin'];
		return true;
  	}
  	else{
   		return false;
  	}
 }
 
 function validateUser($uname,$pswd){
 	global $conn;
  	$sql = "SELECT * FROM users WHERE username = :username AND password = :password";
  	//echo $sql;
  	$criteria = array(
  		'username' => 'admin',
  		'password' => $pswd
  	);
  	$stmt = $conn -> exec($sql, $criteria);
  	$numRows = $conn -> numRows($stmt);
  	if($numRows){
   		$row = $conn -> fetchArray($stmt);
   		$_SESSION['sessUserId'] = $row['id'];
   		$_SESSION['sessUsername'] = $row['username'];
   		$_SESSION['sessLastLogin'] = $row['lastLogin'];
   		return true;
  	}
  	else{
  	 	return false;
  	}
 }

 function updateLastLogin($id)
 {
 	global $conn;
	
  $sql = "UPDATE users SET lastLogin = :now WHERE id = :id";
  $criteria = array(
  		'now' => date('Y-m-d'),
  		'id' => $id
  );
  $stmt = $conn -> exec($sql, $criteria);
 }

 function updateLoginTimes($id){
 	global $conn;

 	$sql = "SELECT loginTimes FROM users WHERE id = :id";
 	$criteria = array(
  		'id' => $id
  	);
  	$stmt = $conn -> exec($sql, $criteria);
  	$loginTimesGet = $conn->fetchArray($stmt);

  	$sql = "UPDATE users SET loginTimes = :loginTimesPlusOne WHERE id = :id";
  	$criteria = array(
  		'loginTimesPlusOne' => $loginTimesGet['loginTimes'] + 1,
  		'id' => $id
  	);
  	$stmt = $conn -> exec($sql, $criteria);
 }

 function validatePassword($id,$pswd){
 	global $conn;
	
  $sql = "SELECT COUNT(*) cnt FROM users WHERE id = :id AND password = :pswd";
  //echo $sql;
  $criteria = array(
  	'id' => $id,
  	'pswd' => $pswd
  );
  $result = $conn -> exec($sql, $criteria);
  $row = $conn -> fetchArray($result);
  if($row['cnt'] > 0)
   return true;
  else
   return false;
 }

 function updatePassword($id,$pswd)
 {
 	global $conn;
	
  $sql = "UPDATE users SET password = :pswd WHERE id = :id";
  $criteria = array(
  	'id' => $id,
  	'pswd' => $pswd
  );

  $result = $conn -> exec($sql, $criteria);
  $affRows = $conn -> affRows();
  if($affRows)
   return true;
  else
   return false;
 }
 
 function getSubLastWeight()
 {
	global $conn;
	$sql = "SElECT max(weight) FROM usergroups";
	$result = $conn->exec($sql);
	$numRows = $conn -> numRows($result);
	if($numRows > 0)
	{
		$row = $conn->fetchArray($result);
		return $row['max(weight)'] + 10;
	}
	else
		return 10;	 
 }
 
 function saveUser($id, $name, $address, $email, $phone, $username, $password, $publish, $weight='')
	{
		global $conn;
		$id = cleanQuery($id);
		$name = cleanQuery($name);
		$address = cleanQuery($address);
		$username = cleanQuery($username);
		$password = cleanQuery($password);
		$email=cleanQuery($email);
		$phone=cleanQuery($phone);
		$publish=cleanQuery($publish);
		if($weight=='') $weight=$this->getSubLastWeight();
		if($id > 0)
		$sql = "UPDATE usergroups
						SET
							name = '$name',
							username = '$username',
							password = '$password',
							district = '$district',
							email = '$email',
							phone = '$phone',
							website = '$website',
							user_type = '$user_type',
							org_info='$org_info',
							publish='$publish',
							weight = '$weight'						
						WHERE
							id = '$id'";
		else
		$sql = "INSERT INTO usergroups 
					SET 
						name = '$name',
						address = '$address',
						username = '$username',
						password = '$password',
						email = '$email',
						phone='$phone',
						publish = '$publish',
						weight = '$weight',
						onDate = NOW()";
		//echo $sql; die();
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
		
		/*$ext = end(explode(".", $filename));
		$image = $id . "." . $ext;*/
		$image = $filename;
		
		copy($_FILES['image']['tmp_name'], "../". CMS_GROUPS_DIR . $image);
		
		$sql = "UPDATE usergroups SET image = '$image' WHERE id = '$id'";
		$conn->exec($sql);
	}
	
	function getById($id)
	{
		global $conn;
		// $id = cleanQuery($id);
		$sql = "SElECT * FROM usergroups WHERE id = :id";
		$criteria = array(
		  	'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
		return $stmt;
	}
	
	function deleteImage($id)
	{
		global $conn;
		
		$id = cleanQuery($id);
		$result = $this->getById($id);
		$row = $conn->fetchArray($result);
		$image = "../". CMS_GROUPS_DIR . $row['image'];
		
		if (file_exists($image))
			unlink($image);
		
		$sql = "UPDATE usergroups SET image = '' WHERE id = '$id'";
		$conn->exec($sql);
	}
	
	function delete($id)
	{  
		global $conn;
		
		$id = cleanQuery($id);
		
		$result = $this->getById($id);
		$row = $conn->fetchArray($result);
		
		$file = "../" . CMS_GROUPS_DIR . $row['image'];
		
		if (file_exists($file) && !empty($row['image']))
			unlink($file);
		
		$sql = "DELETE FROM usergroups WHERE id = '$id'";
		$conn->exec($sql);
	}
 	
	//for user type
	function getUserTypeById($id)
	{
		global $conn;
		// $id = cleanQuery($id);
		$sql = "SElECT * FROM usertype WHERE id = :id";
		$criteria = array(
		  	'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}
	
	function checkDuplicateUser($username){
		global $conn;
		$sql = "SELECT * FROM usergroups where username=:username";
	  	$criteria = array(
		  	'username' => $username
		);
	  	$result = $conn -> exec($sql, $criteria);
	  	$numRows = $conn -> numRows($result);
	  	if($numRows==1) return false;
	  	else return true;
	}

	function changeStatus($id){
		global $conn;
		$sql = "SELECT * FROM usergroups where id = :id";
		$criteria = array(
		  	'id' => $id
		);
	  	$result = $conn -> exec($sql, $criteria);
	  	$row = $conn -> fetchArray($result);
	  	if($row['publish']=='Yes') $publish = 'No'; else $publish = 'Yes';
	  	$sql = "update usergroups set publish=:publish where id=:id";
	  	$criteria = array(
		  	'id' => $id,
		  	'publish' => $publish
		);
	  	$result = $conn->exec($sql, $criteria);
	}
	
}
?>