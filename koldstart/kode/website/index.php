<?php



$_VIEW = array();
$_VIEW["title"] = "bleh";

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

      if($v[0] == "level1") {
        $query["level2"] = "0";
        $query["level3"] = "0";
      } else if($v[0] == "level2") {
        $query["level3"] = "0";
      }
    }

    $result["url"] = htmlentities("?" . http_build_query($query));
  } else {
    $result["url"] = htmlentities($urlData);
  }

  if($result["url"] === "") {
    $result["url"] = 'href="javascript:alert(\'unimplemented\');"';
  } else {
    $result["url"] = 'href="' . $result["url"] . '"';
  }

  return $result;
}

$nonLinks =   array(
  generateUrl("", "Nowhere"),
  generateUrl("", "Noplace"),
  generateUrl("", "Nothing"),
);



$_VIEW["level1Menus"] = array(
  generateUrl("level1=0", "For medlemmer"),
  generateUrl("level1=1", "For frivillige"),
  generateUrl("level1=2", "Presse og politik"),
  generateUrl("level1=3", "Arbejdsliv"),
);

if($_VIEW["level1Id"] != 0) { 
  $_VIEW["level2Menus"] = $nonLinks;
  $_VIEW["level3Menus"] = $nonLinks;
} else {
  $_VIEW["level2Menus"] = array(
    generateUrl("level2=0", "Det gør vi for dig"),
    generateUrl("level2=1", "Medlemsservice"),
    generateUrl("level2=2", "Medlemstilbud"),
    generateUrl("level2=3", "Netværket"),
    generateUrl("level2=4", "Rådgivning"),
    generateUrl("level2=5", "Arrangementer"),
  );

  if($_VIEW["level2Id"] == 1) {
    $_VIEW["level3Menus"] = $nonLinks;
    array_unshift($_VIEW["level3Menus"], generateUrl("level3=0", "Bliv medlem"));
  } else if($_VIEW["level2Id"] == 2) {
    $_VIEW["level3Menus"] = array(
      generateUrl("level3=0", "Rabatter og tilbud"),
      generateUrl("", "Webshop"),
      generateUrl("", "Lotteri"),
      generateUrl("", "Støt ældresagen"),
      generateUrl("", "Pensionistsagens medlemsbladen"),
      generateUrl("", "Aktuelt krydsord"),
    );
  } else {
    $_VIEW["level3Menus"] = $nonLinks;
  }
}

$_VIEW["content"] = "<div>THIS IS PENSIIIOOOOOOOOOON!!!!!</div>";
$_VIEW["level3Breadcrumb"] = array();

if($_VIEW["level1Id"] == 0 && $_VIEW["level2Id"] == 2 && $_VIEW["level3Id"] == 0) {
  ob_start();
  include "rabatter.php";
  $_VIEW["content"] = ob_get_clean();
}

if($_VIEW["level1Id"] == 0 && $_VIEW["level2Id"] == 1 && $_VIEW["level3Id"] == 0) {
  ob_start();
  include "medlemskab.php";
  $_VIEW["content"] = ob_get_clean();
}

if(isset($_GET["koncerter"])) {
  $_VIEW["level3Breadcrumb"] = array(
    generateUrl("level3=0", "Rabatter og tilbud"),
  );
  $_VIEW["level3Menus"] = array(
    generateUrl("level3=0&koncerter=1", "Koncerter"),
    generateUrl("", "Hjælpemidler"),
    generateUrl("", "Kommunikation"),
    generateUrl("", "Bekvemmelighed"),
    generateUrl("", "Transport"),
    generateUrl("", "Underholdning"),
    generateUrl("", "Rejser"),
  );
  ob_start();
  include "koncerter.php";
  $_VIEW["content"] = ob_get_clean();
}

if(isset($_GET["violin"])) {
  $_VIEW["level3Breadcrumb"] = array(
    generateUrl("level3=0", "Rabatter og tilbud"),
    generateUrl("level3=0&koncerter=1", "Koncerter"),
  );

  $_VIEW["level3Menus"] = array(
    generateUrl("level3=0&violin=1", "Violinkoncerter"),
    generateUrl("", "Liedkoncerter"),
  );
  ob_start();
  include "violin.php";
  $_VIEW["content"] = ob_get_clean();
}

if(isset($_GET["itemID"])) {
  $_VIEW["level3Breadcrumb"] = array(
    generateUrl("level3=0", "Rabatter og tilbud"),
    generateUrl("level3=0&koncerter=1", "Koncerter"),
    generateUrl("level3=0&violin=1", "Violinkoncerter"),
  );

  ob_start();
  include "view_item.php";
  $_VIEW["content"] = ob_get_clean();
}

  
include "site.php";
?>
