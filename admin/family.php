<?php
  include("init.php");
  if(!isset($_SESSION['sessUserId'])){ //User authentication
    header("Location: login.php");
    exit();
  }
  if(isset($_POST['id']))
    $id = $_POST['id'];
  elseif(isset($_GET['id']))
    $id = $_GET['id'];
  else
    $id = 0;
      
  $weight = $family -> getLastWeight();
  if($_GET['type'] == "edit"){
    $result = $family->getById($_GET['id']);  
    extract($result);
  }
  if($_POST['type'] == "Save"){
    extract($_POST);
    if($name=="")
      $errMsg .= "<li>Please enter Member Name</li>";
    if($weight=="")
      $errMsg .= "<li>Please enter weight</li>";
    
    if(empty($errMsg)){
      $pid = $family -> saveOrUpdate($id, $name, $fatherId, $motherId, $birthDate, $email, $phone, $maritalStatus, $gotraId, $regionId, $gender, $publish, $weight);
      // echo $pid; die();
      if($id > 0)
        $pid = $id;
      $family->saveImage($pid);
      if($id > 0)
        header('Location: family.php?type=edit&id='.$id.'&msg=Member detail updated successfully');
      else
        header('Location: family.php?msg=Member detail saved successfully');
      exit();
    }   
  }

  if(isset($_GET['id']) && isset($_GET['deleteImage'])){
    $row = $family -> getById($_GET['id']);
    $family->updateImage($row['id'], "");
    // echo "../". CMS_FAMILY_DIR . $row['image']; die();
    @unlink("../". CMS_FAMILY_DIR . $row['image']);
    $msg = "Image deleted!";
    $url = "family.php?type=edit&id=". $_GET['id'];    
    header ("Location: ". $url ."&msg=" . $msg);
    exit();
  }

  if($_GET['type']=="del"){
      $family -> delete($_GET['id']);
      header("Location:family.php?msg=Member deleted successfully.");   
  }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><?php echo ADMIN_TITLE; ?></title>
<link href="../css/admin.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript" src="../js/cms.js"></script>
<script type="text/javascript" src="../js/jquery.min.js"></script>

<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

