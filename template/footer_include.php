<?php if(isset($_GET['action']) and $_GET['action'] != FAMILY_REPORT){?>
  <div class="five" style="margin-top:50px;">
      <div class="row">
        <h2 class="features" style="text-align: center;"> <hr style="border-top:1px solid #de8d5b;"> Photo Gallery </h2> <br/><br/>
        <div id="slider-2" class="owl-carousel owl-theme">
          <?php $gallery = $groups->getByParentId(PHOTO_GALLERY);
          while($galleryGet = $conn->fetchArray($gallery)){?>
            <div class="item">
              <a href-"#"><img src="<?php echo CMS_GROUPS_DIR.$galleryGet['image'];?>" /></a>
              <p class="package"><?php echo $galleryGet['shortcontents'];?></p>
            </div>
          <?php }?>
        </div>

      </div>
  </div>
<?php }?>