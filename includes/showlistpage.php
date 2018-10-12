<div class="jumbotron" style="margin-top: 2%;">
    <div id="jumbo2">
        <div class="container welcome" >
            <div class="row">
                <div class="col-sm-12 innerpage">
                    <h2 class="features"><?php if($lan!='en') echo $pageName; else echo $pageNameEn;?></h2>
                    <p>
                        <?php
                            $content=$groups->getById($pageId);
                            $contentGet=$conn->fetchArray($content);
                            if(!empty($contentGet['image']) AND file_exists(CMS_GROUPS_DIR.$contentGet['image'])){
                                echo '<img src="'.CMS_GROUPS_DIR.$contentGet['image'].'">';
                                echo $contentGet['image']; die();
                            }
                            if($lan!='en')
                               echo $contentGet['contents'];
                            else echo $contentGet['contentsen'];
                        ?>
                    </p>
                    <br>
                    

                    <div class="page-row">
					    <div class="table-responsive">
					    	<table class="table table-boxed">
					            <thead>
					                <tr style="background: #337ab7">
							            <th width="10%">SN</th>
							            <th width="50%">News</th>
							            <th width="40"></th>
					                </tr>
					            </thead>
					            <tbody style="color:black;text-align: left;">
					            	<?php
									$pagename = "index.php?linkId=". $pageId ."&";
									$sql = "SELECT * FROM groups WHERE parentId = :parentId ORDER BY weight ASC";
									$criteria = array(
										'parentId' => $pageId
									);
									$newsql = $sql;
									$limit = LISTING_LIMIT;

									//get alias name
									$alias=$groups->getById($pageId);
									$aliasGet=$conn->fetchArray($alias);

									include("includes/pagination.php");
									$return = Pagination($sql, "", $limit, $aliasGet['urlname'], $criteria);
									$arr = explode(" -- ", $return);
									$start = $arr[0];
									$pagelist = $arr[1];
									$count = $arr[2];
									$newsql .= " LIMIT $start, $limit";
									$result = $conn->exec($newsql, $criteria); $cnt = 1;
									while ($listRow = $conn->fetchArray($result))
									{
										if($cnt%2 == 1) $back = "white"; else $back = "#e8d7d7"; ?>
						                <tr style = "background : <?php echo $back;?>">
						                    <td><?php echo $cnt++;?></td>
						                    <td>
						                    	<a href="<?php if($lan=='en') echo 'en/'; echo $listRow['urlname']; ?>">
						                    		<?php if($lan=='en') echo $listRow['nameen']; echo $listRow['name']; ?>
						                    	</a>
						                    </td>
						                    <td><?php if($lan=='en') echo $listRow['shortcontentsen']; echo $listRow['shortcontents']; ?></td>
						                </tr>
					         		<?php }?>
					            </tbody>
					        </table>
						</div>
					</div>


                </div>
            </div>
          </div>
    </div>
</div>