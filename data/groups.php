<?php
class Groups
{
	function save($id, $name, $nameen, $urlname, $type, $parentId, $linkType, $shortcontents, $shortcontentsen, $contents, $contentsen, $weight, $pageTitle, $pageKeyword, $featured, $display)
	{
		global $conn; $criteria = array();
		if($id > 0){
			$sql = "UPDATE groups
						SET
							name = :name,
							nameen = :nameen,
							urlname = :urlname,
							parentId=:parentId,
							shortcontents = :shortcontents,
							contents = :contents,
							shortcontentsen = :shortcontentsen,
							contentsen = :contentsen,
							weight = :weight,
							pageTitle = :pageTitle,
							pageKeyword = :pageKeyword,
							featured = :featured,
							display = :display
						WHERE
							id = :id";
			$criteria['id'] = $id;
		}
		else{
			$sql = "INSERT INTO groups 
						SET
							name = :name,
							nameen = :nameen,
							urlname = :urlname,
							type = :type,
							parentId = :parentId,
							linkType = :linkType,
							shortcontents = :shortcontents,
							contents = :contents,
							shortcontentsen = :shortcontentsen,
							contentsen = :contentsen,
							weight = :weight,
							pageTitle = :pageTitle,
							pageKeyword = :pageKeyword,
							featured = :featured,
							display = :display,
							onDate = :onDate";
			$criteria['type'] = $type;
			$criteria['linkType'] = $linkType;
			$criteria['onDate'] = date('Y-m-d');
		}
		
		$criteria['name'] = $name;
		$criteria['nameen'] = $nameen;
		$criteria['urlname'] = $urlname;
		$criteria['parentId'] = $parentId;
		$criteria['shortcontents'] = $shortcontents;
		$criteria['contents'] = $contents;
		$criteria['shortcontentsen'] = $shortcontentsen;
		$criteria['contentsen'] = $contentsen;
		$criteria['weight'] = $weight;
		$criteria['pageTitle'] = $pageTitle;
		$criteria['pageKeyword'] = $pageKeyword;
		$criteria['featured'] = $featured;
		$criteria['display'] = $display; 
		// echo '<pre>'; print_r($criteria); die();
		$stmt = $conn->exec($sql, $criteria);
		if($id > 0)
			return $conn -> affRows($stmt);
		// die($conn->insertId());
		return $conn->insertId();
	}
		
	function saveListSub($id, $name, $urlname, $parentId, $shortcontents, $contents, $featured, $weight, $pageTitle, $pageKeyword)
	{
		global $conn; $criteria = array();
		if($id > 0){
			$sql = "UPDATE groups
						SET
							name = :name,
							urlname = :urlname,
							parentId = :parentId,
							shortcontents = :shortcontents,
							contents = :contents,
							featured = :featured,
							weight = :weight,
							pageTitle = :pageTitle,
							pageKeyword = :pageKeyword
						WHERE
							id = :id";
			$criteria['id'] = $id;
		}
		else{
			$sql = "INSERT INTO groups 
						SET
							name = :name,
							urlname = :urlname,
							parentId=:parentId,
							linkType = :linkType,
							shortcontents = :shortcontents,
							contents = :contents,
							featured = :featured,
							weight = :weight,
							pageTitle = :pageTitle,
							pageKeyword = :pageKeyword,
							onDate = :onDate";
			$criteria['linkType'] = 'ListSub';
			$criteria['onDate'] = date('Y-m-d');
		}

		$criteria['name'] = $name;
		$criteria['urlname'] = $urlname;
		$criteria['parentId'] = $parentId;
		$criteria['shortcontents'] = $shortcontents;
		$criteria['contents'] = $contents;
		$criteria['featured'] = $featured;
		$criteria['weight'] = $weight;
		$criteria['pageTitle'] = $pageTitle;
		$criteria['pageKeyword'] = $pageKeyword;
		
		$stmt = $conn->exec($sql, $criteria);
		if($id > 0)
			return $conn -> affRows($stmt);
		return $conn->insertId();
	}
	
	
	function saveGallerySub($id, $parentId, $shortcontents){
		global $conn; $criteria = array();
		
		if($id > 0){
			$sql = "UPDATE groups
						SET
							shortcontents = :shortcontents
						WHERE
							id = :id";
			$criteria['id'] = $id;
		}
		else{
			$sql = "INSERT INTO groups 
						SET
							parentId = :parentId,
							linkType = :linkType,
							shortcontents = :shortcontents,
							onDate = :onDate";
			$criteria['parentId'] = $parentId;
			$criteria['linkType'] = 'GallerySub';
			$criteria['onDate'] = date('Y-m-d');
		}
		$criteria['shortcontents'] = $shortcontents;

		$stmt = $conn->exec($sql, $criteria);
		if($id > 0)
			return $conn -> affRows($stmt);
		return $conn->insertId();
	}
	
