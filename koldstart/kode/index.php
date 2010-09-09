<?php
$_VIEW = array();
$_VIEW["title"] = "bleh";
$_VIEW["content"] = "<div>THIS IS PENSIIIOOOOOOOOOON!!!!!</div>";
$_VIEW["level1Menus"] = array(
  array("url" => "http://google.dk", "title" => "Google"),
  array("url" => "http://yahoo.com", "title" => "Yahoo!"),
  array("url" => "http://bing.com", "title" => "Bing"),
);

$_VIEW["level2Menus"] = array(
  array("url" => "http://google.dk", "title" => "Google"),
  array("url" => "http://yahoo.com", "title" => "Yahoo!"),
  array("url" => "http://bing.com", "title" => "Bing"),
);

$_VIEW["level3Menus"] = array(
  array("url" => "http://google.dk", "title" => "Google"),
  array("url" => "http://yahoo.com", "title" => "Yahoo!"),
  array("url" => "http://bing.com", "title" => "Bing"),
);

$_VIEW["level3Breadcrumb"] = array(
  array("url" => "http://google.dk", "title" => "Google"),
  array("url" => "http://yahoo.com", "title" => "Yahoo!"),
  array("url" => "http://bing.com", "title" => "Bing"),
);

$_VIEW["level1Id"] = 1;
$_VIEW["level2Id"] = 2;

include "site.php";
?>
