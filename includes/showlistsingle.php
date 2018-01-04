<style type="text/css">
    .next-prev{
      display: flex; justify-content: space-between;padding: 1%;background: #DDEFDA;
    }
    .next-prev a{
      color: red
    }
    .next-prev a:hover{
      color: green;
    }
    .next-prev:first-child{

    }
    .next-prev :last-child{

    }
</style>
<div class="jumbotron" style="margin-top: 2%;">
    <div id="jumbo2">
        <div class="container welcome" >
            <div class="row">
                <div class="col-sm-12 innerpage">
                    <h2 class="features"><?php if($lan!='en') echo $pageName; else echo $pageNameEn;?></h2>
                    <?php 
                        $navNextResult = $groups->getNextResult($pageId); $navNextRow = $conn->fetchArray($navNextResult);
                        $navPreviousResult = $groups->getPreviousResult($pageId); $navPreviousRow = $conn->fetchArray($navPreviousResult);
                    ?>
                    <div class="next-prev">
                        <div> <a href="<?= $navPreviousRow['urlname']; ?>" class="paging">&laquo; Previous</a> </div>
                        <div> <a href="<?php echo $navNextRow['urlname']; ?>" class="paging">Next &raquo;</a> </div>
                    </div>
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
                    <br>
                    <?php $file=$listingFiles->getByListingId($pageId);
                    if($conn->numRows($file)>0){?>
                        <div class="page-row">
                            <div><h5 style="font-weight: bold; text-align: left;font-size: 23px;color: black;">#Attachments</h5></div>
                            <div class="table-responsive">
                                <table class="table table-boxed">
                                    <thead>
                                        <tr style="background: #337ab7">
                                            <th width="10%">SN</th>
                                            <th width="70%">Filename</th>
                                            <th width="20%">Download</th>
                                        </tr>
                                    </thead>
                                    <tbody style="color:black;text-align: left;">
                                        <?php
                                        $count=1;
                                        while($fileGet=$conn->fetchArray($file))
                                        {
                                            if($count%2 == 1) $back = "white"; else $back = "#e8d7d7"; ?>
                                            <tr style = "background : <?php echo $back;?>">
                                                <td><?php echo $count++;?></td>
                                                <td><?php echo $fileGet['filename']; ?></td>
                                                <td><a class="btn btn-success" download="" href="<?=CMS_LISTING_FILES_DIR.$fileGet['filename'];?>"><i class="fa fa-download"></i> Download </a></td>
                                            </tr>
                                        <?php }?>
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