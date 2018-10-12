<?php
class ListingFiles{
  function save($listingId, $caption, $filename){
    global $conn;
    $sql = "INSERT INTO listingfiles
					SET
						listingId = :listingId,
						caption = :caption,
						filename=:filename,
						onDate = :onDate";
    $criteria = array(
      'listingId' => $listingId,
      'caption' => $caption,
      'filename' => $filename,
      'onDate' => date('Y-m-d')
    );
    $stmt = $conn->exec($sql, $criteria);
    return $conn->insertId();
  }
 
  function delete($id){  
    global $conn;
    $result = $this->getById($id);
    $row = $conn->fetchArray($result);
  	//echo $row['filename'] . "--";
    $file = "../" . CMS_LISTING_FILES_DIR . $row['filename'];
    if (file_exists($file)){
     unlink($file);
    }
  	$sql = "DELETE FROM listingfiles WHERE id = :id";
    $criteria = array(
      'id' => $id
    );
    $stmt = $conn->exec($sql, $criteria);
  } 
 
  function getById($id){
    global $conn;
  
    $sql = "SELECT * FROM listingfiles WHERE id = :id";
    $criteria = array(
      'id' => $id
    );
    return $conn->exec($sql, $criteria);
  }
 
  function getByListingId($listingId){
    global $conn;
  
    $sql = "SELECT * FROM listingfiles WHERE listingId = :listingId ORDER BY id DESC";
    $criteria = array(
      'listingId' => $listingId
    );
    return $conn->exec($sql, $criteria);
  }
 
  function getTotalAttachmentsByListingId($listingId){
    global $conn; 
    $sql = "SELECT count(*) as total FROM listingfiles WHERE listingId = :listingId";
    $criteria = array(
      'listingId' => $listingId
    );
    $stmt = $conn->exec($sql, $criteria);
  	$row = $conn->fetchArray($stmt);	
  	return $row['total'];
  } 
}
?>