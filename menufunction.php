<?php
function createMenu($parentId, $groupType)
{
	global $groups;
	global $conn;

	if ($parentId == 0){
		$groupResult = $groups->getByParentIdAndType($parentId, $groupType);	
	}
	else{
		$groupResult = $groups->getByParentId($parentId);		
	}

	if ($conn->numRows($groupResult) > 0 and $parentId != 0){
		echo '<ul>';
	}

	while($groupRow = $conn->fetchArray($groupResult)){?>
		<li>
    	<a href="<? if($groupRow['linkType']!='File'){ if($groupRow['linkType']!='Link') echo $groupRow['urlname']; else echo $groupRow['contents'];} else{ echo CMS_FILES_DIR.$groupRow['contents'];}?>">
    		<?php echo $groupRow['name']; ?>
    	</a>
		<?
		if($groupRow['linkType']=="Normal Group" and $groupRow['urlname']!='video-gallery')
				createMenu($groupRow['id'], $groupType);

		echo "</li>\n";
	}
	if ($conn->numRows($groupResult) > 0 and $parentId != 0)
		echo '</ul>';
}