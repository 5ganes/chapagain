<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header title-text">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <p class="navbar-brand"><a href="<?php echo SITE_URL; ?>">Chapagain Family Samaj</a></p>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <?php createMenu(0, "HEADER");?>
      </ul>
      <!-- <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> SIGN-UP</a></li>
        <li><a href="#" style="padding: 5px;border:none"> <button class="bookbutton"> <i class="fa fa-calendar"> </i> BOOK YOUR STAY WITH US </button></a></li>
      </ul> -->
    </div>
  </div>
</nav>

<?php if(!isset($_GET['action']) AND empty($pageLinkType)){?>

<div class="jumbotron slider-message" id="jumbo1">
    <div id="slider-main" class="owl-carousel owl-theme slider-div">
      <?php $slide=$groups->getByParentId(SLIDER);
      while($slideGet=$conn->fetchArray($slide)){?>
        <div class="item"><a href-"#"><img src="<?php echo CMS_GROUPS_DIR.$slideGet['image']; ?>"/></a></div>
      <?php }?>
    </div>
    <div class="message">
        <?php $chief = $groups->getById(MSG_FROM_CHIEF); $chief = $conn->fetchArray($chief);?>
        <div class="row">
              <div class="col-sm-12">
                <h3 class="features"><?php echo $chief['name'];?></h3>
                <p>
                  <img src="<?php echo CMS_GROUPS_DIR.$chief['image'];?>">
                  <?php echo $chief['shortcontents'];?>
                </p>
                <a class="seemore" href="<?php echo $chief['urlname'] ?>">See More...</a>
              </div>
            </div>
    </div>
</div>

<?php }?>