</head>
<body>
  <table width="<?php echo ADMIN_PAGE_WIDTH; ?>" border="0" align="center" cellpadding="0"
    cellspacing="5" bgcolor="#FFFFFF">
    <tr>
      <td colspan="2"><?php include("header.php"); ?></td>
    </tr>
    <tr>
      <td width="<?php echo ADMIN_LEFT_WIDTH; ?>" valign="top"><?php include("leftnav.php"); ?></td>
      <td width="<?php echo ADMIN_BODY_WIDTH; ?>" valign="top">
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          <tr>
            <td class="bgborder"><table width="100%" border="0" cellspacing="1" cellpadding="0">
              <tr>
                <td bgcolor="#fff"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="heading2">&nbsp; Manage Family Member
                      <div style="float: right;">
                        <? $addNewLink = "family.php"; ?>
                        <a href="<?= $addNewLink?>" class="headLink">Add New</a></div></td>
                  </tr>
                  <tr>
                    <td>
                    <form action="" method="post" enctype="multipart/form-data">
                    <table width="100%" border="0" cellpadding="2" cellspacing="0">
                        <?php if(!empty($errMsg)){ ?>
                        <tr align="left">
                          <td colspan="3" class="err_msg"><?php echo $errMsg; ?></td>
                        </tr>
                        <?php } ?>                          
                         <tr><td></td></tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><strong> Member Name : <span class="asterisk">*</span></strong></td>
                            <td>
                              <input name="name" type="text" class="text" value="<?=$name;?>" required />
                            </td>
                          </tr>
                          <tr><td></td></tr> 

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><strong> Father's Name : <span class="asterisk">*</span></strong></td>
                            <td>
                              <select name="fatherId">
                                <option value="select">Select One</option>
                                <?php
                                $father = $family->getAll();
                                while($record = $conn->fetchArray($father)) {?>
                                  <option value="<?=$record['id'];?>" <?php if($fatherId==$record['id']) echo 'selected'?>><?=$record['name']?></option>
                                <?php }
                                ?>
                              </select>
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><strong> Mother's Name : <span class="asterisk">*</span></strong></td>
                            <td>
                              <select name="motherId">
                                <option value="select">Select One</option>
                                <?php
                                $mother = $family->getAll();
                                while($record = $conn->fetchArray($mother)) {?>
                                  <option value="<?=$record['id'];?>" <?php if($motherId==$record['id']) echo 'selected'?>><?=$record['name']?></option>
                                <?php }
                                ?>
                              </select>
                            </td>
                          </tr>
                          <tr><td></td></tr> 

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><b>Birth Date : </b></strong></td>
                            <td>
                              <input name="birthDate" type="date" class="text" value="<?=$birthDate;?>" />
                            </td>
                          </tr>
                          <tr><td></td></tr> 

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><b>Email : </b></strong></td>
                            <td>
                              <input name="email" type="text" class="text" value="<?=$email;?>" />
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><b>Phone Number : </b></strong></td>
                            <td>
                              <input name="phone" type="text" class="text" value="<?=$phone;?>" />
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><b>Marital Status : </b></strong></td>
                            <td>
                              <select name="maritalStatus">
                                <option value="Married">Married</option>
                                <option value="Unmarried" <?php if($maritalStatus=='Unmarried') echo 'selected';?>>Unmarried</option>
                              </select>
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><strong> Select Gotra : </strong></td>
                            <td>
                              <select name="gotraId">
                                <?php
                                $gotraList = $gotra->getAll();
                                while($record = $conn->fetchArray($gotraList)) {?>
                                  <option value="<?=$record['id']?>" <?php if($gotraId==$record['id']) echo 'selected';?>><?=$record['name']?></option>
                                <?php }
                                ?>
                              </select>
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><strong> Select Region : <span class="asterisk">*</span></strong></td>
                            <td>
                              <select name="regionId">
                                <?php
                                $regionList = $region->getAll();
                                while($record = $conn->fetchArray($regionList)) {?>
                                  <option value="<?=$record['id']?>" <?php if($regionId==$record['id']) echo 'selected';?>><?=$record['name']?></option>
                                <?php }
                                ?>
                              </select>
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><b>Gender : <span class="asterisk">*</span></b></strong></td>
                            <td>
                              <input name="gender" type="radio" value="Male" checked /> Male 
                              <input type="radio" name="gender" value="Female" <?php if($gender=='Female') echo 'checked';?>> Female 
                              <input type="radio" name="gender" value="Other" <?php if($gender=='Other') echo 'checked';?>> Other
                            </td>
                          </tr>
                          <tr><td></td></tr>

                          <?php if(!empty($image) && file_exists("../". CMS_FAMILY_DIR .$image)){ ?>
                              <tr>
                                <td>&nbsp;</td>
                                <td class="tahomabold11"><strong>Existing Image : </strong></td>
                                <td><img src="../<?php echo CMS_FAMILY_DIR . $image; ?>" width="100" border="0" /> [<a href="family.php?id=<?php echo $_GET['id']; ?>&deleteImage">Delete</a>]</td>
                              </tr>
                          <?php } ?>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="tahomabold11"><div id="ImageLabel"><strong> Image : </strong></div></td>
                            <td>
                              <div id="grpImage">
                                <input type="file" name="image" class="file">
                              </div>
                            </td>
                          </tr>

                          <tr>
                            <td></td>
                            <td class="tahomabold11"><strong>Publish :</strong></td>
                            <td>
                              <label><input name="publish" type="radio" id="featured_0" value="No" checked="checked" /> No</label>
                              <label>
                                <input type="radio" name="publish" value="Yes" id="featured_1" <? if($publish == 'Yes') echo 'checked="checked"';?> />
                                Yes
                            </label>
                            </td>
                          </tr>
                          <tr><td></td></tr>      
                          
                          <tr>
                            <td></td>
                            <td class="tahomabold11"><strong>Weight :</strong></td>
                            <td><input name="weight" type="text" class="text" id="weight" value="<?php echo $weight; ?>" style="width:100px;" /></td>
                          </tr>
                          <tr><td></td></tr>
              
                          <tr>
                            <td></td>
                            <td></td>
                            <td>
                              <input name="type" type="submit" class="button" id="button" value="Save" />
                              <?php if($_GET['type'] == "edit"){ ?>
                              <input type="hidden" value="<?= $id?>" name="id" id="id" />
                              <?php }else{ ?>                                
                              <input name="reset" type="reset" class="button" id="button2" value="Clear" />
                              <?php } ?>
                              </td>
                          </tr>
                                                
                      </table>
                      </form></td>
                  </tr>
                </table>
              </td>
            </tr>
              </table></td>
          </tr>
          <tr height="5"><td></td></tr>
          <tr>
            <td class="bgborder"><table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                          <td class="heading2">
                            Family Member List
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <table width="100%"  border="0" cellpadding="4" cellspacing="0">
                            <tr bgcolor="#F1F1F1" class="tahomabold11">
                              <td width="1">&nbsp;</td>
                              <td style="width:20px"><strong>SN</strong></td>
                              <td style="width:150px">Member Name</td>
                              <td style="width:150px">Father's Name</td>
                              <td style="width:150px">Mother's Name</td>
                              <td style="width:70px">Email ID</td>
                              <td style="width:60px">Gender</td>
                              <td style="width:50px;">Show</td>
                              <td style="width:10px">Weight</td>
                              <td style="width:90px"><strong>Action</strong></td>
                            </tr>
                            <?php
                
                  $counter = 0;
                  $pagename = "family.php?";
                  $limit = 5;
                  $sql = "SELECT 
                        family.id as id, family.name as name, email, gender, family.publish as publish, family.weight as weight FROM family";
                  $sql=$sql." ORDER BY weight ASC";
                  include("paging.php"); $sn = 1;
                  while($row = $conn -> fetchArray($result))
                  {?>
                        <tr <?php if($counter%2 != 0) echo 'bgcolor="#F7F7F7"'; else echo 'bgcolor="#FFFFFF"'; ?>>
                            <td valign="top">&nbsp;</td>
                            <td valign="top"><?php echo $sn++;?></td>
                            <td valign="top"><?= $row['name'] ?></td>
                            <td valign="top"><?= $row['name'] ?></td>
                            <td valign="top"><?= $row['name'] ?></td>
                            <td valign="top"><?= $row['email'] ?></td>
                            <td valign="top"><?= $row['gender'] ?></td>
                            <td valign="top"><?= $row['publish'] ?></td>
                            <td valign="top"><?= $row['weight'] ?></td>
                            <td valign="top">
                              [ <a href="family.php?type=edit&id=<?= $row['id']?>">Edit</a> | 
                                <a href="#" onClick="javascript: if(confirm('This will permanently remove this member from database. Continue?')){
                                 document.location='family.php?type=del&id=<?php echo $row['id']; ?>'; }">Delete</a> ]
                            </td>
                        </tr>
                                <? }?>
                          
                          </table>
                        <?php include("paging_show.php"); ?></td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td colspan="2"><?php include("footer.php"); ?></td>
    </tr>
  </table>
</body>
</html>
<?php die(); ?>