	function saveVideoSub($id, $parentId, $contents){
		global $conn; $criteria = array();
		
		if($id > 0){
			$sql = "UPDATE groups
						SET
							contents = :contents
						WHERE
							id = '$id'";
			$criteria['id'] = $id;
		}
		else{
			$sql = "INSERT INTO groups 
						SET
							parentId = :parentId,
							linkType = :linkType,
							contents = :contents,
							onDate = :onDate";
			$criteria['parentId'] = $parentId;
			$criteria['linkType'] = 'VideoSub';
			$criteria['onDate'] = date('Y-m-d');
		}
		$criteria['contents'] = $contents;

		$stmt = $conn->exec($sql, $criteria);
		if($id > 0)
			return $conn -> affRows($stmt);
		return $conn->insertId();
	}
	
	function getByLinkType($linkType){
		global $conn;
		$sql = "SElECT * FROM groups WHERE linkType = :linkType ORDER BY weight";
		$criteria = array(
			'linkType' => $linkType
		);
		$stmt = $conn->exec($sql, $criteria);
		return $stmt;	
	
	}
	
	// function saveBlock($id, $name, $urlname, $weight, $pageTitle, $pageKeyword)
	// {
	// 	global $conn;
		
	// 	$id = cleanQuery($id);
	// 	$name = cleanQuery($name);
	// 	$urlname = cleanQuery($urlname);
	// 	$weight = cleanQuery($weight);
	// 	$pageTitle = cleanQuery($pageTitle);
	// 	$pageKeyword = cleanQuery($pageKeyword);
		
	// 	if($id > 0)
	// 	$sql = "UPDATE groups
	// 					SET
	// 						name = '$name',
	// 						urlname = '$urlname',
	// 						weight = '$weight',
	// 						pageTitle = '$pageTitle',
	// 						pageKeyword = '$pageKeyword'
	// 					WHERE
	// 						id = '$id'";
	// 	else
	// 	$sql = "INSERT INTO groups 
	// 					SET
	// 						name = '$name',
	// 						urlname = '$urlname',
	// 						linkType = 'Block',
	// 						weight = '$weight',
	// 						pageTitle = '$pageTitle',
	// 						pageKeyword = '$pageKeyword',
	// 						onDate = NOW()";
		
	// 	$conn->exec($sql);
	// 	if($id > 0)
	// 		return $conn -> affRows();
	// 	return $conn->insertId();
	// }
	
