<?php



$_VIEW = array();
$_VIEW["title"] = "bleh";
$_VIEW["content"] = "<div>THIS IS PENSIIIOOOOOOOOOON!!!!!</div>";

$_VIEW["level1Id"] = isset($_GET["level1"]) ? $_GET["level1"] : 0;
$_VIEW["level2Id"] = isset($_GET["level2"]) ? $_GET["level2"] : 0;
$_VIEW["level3Id"] = isset($_GET["level3"]) ? $_GET["level3"] : 0;

function generateUrl($urlData, $title) {
  global $_VIEW;

  $result = array("title" => $title);

  if(strpos($urlData, "level") === 0) {
    $query = array(
      "level1" => $_VIEW["level1Id"],
      "level2" => $_VIEW["level2Id"],
      "level3" => $_VIEW["level3Id"]
    );

    foreach(explode("&", $urlData) as $q) {
      $v = explode("=", $q, 2);

      $query[$v[0]] = $v[1];
    }

    $result["url"] = htmlentities("?" . http_build_query($query));
  } else {
    $result["url"] = htmlentities($urlData);
  }

  return $result;
}

$_VIEW["level1Menus"] = array(
  generateUrl("level1=0", "Menu 1"),
  generateUrl("level1=1", "Menu 2"),
  generateUrl("level1=2", "Menu 3"),
);

$_VIEW["level2Menus"] = array(
  generateUrl("level2=0", "title" => "Undermenu 1"),
  generateUrl("level2=1", "title" => "Undermenu 2"),
  generateUrl("level2=2", "title" => "Undermenu 3"),
);

$_VIEW["level3Menus"] = array(
  generateUrl("level3=0", "title" => "Under<sup>2</sup>menu 1"),
  generateUrl("level3=1", "title" => "Under<sup>2</sup>menu 2"),
  generateUrl("level3=2", "title" => "Under<sup>2</sup>menu 3"),
);

$_VIEW["level3Breadcrumb"] = array(
  generateUrl("http://google.dk", "Google"),
  generateUrl("http://yahoo.com", "Yahoo!"),
  generateUrl("http://bing.com", "Bing"),
);


include "site.php";
?>
