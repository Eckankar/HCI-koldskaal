<?php
$_VIEW = array();
$_VIEW["title"] = "bleh";
$_VIEW["content"] = "<div>THIS IS PENSIIIOOOOOOOOOON!!!!!</div>";

$_VIEW["level1Id"] = isset($_GET["level1"]) ? $_GET["level1"] : 0;
$_VIEW["level2Id"] = isset($_GET["level2"]) ? $_GET["level2"] : 0;

$_VIEW["level1Menus"] = array(
  array("url" => "?level1=0", "title" => "Menu 1"),
  array("url" => "?level1=1", "title" => "Menu 2"),
  array("url" => "?level1=2", "title" => "Menu 3"),
);

$_VIEW["level2Menus"] = array(
  array("url" => "?level1=" . $_VIEW["level1Id"] . "&level2=0", "title" => "Undermenu 1"),
  array("url" => "?level1=" . $_VIEW["level1Id"] . "&level2=1", "title" => "Undermenu 2"),
  array("url" => "?level1=" . $_VIEW["level1Id"] . "&level2=2", "title" => "Undermenu 3"),
);

$_VIEW["level3Menus"] = array(
  array("url" => "?level1=" . $_VIEW["level1Id"] . "&level2=" . $_GET["level2"] . "&level3=0", "title" => "Under<sup>2</sup>menu 1"),
  array("url" => "?level1=" . $_VIEW["level1Id"] . "&level2=" . $_GET["level2"] . "&level3=1", "title" => "Under<sup>2</sup>menu 2"),
  array("url" => "?level1=" . $_VIEW["level1Id"] . "&level2=" . $_GET["level2"] . "&level3=2", "title" => "Under<sup>2</sup>menu 3"),
);

$_VIEW["level3Breadcrumb"] = array(
  array("url" => "http://google.dk", "title" => "Google"),
  array("url" => "http://yahoo.com", "title" => "Yahoo!"),
  array("url" => "http://bing.com", "title" => "Bing"),
);


include "site.php";
?>
