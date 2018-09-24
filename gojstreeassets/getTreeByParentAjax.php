<?php
	if(isset($_POST['parentId'])){ 
		mysql_connect('localhost', 'student', 'student');
		mysql_select_db('chapagain');

	 	$parentId = $_POST['parentId'];
	 	$key = 1;

	 	function findTree($parentDBId, $tree, $parent){
	 		// die('sdf');
		  //{ key: 0, name: "George V", gender: "M", birthYear: "1865", deathYear: "1936", reign: "1910-1936" },
		      $sql ="SELECT 
		            f1.id as id, 
		            f1.name as name, 
		            f1.gender as gender,
		            f1.birthDate as birthDate,
		            f1.maritalStatus as maritalStatus,
		            -- f2.name as fatherName,
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
		              rf.fatherId  = '$parentDBId'";
		      
		      $cnt = mysql_query($sql);
		      if(mysql_num_rows($cnt) > 0){
		          while($res = mysql_fetch_array($cnt)){
		            global $key;
		            $keyBackup = $key;
		            $tree[] = '{ key: '. $key++ .', parent: ' . $parent .', name: "'. $res['name'] .'", gender: "'. substr($res['gender'], 0, 1) .'", motherName: "'. $res['motherName'] .'", bornDate: "'. $res['birthDate'] .'", maritalStatus: "'. $res['maritalStatus'] .'" }';
		            if($res['gender'] == 'Male'){
		              $parentDBId = $res['id'];
		                $tree = findTree($parentDBId, $tree, $keyBackup);
		                //$key = $key++;
		            }
		          }
		      }
		      return $tree;
		  }
		  $tree = ['{ key: ' . $parentId .', name: "Haridas", gender: "M", motherName: "", bornDate: "1936", maritalStatus: "Married" }'];
		  $tree = findTree($parentId, $tree, 0); // findTree(parentIdDB, $treeArray, parentNodePosition);
		  $treeString = implode(', ', $tree);
		  echo json_encode($treeString);
	}
?>