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
                            }
                            if($lan!='en')
                               echo $contentGet['contents'];
                            else echo $contentGet['contentsen'];
                        ?>
                    </p> 
                </div>
            </div>
          </div>
    </div>
</div>