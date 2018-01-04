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
                    <?php
            		$sub=$groups->getByParentId($pageId);
            		if($conn->numRows($sub)>0)
            		{?>
            	        <div class="page-row">
            			    <div class="table-responsive">
            			    	<table class="table table-boxed">
            			            <thead>
            			                <tr style="background: #337ab7">
            			                	<?php $submenu=$conn->fetchArray($sub);
            			                	if($submenu['linkType']=='Normal Group' or $submenu['linkType']=='Contents Page' or $submenu['linkType']=='List'){?>
            					                <th width="10%">SN</th>
            					                <th width="90%">Submenu</th>
            			                	<?php }
            			                	else if($submenu['linkType']=='File'){?>
            			                		<th width="10%">SN</th>
            					                <th width="70%">Filename</th>
            					                <th width="20%">Download</th>
            			                	<?php }
            			                	else if($submenu['linkType']=='Link'){?>
            			                		<th width="10%">SN</th>
            					                <th width="90%">Various Links</th>
            			                	<?php }?>
            			                </tr>
            			            </thead>
            			            <tbody style="color:black;text-align: left;">
            			            	<?php 
            			            	$down=$groups->getByParentId($pageId);
            							if($submenu['linkType']=='Normal Group' or $submenu['linkType']=='Contents Page' or $submenu['linkType']=='List'){
            								$count=1;
            								while($downRow=$conn->fetchArray($down))
            								{
            									if($count%2 == 1) $back = "white"; else $back = "#e8d7d7"; ?>
            					                <tr style = "background : <?php echo $back;?>">
            					                    <td><?php echo $count++;?></td>
            					                    <td><a href="<?php if($lan=='en') echo 'en/'; echo $downRow['urlname'];?>"><?php if($lan=='en') echo $downRow['nameen']; echo $downRow['name'];?></a></td>
            					                </tr>
            				            	<?php }
            				            }
            				            else if($submenu['linkType']=='File'){
            				            	$count=1;
            								while($downRow=$conn->fetchArray($down))
            								{
            									if($count%2 == 1) $back = "white"; else $back = "#e8d7d7"; ?>
            									<tr style = "background : <?php echo $back;?>">
            					                    <td><?php echo $count++;?></td>
            					                    <td><? if($lan=='en') echo $downRow['nameen']; else echo $downRow['name']; ?></td>
            					                    <td><a class="btn btn-success" download="" href="<?=CMS_FILES_DIR.$downRow['contents'];?>"><i class="fa fa-download"></i> Download </a></td>
            					                </tr>
            								<?php }
            							}
            							else if($submenu['linkType']=='Link'){
            								$count=1;
            								while($downRow=$conn->fetchArray($down))
            								{
            									if($count%2 == 1) $back = "white"; else $back = "#e8d7d7"; ?>
            									<tr style = "background : <?php echo $back;?>">
            					                    <td><?php echo $count++;?></td>
            					                    <td><a href="<?=$downRow['contents'];?>"><? if($lan=='en') echo $downRow['nameen']; else echo $downRow['name']; ?></a></td>
            					                </tr>
            								<?php }
            							}?>
            			            </tbody>
            			        </table>
            				</div>
            			</div>
            		<?php }?> 
                </div>
            </div>
          </div>
    </div>
</div>