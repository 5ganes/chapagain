<?php
	$pdo = new PDO("mysql:host=localhost;dbname=chapagain", 'student', 'student');
    // set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully"; 

	$sql = "SElECT * FROM groups WHERE type = :type AND parentId = :parentId ORDER BY weight";
	$criteria = [
		'type' => $type,
		'parentId' => $id
	];
	$stmt = $pdo->prepare($sql);
	$stmt->execute($criteria);
?>