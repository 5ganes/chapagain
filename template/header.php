<?php //require 'clientobjects.php';?>
<!DOCTYPE html>
<html>
<head>
    <title>
		<?php
			if($action==0)
			{
				if (!empty($query)) {
					$pageRow = $groups->getByURLName($query);
					if ($pageRow) {
						$pageName = $pageRow['name'];
						$pageNameEn = $pageRow['nameen'];		
					}
				}
			}
		?>
		<?php if($lan=='en'){
            echo 'Chapagain Family Samaj - ';
            if($pageNameEn!=""){ echo $pageNameEn;}else if(isset($_GET['action'])){ echo $_GET['action'];}else{ echo "Home";}
        }
        else{
            echo 'Chapagain Family Samaj - ';
        	if(isset($pageName)){ 
                echo $pageName;
            }
            else if(isset($_GET['action'])){
                echo $_GET['action'];
            }
            else{ 
                echo "Home";
            }
    	}?>
	</title>
    <?php require 'baselocation.php';?>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/hotel.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/animate.css"/>
</head>
<body>
<div class="background-wrap">
    <?php require 'header_include.php';?>