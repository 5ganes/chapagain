<?php
session_start();
// error_reporting(E_ERROR);
ini_set('error_reporting', E_ALL);
ini_set("register_globals", "off");
ini_set("upload_max_filesize", "100M");
ini_set("post_max_size", "100M");
ini_set("memory_limit", "80M");

require_once("data/conn.php");
require_once("data/users.php");
require_once("data/groups.php");
require_once("data/listingfiles.php");
//require_once("data/testimonials.php");
require_once("data/feedbacks.php");
//require_once("data/donate.php");
//require_once("data/enewsletters.php");

//include for programs
require_once("data/program.php");
$program = new Program();

// make pdo global 
$pdo = null;

$conn 					= new Dbconn();		
$users	 				= new Users();
$groups					= new Groups();
$listingFiles		    = new ListingFiles();
// $testimonials		    = new Testimonials();
$feedbacks			    = new Feedbacks();
// $donate                 = new Donate();
// $enewsletters			= new Enewsletters();

require_once("data/family.php");
$family = new Family();

require_once("data/constants.php");
require_once("data/sqlinjection.php");
require_once("data/youtubeimagegrabber.php");


include("includes/feedbackprocess.php");
include("includes/testimonialprocess.php");
// include("includes/enquiry.php");

require_once('data/loginuserprocess.php');
require_once('data/checkloggedin.php');

///////////////////////////////////////////////

$query = "";
if (isset($_GET['query']))
	$query = $_GET['query'];
	//echo $query;
if (!empty($query)) {
	$pageRow = $groups->getByURLName($query);
	if ($pageRow) {
		
		$pageLinkType = $pageRow['linkType'];
		if ($pageLinkType == "Link") {
			header("Location: " . $pageRow['contents']);
			exit();
		}		
	}
}
else
	$query='';

include("menufunction.php");




///////////////IMAGE CALL IMAGER FUNCTION //////////////////////////////


function imager($source, $width, $height, $fix="")
{
	$str = 'data/imager.php?file=../' . CMS_GROUPS_DIR . $source . '&amp;mw=' . $width . '&amp;mh=' . $height;
	if(!empty($fix))
		$str .= '&amp;fix';		
	return $str;
}

//global key for tree node position in family tree pre traversal
$key = 1;

?>