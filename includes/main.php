<div class="jumbotron">
    <div id="jumbo2">
        <div class="container welcome" >
            <div class="row">
                <div class="col-sm-12 ">
                    <?php $welcome = $groups->getById(WELCOME); $welcome = $conn->fetchArray($welcome);?>
                    <h2 class="features"><?php echo $welcome['name'];?></h2>
                    <p><?php echo $welcome['shortcontents'];?></p>
                    <a class="seemore" href="<?php echo $welcome['urlname'];?>">थप हेर्नुहोस...</a> 
                </div>
            </div>
          </div>
    </div>
</div>

<div class="jumbotron">
    <div id="jumbo2">
          <div class="container" style="background-color:#d3d3d3;margin-top:50px;" >
            <div class="row">
              <div class="col-sm-4 ">
                <?php $news = $groups->getById(NEWS_AND_NOTICE); $newsTitle = $conn->fetchArray($news);?>
                <h3 class="features"><?php echo $newsTitle['name'];?></h3>
                <ul class="news">
                    <?php
                    $news = $groups->getByParentIdWithLimit(NEWS_AND_NOTICE, 5);
                    while($newsGet = $conn->fetchArray($news)){
                        echo '<li><a href="'.$newsGet['urlname'].'">'.$newsGet['name'].'</a></li>';
                    }
                    ?>
                </ul>
                <a class="seemore" href="<?php echo $newsTitle['urlname'] ?>">थप हेर्नुहोस...</a>
              <h3> 
              </div>
              <div class="col-sm-4">
                <?php $link = $groups->getById(IMPORTANT_LINKS); $linkTitle = $conn->fetchArray($link);?>
                <h3 class="features"><?php echo $linkTitle['name'];?></h3>
                <ul class="news">
                    <?php
                    $link = $groups->getByParentIdWithLimit(IMPORTANT_LINKS, 5);
                    while($linkGet = $conn->fetchArray($link)){
                        echo '<li><a href="'.$linkGet['urlname'].'">'.$linkGet['name'].'</a></li>';
                    }
                    ?>
                </ul>
                <a class="seemore" href="<?php echo $linkTitle['urlname'] ?>">थप हेर्नुहोस...</a>
              </div>
              <div class="col-sm-4 contact">
                <?php $contact = $groups->getByURLName('contact-us');?>
                <h3 class="features"><?php echo $contact['name'];?></h3>
                <p><?php echo $contact['shortcontents'];?></p>
              </div>
            </div>
          </div>
    </div>
</div>
   
<div class="row">
    <h2 class="features" style="text-align: center;">
        <hr style="width:500px;border-top:1px solid #de8d5b;">Samaj Team Members
    </h2><br/>
    <?php 
    $team = $groups->getById(TEAM_MEMBERS); $team = $conn->fetchArray($team);
    $members = $groups->getByParentId(TEAM_MEMBERS);
    while($memberGet = $conn->fetchArray($members)){?>
        <div class="col-sm-3">
            <div class="column">
                <img src="<?php echo CMS_GROUPS_DIR.$memberGet['image'];?>" style="width:100%;border:2px solid #de8d5b;">
                <div class="content">
                  <h5><?php echo $memberGet['shortcontents'];?></h5>  
                </div>
            </div>
        </div>
    <?php }?>
    <a class="seemore" href="<?php echo $team['urlname'];?>">थप हेर्नुहोस...</a>
</div>
<!-- <div class="row">
    <div class="col-sm-3">
        <div class="column">
            <img src="images/five.jpg" style="width:100%; border:2px solid #de8d5b;">
            <div class="content">
               <h5>Room-type-5<br> <strong>Price:</strong> 40$</h5>  
            </div>
        </div> 
    </div>
    <div class="col-sm-3">
        <div class="column">
            <img src="images/six.jpg" style="width:100%;border:2px solid #de8d5b;">
            <div class="content">
                <h5>Room-type-6<br> <strong>Price:</strong> 60$</h5>  
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="column">
            <img src="images/seven.jpg" style="width:100%;border:2px solid #de8d5b;">
            <div class="content">
                <h5>Room-type-7<br> <strong>Price:</strong> 30$</h5>  
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="column">
            <img src="images/eight.jpg" style="width:100%;border:2px solid #de8d5b;">
            <div class="content">
                <h5>Room-type-8<br> <strong>Price:</strong> 25$</h5>  
            </div>
        </div>
    </div> <br/>
</div> -->