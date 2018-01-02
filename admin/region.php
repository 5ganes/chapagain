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
      
  $weight = $region -> getLastWeight();
  if($_GET['type'] == "edit"){
    $result = $region->getById($_GET['id']);
    // $editRow = $conn->fetchArray($result);  
    extract($result);
  }
  if($_POST['type'] == "Save"){
    extract($_POST);
    if($name=="")
      $errMsg .= "<li>Please enter Region Name</li>";
    if($weight=="")
      $errMsg .= "<li>Please enter weight</li>";
    
    if(empty($errMsg)){
      $pid = $region -> saveOrUpdate($id, $name, $publish, $weight);
      if($id > 0)
        $pid = $id;
      if($id > 0)
        header('Location: region.php?type=edit&id='.$id.'&msg=Region details updated successfully');
      else
        header('Location: region.php?msg=Region details saved successfully');
      exit();
    }   
  }
  
  // if($_GET['type'] == "tooglePublish")
  // {
  //   $id = $_GET['id'];
  //   $changeTo = $_GET['changeTo'];
    
  //   $sql = "UPDATE crop SET publish='$changeTo' WHERE id='$id'";
  //   $conn->exec($sql);
  //   header('location: region.php?&msg=Crop Show/Hide status toogled successfully.');
  // }

  if($_GET['type']=="del"){
      $delMsg = $region -> delete($_GET['id']);
      header("Location:region.php?msg=".$delMsg);   
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
                    <td class="heading2">&nbsp; Manage Family Region
                      <div style="float: right;">
                        <? $addNewLink = "region.php"; ?>
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
                            <td class="tahomabold11"><strong> Region Name : <span class="asterisk">*</span></strong></td>
                            <td>
                              <input name="name" type="text" class="text" value="<?=$name;?>" required />
                            </td>
                          </tr>
                          <tr><td></td></tr>                          
                          
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
                            Region List
                        </td>
                      </tr>
                      <tr>
                        <td><table width="100%"  border="0" cellpadding="4" cellspacing="0">
                            <tr bgcolor="#F1F1F1" class="tahomabold11">
                              <td width="1">&nbsp;</td>
                              <td style="width:20px"><strong>SN</strong></td>
                              <td style="width:150px">Region Name</td>
                              <td style="width:10px;">Show</td>
                              <td style="width:10px">Weight</td>
                              <td style="width:73px"><strong>Action</strong></td>
                            </tr>
                            <?php
                
                  $counter = 0;
                  $pagename = "region.php?";
                  $limit = 50;
                  $sql = "SELECT * FROM region";
                  $sql=$sql." ORDER BY weight";
                  include("paging.php"); $sn = 1;
                  while($row = $conn -> fetchArray($result))
                  {?>
                                  <tr <?php if($counter%2 != 0) echo 'bgcolor="#F7F7F7"'; else echo 'bgcolor="#FFFFFF"'; ?>>
                                      <td valign="top">&nbsp;</td>
                                      <td valign="top"><?php echo $sn++;?></td>
                                      <td valign="top"><?= $row['name'] ?></td>
                                      <td valign="top"><?= $row['publish'] ?></td>
                                    
                                      <td valign="top"><?= $row['weight'] ?></td>
                                      <td valign="top">
                                        [ <a href="region.php?type=edit&id=<?= $row['id']?>">Edit</a> | 
                                          <a href="#" onClick="javascript: if(confirm('This will permanently remove this region from database. Continue?')){
                                           document.location='region.php?type=del&id=<?php echo $row['id']; ?>'; }">Delete</a> ]
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