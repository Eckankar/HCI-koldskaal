<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head> 
    <meta charset="utf-8" />
    <title>Pensionistsagen</title>
    <link rel="stylesheet" href="master.css" type="text/css" media="screen" /> 
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://github.com/malsup/corner/raw/master/jquery.corner.js"></script>
    <script type="text/javascript" src="master.js"></script>
  </head>
  <body>
    <header>
      <img src="images/logo_lille.png" alt="Pensionistsagen" />
    </header>
    <nav>
      <ul id="level1">
<?php foreach($_VIEW["level1Menus"] as $id => $link): ?>
        <li class="<?=($id == $_VIEW["level1Id"] ? "selected" : "unselected") . " lightMenu" . $id ?>"><a href="<?= urlencode($link["url"])?>"><?=$link["title"]?></a></li>
<?php endforeach ?>
      </ul>
      <div class="menuBar lightMenu<?=$_VIEW["level1Id"]?>"></div>
      <ul id="level2">
<?php foreach($_VIEW["level2Menus"] as $id => $link): ?>
        <li class="<?=$id == $_VIEW["level2Id"] ? "selected darkMenu" . $_VIEW["level1Id"] : "unselected lightMenu" . $_VIEW["level1Id"] ?>"><a href="<?= urlencode($link["url"])?>"><?=$link["title"]?></a></li>
<?php endforeach ?>
      </ul>
    </nav>
    <div class="menuBar darkMenu<?=$_VIEW["level1Id"]?>"></div>
    <aside>
      <ul id="level3" class="darkMenu<?= $_VIEW["level1Id"]?>">
<?php foreach($_VIEW["level3Breadcrumb"] as $id => $link): ?>
        <?=str_repeat("  ", $id)?><li><a href="<?= urlencode($link["url"])?>"><?=$link["title"]?></a></li>
        <?=str_repeat("  ", $id)?><ul>
<?php endforeach ?>
<?php foreach($_VIEW["level3Menus"] as $id => $link): ?>
        <?=str_repeat("  ", count($_VIEW["level3Breadcrumb"]))?><li><a href="<?= urlencode($link["url"])?>"><?=$link["title"]?></a></li>
<?php endforeach ?>
<?php for($n = count($_VIEW["level3Breadcrumb"])-1; $n >= 0; $n--): ?>
        <?=str_repeat("  ", $n)?></ul>
<?php endfor ?>
      </ul>
    </aside>
    <section id="content">
      <?= $_VIEW["content"] ?>

    </section>
  </body>
</html>
