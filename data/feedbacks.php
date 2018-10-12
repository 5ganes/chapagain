<?php
class Feedbacks{
	function save($name, $address, $phone, $email, $subject, $comment){
		global $conn;
		$criteria = array();
		$sql = "INSERT INTO 
					feedbacks 
				SET 
					name = :name, address = :address, phone = :phone, email = :email, subject = :subject, comment = :comment, onDate = :onDate";
		$criteria['name'] = $name;
		$criteria['address'] = $address;
		$criteria['phone'] = $phone;
		$criteria['email'] = $email;
		$criteria['subject'] = $subject;
		$criteria['comment'] = $comment;
		$criteria['onDate'] = date('Y-m-d');
		$stmt = $conn->exec($sql, $criteria);
		return $conn->insertId();
	}	
	
	function delete($id){  
		global $conn;
		$sql = "DELETE FROM feedbacks WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
	}
	
	function getAll(){
		global $conn;	
		$sql = "SElECT * FROM feedbacks ORDER BY id DESC";
		$result = $conn->exec($sql);
		return $result;
	}

	function getById($id){
		global $conn;
		$sql = "SElECT * FROM feedbacks WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row;
	}
}
?>