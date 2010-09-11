<?php
    if (empty($_GET['koeb_step'])) {
        $step = 1;
    } else {
        $step = (int)$_GET['koeb_step'];
    }
?>
<!-- Progress bar stuff -->
<style>
#progressBar{
  /*padding-bottom:0.5em;*/
  border:1px solid #6666cc;
  font: normal normal normal 13px/normal arial, helvetica, clean, sans-serif;
  border-spacing: 0px;
  margin-bottom: .5em;
}
#progressBar p{
  font-weight:bold;
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:0;
  text-align:center;
}
#steps{
  padding:2px;
  background-color:white;
}
#step_0 p{
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:0;
}
#step_1{
  text-align:center;
  background-color: <?= $step == 1 ? '#6666CC' : '#CCC' ?>;
  color:#fff;
}
#step_1 p{
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:5px;
}
#step_2{
  text-align:center;
  background-color: <?= $step == 1 ? '#CCCCFF' : ($step == 2 ? '#6666CC' : '#CCC') ?>;
  color:#fff;
}
#step_2 p{
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:0;
}
#step_3{
  text-align:center;
  background-color: <?= $step > 2 ? '#6666CC' : '#CCCCFF' ?>;
  color:#fff;
}
#step_3 p{
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:0;
}
#arrow_1{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) <?= $step == 1 ? '-2333px' : ($step == 2 ? '-3890px' : '-1555px') ?> 50%;
  width:30px;
}
#arrow_2{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) <?= $step == 1 ? '-3110px' : ($step == 2 ? '-2333px' : '-3890px')  ?> 50%;
  width:30px;
}
#arrow_3{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) <?= $step == 3 ? '-35px' : '-795px' ?> 50%;
  width:20px;
}
.orderImage {
    float: left;
    border-right: 1px solid gray;
    margin-right: .5em;
}

#innerOrderHeader {
    margin-right: -2px;
}

#orderInfo {
    width: 100%;
    border: 1px solid gray;
}

#orderDetailsList {
    list-style: none;
    margin-bottom: 2em;
}
</style>
<!-- end of progress bar stuff -->
<header id="innerOrderHeader">
<h1>Køb af billetter til Violinkoncert (Brahms)</h1>
<table width="100%" cellpadding="0" cellspacing="0" border="0" id="progressBar">
  <tbody><tr valign="center">
    <td id="step_0"><p>Forløb</p></td>
    <td id="steps">
      <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tbody><tr valign="center">
	  <td id="step_1"><p>Vælg antal</p></td><td id="arrow_1">&nbsp;</td>
	  <td id="step_2"><p>Indtast oplysninger</p></td><td id="arrow_2">&nbsp;</td>
	  <td id="step_3"><p>Ordre fuldført</p></td><td id="arrow_3">&nbsp;</td>
        </tr>
      </tbody></table>
  </td></tr>
</tbody></table>
</header>
<? if ($step == 1): ?>
    <div id="orderInfo">
        <img src="http://pensionist.coq.dk/images/item_4.jpg" alt="Violinkoncert (Brahms)" title="Violinkoncert (Brahms)" class="orderImage"/>
        <h3>Violinkoncert (Brahms)</h3>
        <ul id="orderDetailsList">
            <li><strong>Tid:</strong> Oktober 2010</li>
            <li><strong>Sted:</strong> Amager</li>
            <li style="margin-top: 1em"><em>Normalpris:</em> 300,00 kr.</li>
            <li><strong>Din pris som guldmedlem:</strong> 270,00 kr.</li>
        </ul>
        <strong>Ønsket antal:</strong>
        <select><? for ($i = 1; $i <= 10; $i++) { print "<option>$i</option>"; } ?></select>
        <form style="display: inline">
        <?
            $_GET['koeb_step'] = 2;
            foreach ($_GET as $k => $v) {
                print "<input type='hidden' name='$k' value='$v' />";
            }
        ?>
        <input type="submit" value="Køb" />
        </form>
        <div style="clear: both"></div>
    </div>
<? elseif ($step == 2): ?>
    <div id="orderInfo">
        
        <div style="clear: both"></div>
    </div>
<? elseif ($step == 3): ?>

<? endif; ?>