	function saveImage($id){
		global $conn;
		global $_FILES;
		
		if ($_FILES['image']['size'] <= 0)
			return;
		
		// $id = cleanQuery($id);
		$filename = $_FILES['image']['name'];
		
		/*$ext = end(explode(".", $filename));
		$image = $id . "." . $ext;*/
		$image = $filename;
		
		copy($_FILES['image']['tmp_name'], "../". CMS_GROUPS_DIR . $image);
		
		$sql = "UPDATE groups SET image = :image WHERE id = :id";
		$criteria = array(
			'image' => $image,
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
	}
	
	function updateImage($id, $image){
		global $conn;
		
		$sql = "UPDATE groups SET image = :image WHERE id = :id";
		$criteria = array(
			'image' => $image,
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
	}
	
	function updateUrlName($id){
		global $conn;
		
		$sql = "UPDATE groups SET urlname = :urlname WHERE id = :id";
		$criteria = array(
			'urlname' => $id,
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
	}
	
	function deleteImage($id){
		global $conn;
		
		// $id = cleanQuery($id);
		$stmt = $this->getById($id);
		$row = $conn->fetchArray($stmt);
		$image = "../". CMS_GROUPS_DIR . $row['image'];
		
		if (file_exists($image))
			unlink($image);
		
		$sql = "UPDATE groups SET image = :blank WHERE id = id";
		$criteria = array(
			'blank' => '',
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
	}

	function getById($id){
		global $conn;

		// $id = cleanQuery($id);

		$sql = "SElECT * FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
		
		return $stmt;
	}

	function getByIdResult($id){
		global $conn;

		// $id = cleanQuery($id);

		$sql = "SElECT * FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$row = $conn->fetchArray($conn->exec($sql, $criteria));
		
		return $row;
	}
		
	function getByParentId($parentId){
		global $conn;
		
		// $parentId = cleanQuery($parentId);
		
		$sql = "SElECT * FROM groups WHERE parentId = :parentId ORDER BY weight";
		$criteria = array(
			'parentId' => $parentId
		);
		$stmt = $conn->exec($sql, $criteria);
		
		return $stmt;
	}

	function getByParentIdWithOrder($parentId, $order){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE parentId = :parentId ORDER BY id :order";
		$criteria = array(
			'parentId' => $parentId,
			'order' => $order
		);
		$stmt = $conn->exec($sql, $criteria);
		
		return $stmt;
	}
	
	function getByParentIdAndType($id, $type){
		global $conn;
		
		// $id = cleanQuery($id);
		// $type = cleanQuery($type);
		
		$sql = "SElECT * FROM groups WHERE type = :type AND parentId = :parentId ORDER BY weight";
		$criteria = array(
			'type' => $type,
			'parentId' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
		
		return $stmt;
	}
	
	function getByParentIdAndLinkType($id, $linkType){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE linkType = :linkType AND parentId = :parentId ORDER BY weight";
		$criteria = array(
			'linkType' => $linkType,
			'parentId' => $id
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}
	
	function getByLinkTypeAndFeaturedWithLimit($linkType, $featured, $limit){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE linkType=:linkType and featured=:featured ORDER BY weight limit :limit";
		$criteria = array(
			'linkType' => $linkType,
			'featured' => $featured,
			'limit' => $limit
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}
	
	function delete($id){  
		global $conn;
		
		// $id = cleanQuery($id);
		
		$result = $this->getById($id);
		$row = $conn->fetchArray($result);
		
		$file = "../" . CMS_GROUPS_DIR . $row['image'];
		
		if (file_exists($file) && !empty($row['image']))
			unlink($file);
	
		if ($row['linkType'] == "File")
		{
			$file = "../" . CMS_FILES_DIR . $row['contents'];
			
			if (file_exists($file) && !empty($row['contents']))
				unlink($file);
		}
		else if ($row['linkType'] == "List")
		{
			$lResult = $this -> getByParentId($id);
			while ($lRow = $conn->fetchArray($lResult))
				$this->delete($lRow['id']);
		}
		else if ($row['linkType'] == "Gallery")
		{
			$gResult = $this->getByParentId($id);
			while ($gRow = $conn->fetchArray($gResult))
				$this->delete($gRow['id']);
		}
		else if ($row['linkType'] == "Video Gallery")
		{
			$gResult = $this->getByParentId($id);
			while ($gRow = $conn->fetchArray($gResult))
				$this->delete($gRow['id']);
		}
		
		$sql = "DELETE FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$stmt = $conn->exec($sql, $criteria);
	}	
	
	function getByParentIdWithLimit($parentId, $limit){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE parentId = :parentId ORDER BY weight LIMIT $limit";
		$criteria = array(
			'parentId' => $parentId
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}

	function getByParentIdWithOrderWithLimit($parentId, $orderby, $order, $limit){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE parentId = :parentId ORDER BY :orderby :order LIMIT :limit";
		$criteria = array(
			'parentId' => $parentId,
			'orderby' => $orderby,
			'order' => $order,
			'limit' => $limit
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}
		
	function getByParentIdAndTypeWithLimit($type, $parentId, $limit){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE parentId = :parentId AND type = :type ORDER BY weight LIMIT :limit";
		$criteria = array(
			'parentId' => $parentId,
			'type' => $type,
			'limit' => $limit
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}	
	
	function getByType($type){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE type = :type ORDER BY weight";
		$criteria = array(
			'type' => $type
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}
	
	function getNameById($id){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		$row = $conn->fetchArray($result);
		return $row['name'];
	}

	function comboRecursion($parentId, $selectedId, $times){
		// die("<option>$parentId, $selectedId, $times</option>");
		global $conn; $criteria = array();

		if (is_numeric($parentId)){
			$sql = "SELECT * FROM groups WHERE parentId = :parentId ORDER BY weight";
			$criteria['parentId'] = $parentId;
		}
		else{
			$sql = "SELECT * FROM groups WHERE parentId = :parentId AND type = :type ORDER BY weight";
			$criteria['parentId'] = 0;
			$criteria['type'] = $parentId;
		}
		// print_r($criteria); die();
		$result = $conn->exec($sql, $criteria);
		// print_r($result); die();
		while ($row = $conn->fetchArray($result))
		{
			$spaces = $this->spaces($times);
			if ($row['linkType'] != "Normal Group")
			{
				echo "<optgroup label='". $row['name'] ."'";
			}
			else
			{
				echo "<option value='".$row['id']."'";
				if ($row['id'] == $selectedId)
					echo " selected ";
			}
			echo ">";
			echo $spaces . $row['name'];
			if ($row['linkType'] != "Normal Group")
				echo "</optgroup>";
			else
				echo "</option>";
			$this->comboRecursion((int) $row['id'], $selectedId, ++$times);
			
			--$times;
		}
	}
	
	// function comboRecursionTravel($parentId, $selectedId, $times)
	// {
	// 	global $conn;	
		
	// 	if (is_numeric($parentId))
	// 		$sql = "SELECT * FROM groups WHERE parentId = '$parentId' ORDER BY weight";
	// 	else
	// 		$sql = "SELECT * FROM groups WHERE parentId = '0' AND linkType = '$parentId' ORDER BY weight";
	// echo $sql;		
	// 	$result = $conn->exec($sql);
		
	// 	while ($row = $conn->fetchArray($result))
	// 	{
	// 		$spaces = $this->spaces($times);
	// 		echo "<option value='".$row['id']."'";
	// 		if ($row['id'] == $selectedId)
	// 			echo " selected ";
	// 		echo ">";
	// 		echo $spaces . $row['name'];
	// 		echo "</option>";
	// 		$this->comboRecursionTravel((int) $row['id'], $selectedId, ++$times);
			
	// 		--$times;
	// 	}
	// }

	
	function spaces($times){
		$spaces = "";
		for ($i=0; $i<$times;$i++)
			$spaces .= "--";
			
		return $spaces;
	}
	
	function writeBreadCrumb($id){
		$list = array();
		$this->getBreadCrumb($id, $list);

		if(count($list) > 1)
			echo '<div id="breadcrumb">';
		
		for ($i=count($list)-1; $i>0; $i--)
		{
			echo $list[$i];
			echo "&nbsp;";
			echo "&raquo";
			echo "&nbsp;";
		}
		if(count($list) > 1)
			echo '</div>';
	}
	
	function getBreadCrumb($id, &$list){
		global $conn;
		
		$result = $this->getById($id);
		
		while ($row = $conn->fetchArray($result))
		{
			array_push($list, "<a class='breadcrumb' href='". $row['urlname'] . "'>" . $row['name'] . "</a>");
			
			$this->getBreadCrumb($row['parentId'], $list);
		}
	}
	
	function isDeletable($id){
		global $conn;
	
		$result = $this->getByParentId($id);
		if ($conn->numRows($result) > 0)  //has a child group
			return false;
		return true;
	}
	
	function getLastWeight($type, $parentId){
		global $conn;
		
		$sql = "SElECT weight FROM groups WHERE type = :type AND parentId = :parentId ORDER BY weight DESC LIMIT 1";
		$criteria = array(
			'type' => $type,
			'parentId' => $parentId
		);
		$result = $conn->exec($sql, $criteria);
		$numRows = $conn -> numRows($result);
		if($numRows > 0)
		{
			$row = $conn->fetchArray($result);
			return $row['weight'] + 10;
		}
		else
			return 10;
	}
	
	function getSubLastWeight($parentId, $linkType){
		global $conn;
		
		$sql = "SElECT weight FROM groups WHERE parentId = :parentId AND linkType = :linkType ORDER BY weight DESC LIMIT 1";
		$criteria = array(
			'parentId' => $parentId,
			'linkType' => $linkType
		);
		$result = $conn->exec($sql, $criteria);
		$numRows = $conn -> numRows($result);
		if($numRows > 0)
		{
			$row = $conn->fetchArray($result);
			return $row['weight'] + 10;
		}
		else
			return 10;
	}
	
	function getNextResult($id){
		global $conn;
		
		$result = $this->getById($id);
		$row = $conn->fetchArray($result);
		
		$parentId = $row['parentId'];
		
		$sql = "SELECT * FROM groups WHERE parentId = :parentId AND id > :id LIMIT 1";
		$criteria = array(
			'parentId' => $parentId,
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		if ($conn->numRows($result) == 0)
		{
			$sql = "SELECT * FROM groups WHERE parentId = :parentId LIMIT 1";
			$criteria = array(
				'parentId' => $parentId
			);
			$result = $conn->exec($sql, $criteria);
			return $result;
		}
		else
		{
		 	return $result;
		}
	}
	
	function getPreviousResult($id){
		global $conn;
		
		$result = $this->getById($id);
		$row = $conn->fetchArray($result);
		
		$parentId = $row['parentId'];
		
		$sql = "SELECT * FROM groups WHERE parentId = :parentId AND id < :id ORDER BY id DESC LIMIT 1";
		$criteria = array(
			'parentId' => $parentId,
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		if ($conn->numRows($result) == 0){
			$sql = "SELECT * FROM groups WHERE parentId = :parentId ORDER BY id DESC LIMIT 1";
			$criteria = array(
				'parentId' => $parentId
			);
			$result = $conn->exec($sql, $criteria);
			return $result;
		}
		else{
		 	return $result;
		}
	}
	
	function getMainParent($id){
		global $conn;
		global $mainParentId;
		
		$sql = "SElECT id, parentId FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $id);
		$row = $conn->fetchArray($result);

		if($row['parentId'] > 0)
			$this -> getMainParent($row['parentId']);
		else
		{
			$mainParentId = $id;
			return;
		}
	}
	
	function getByURLName($urlname){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE urlname = :urlname";
		$criteria = array(
			'urlname' => $urlname
		);
		$result = $conn->exec($sql, $criteria);
		$numRows = $conn -> numRows($result);
		if($numRows > 0)
		{
			$row = $conn->fetchArray($result);
			return $row;
		}
		return false;
	}
	
	function getByAlias($alias){
		global $conn;
		
		$sql = "SElECT * FROM groups WHERE urlname = :alias";
		$criteria = array(
			'alias' => $alias
		);
		$result = $conn->exec($sql, $criteria);
		return $result;
	}
	
	function isUnique($id=0, $urlname){
		global $conn;
		
		$sql = "SELECT COUNT(id) cnt FROM groups WHERE urlname = :urlname AND id <> :id";
		$criteria = [
			'id' => $id,
			'urlname' => $urlname
		];
		$stmt = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($stmt);
		if($row['cnt'] > 0){
			return false;
		}
		return true;
	}
	
	function getPageTitle($id){
		global $conn;
		
		$sql = "SElECT pageTitle FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row['pageTitle'];
	}
	
	function getPageKeyword($id){
		global $conn;
		
		$sql = "SElECT pageKeyword FROM groups WHERE id = :id";
		$criteria = array(
			'id' => $id
		);
		$result = $conn->exec($sql, $criteria);
		$row = $conn -> fetchArray($result);
		return $row['pageKeyword'];
	}
}

?>
