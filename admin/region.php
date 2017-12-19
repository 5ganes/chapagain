<?php
include("init.php");
if(!isset($_SESSION['sessUserId']))//User authentication
{
 header("Location: login.php");
 exit();
}
if(isset($_POST['id']))
  $id = $_POST['id'];
elseif(isset($_GET['id']))
  $id = $_GET['id'];
else
  $id = 0;
    
// $weight = $crop -> getLastWeight();
// if($_GET['type'] == "edit")
// {
//   $result = $crop->getById($_GET['id']);
//   $editRow = $conn->fetchArray($result);  
//   extract($editRow);
// }
// if($_POST['type'] == "Save")
// {
//   extract($_POST);
  
//   if(!$crop -> isUnique($id, $urlname))
//     $errMsg .= "<li>Alias Name already exists.</li>";
//   if($name=="")
//     $errMsg .= "<li>Please enter crop Name</li>";
//   if($code=="")
//     $errMsg .= "<li>Please enter crop code</li>";
  
//   if(empty($errMsg))
//   {
//     $pid = $crop -> save($id, $name, $namenp, $urlname, $code, $shortcontents, $contents, $publish, $featured, $weight);
//     if($id > 0)
//       $pid = $id;
//     $crop -> saveImage($pid);
//     if($id>0)
//       header('Location: region.php?type=edit&id='.$id.'&msg=Crop details updated successfully');
//     else
//       header('Location: region.php?msg=Crop details saved successfully');
//     exit();
//   }   
// }

// if($_GET['type'] == "toogleFeatured")
// {
//   $id = $_GET['id'];
//   $changeTo = $_GET['changeTo'];
  
//   $sql = "UPDATE crop SET featured='$changeTo' WHERE id='$id'";
//   $conn->exec($sql);
//   header('location: region.php?msg=Crop feature status toogled successfully.');
  
// }
// if($_GET['type'] == "tooglePublish")
// {
//   $id = $_GET['id'];
//   $changeTo = $_GET['changeTo'];
  
//   $sql = "UPDATE crop SET publish='$changeTo' WHERE id='$id'";
//   $conn->exec($sql);
//   header('location: region.php?&msg=Crop Show/Hide status toogled successfully.');
  
// }
  
if($_GET['type'] == "removeImage")
{
  $crop->deleteImage($_GET['id']);
  //echo "hello";
  //header("location: region.php?type=edit&id=".$_GET['id']."&msg=product image deleted successfully.");?>
  <script> document.location='region.php?type=edit&id=<?=$_GET['id']?>&msg=Crop image deleted successfully.' </script>
<? }
if($_GET['type']=="del")
{
    $crop -> delete($_GET['id']);
    //echo "hello";
    //header("Location : region.php?&msg=product deleted successfully.");?>
      <script> document.location='region.php?msg=Crop deleted successfully.' </script>    
<? }
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
                            <td><input name="weight" type="text" class="text" id="weight" value="<?php echo $weight; ?>" style="width:25px;" /></td>
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
                            Crop List
                        </td>
                      </tr>
                      <tr>
                        <td><table width="100%"  border="0" cellpadding="4" cellspacing="0">
                            <tr bgcolor="#F1F1F1" class="tahomabold11">
                              <td width="1">&nbsp;</td>
                              <td style="width:20px"><strong>Image</strong></td>
                              <td style="width:150px">Crop Name(English)</td>
                              <td style="width:120px">Crop Name(Nepali)</td>
                              <td style="width:60px;">Crop Code</td>
                              <td style="width:10px;">Show</td>
                              <td style="width:10px">Featured</td>
                              <td style="width:10px">Weight</td>
                              <td style="width:73px"><strong>Action</strong></td>
                            </tr>
                            <?php
                
                  $counter = 0;
                  $pagename = "region.php?";
                  $limit = 50;
                  $sql = "SELECT * FROM crop";
                  $sql=$sql." ORDER BY weight";
                  include("paging.php");
                  while($row = $conn -> fetchArray($result))
                  {?>
                                  <tr <?php if($counter%2 != 0) echo 'bgcolor="#F7F7F7"'; else echo 'bgcolor="#FFFFFF"'; ?>>
                                      <td valign="top">&nbsp;</td>
                                      <td valign="top"><img src="../<?= CMS_GROUPS_DIR.$row['image']; ?>" width="35" height="25" /></td>
                                      <td valign="top"><?= $row['name'] ?></td>
                                      <td valign="top"><?= $row['namenp'] ?></td>
                                      <td valign="top"><?=$row['code'];?></td>
                                     
                                      <td valign="top">
                                  <?
                    $changeTo = 'Yes';
                    if ($row['publish'] == 'Yes')
                      $changeTo = 'No';
                    ?>
                                    (<a href="region.php?type=tooglePublish&id=<?= $row['id']?>&changeTo=<?=$changeTo;?>"><?=$row['publish'];?></a>)</td>
                                      
                                      
                                      <td valign="top">
                                  <?
                    $changeTo = 'Yes';
                    if ($row['featured'] == 'Yes')
                      $changeTo = 'No';
                    ?>
                                    (<a href="region.php?type=toogleFeatured&id=<?= $row['id']?>&changeTo=<?=$changeTo;?>"><?=$row['featured'];?></a>)
                                      </td>
                                      
                                  <td valign="top"><?= $row['weight'] ?></td>
                                  <td valign="top">
                                        [ <a href="region.php?type=edit&id=<?= $row['id']?>">Edit</a> | 
                                          <a href="#" onClick="javascript: if(confirm('This will permanently remove this crop from database. Continue?')){
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