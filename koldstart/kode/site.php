<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head> 
    <meta charset="utf-8" />
    <title>Pensionistsagen</title>
    <link rel="stylesheet" href="master.css" type="text/css" media="screen" /> 
  </head>
  <body>
    <header>
      <h1><?= $_VIEW["title"]?></h1>
    </header>
    <nav>
      <ul id="level1">
        <li><a>Hovedmenu 1</a></li>
        <li><a>Hovedmenu 2</a></li>
        <li><a>Hovedmenu 3</a></li>
      </ul>
      <ul id="level2">
        <li><a>Undermenu 1</a></li>
        <li><a>Undermenu 2</a></li>
        <li><a>Undermenu 3</a></li>
      </ul>
    </nav>
    <div class="clear"></div>
    <aside>
      <ul id="level3">
        <li><a>Under<sup>2</sup>menu</a></li>
        <ul>
          <li><a>Under<sup>3</sup>menu</a></li>
          <ul>
            <li>Punkt 1</li>
            <li>Punkt 2</li>
            <li>Punkt 3</li>
            <li>Punkt 4</li>
          </ul>
        </ul>
      </ul>
    </aside>
    <section id="content">
      <?= $_VIEW["content"] ?>
    </section>
  </body>
</html>
