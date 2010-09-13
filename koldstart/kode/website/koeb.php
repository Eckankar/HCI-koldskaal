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
  background-color: <?= $step == 3 ? '#6666CC' : ($step == 4 ? '#CCC' : '#CCCCFF') ?>;
  color:#fff;
}
#step_3 p{
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:0;
}
#step_4 p{
  padding-top:2px;
  padding-right:0;
  padding-bottom:2px;
  padding-left:0;
}
<?php
    if ($step == 4) {
        print "#step_4 { background-color: #6666CC }\n";
    }
?>
#arrow_1{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) <?= $step == 1 ? '-2333px' : ($step == 2 ? '-3890px' : '-1555px') ?> 50%;
  width:30px;
}
#arrow_2{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) <?= $step == 1 ? '-3110px' : ($step == 2 ? '-2333px' : ($step == 3 ? '-3890px' : '-1555px'))  ?> 50%;
  width:30px;
}
#arrow_3{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) <?= $step == 3 ? '-35px' : ($step == 4 ? '-3900px' : '-795px') ?> 50%;
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

.orderInfo {
    width: 100%;
    border: 1px solid gray;
}

#orderDetailsList {
    list-style: none;
    margin-bottom: 2em;
}

#insideOrderInfo {
            padding: 0.5em;
}

input[type="radio"] {
    margin-right: .5em;
}

.addrCont {
    margin-bottom: 1em;
}
</style>
<!-- end of progress bar stuff -->
<header id="innerOrderHeader">
<h1>Køb af billetter til Violinkoncert (Brahms)</h1>
<table width="100%" cellpadding="0" cellspacing="0" border="0" id="progressBar">
  <tbody><tr valign="center">
    <td id="steps">
      <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tbody><tr valign="center">
	  <td id="step_1"><p>Vælg antal</p></td><td id="arrow_1">&nbsp;</td>
	  <td id="step_2"><p>Indtast oplysninger</p></td><td id="arrow_2">&nbsp;</td>
	  <td id="step_3"><p>Vælg betalingsform</p></td><td id="arrow_3">&nbsp;</td>
	  <td id="step_4"><p>Ordre fuldført</p></td><td id="arrow_4">&nbsp;</td>
        </tr>
      </tbody></table>
  </td></tr>
</tbody></table>
</header>
<? if ($step == 1): ?>
    <div class="orderInfo">
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
    <div class="orderInfo" style="margin-top: 1em;">
        <div id="insideOrderInfo">
            <p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at ligula lectus. Phasellus dapibus enim eu est tempus dignissim. Aliquam erat volutpat. Donec cursus, augue eget faucibus fermentum, purus arcu interdum tellus, eu accumsan nisl nunc eu elit. In ipsum tellus, commodo a rhoncus vel, molestie in sem. Maecenas in sapien nisl, vitae gravida sapien. Pellentesque in augue dui. Aliquam et nunc nisi, eget rhoncus ante. In porttitor egestas odio eget bibendum. Praesent sagittis urna id risus placerat et porttitor nisi tempus. Mauris congue fringilla massa, sit amet tempus sapien imperdiet et. Mauris nec arcu ac sapien pulvinar volutpat. Mauris egestas hendrerit cursus.
            </p>
            <p>
Nulla ipsum nunc, scelerisque id fermentum non, egestas et risus. Donec accumsan, sapien eget rutrum ullamcorper, ante ligula porttitor diam, at posuere nunc arcu sit amet orci. In vestibulum, lectus vel ullamcorper rhoncus, lorem sem feugiat nibh, nec tempus ipsum mi sit amet arcu. Integer eu varius lorem. Ut vel elit metus, ut rhoncus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et dui eu mi placerat condimentum in sit amet quam. Quisque congue nulla lacus. Integer fermentum, sem euismod rhoncus pretium, quam felis bibendum eros, non consequat leo nibh id nunc. Vestibulum dictum, velit non varius rutrum, nisi nibh iaculis nisl, at accumsan odio felis in arcu. Duis mi ipsum, rutrum blandit volutpat in, pretium sed metus. Integer dictum est ut urna rhoncus sed consectetur metus tempus. Donec eget turpis enim, nec elementum est. Integer viverra, nunc nec accumsan congue, nunc turpis imperdiet sapien, vel elementum ipsum mauris et tellus. Aliquam vitae enim eleifend libero placerat mattis eu a eros. Mauris consequat velit id tellus euismod viverra. Integer quam magna, sollicitudin nec accumsan quis, pharetra ut elit.
            </p>
        </div>
    </div>
<? elseif ($step == 2): ?>
    <div class="orderInfo">
        <div id="insideOrderInfo">
            <form style="display: inline">
            <div class="addrCont">
                <input type="radio" name="addressChoice" checked/><label>Bestil med din standardadresse:</label>
                <address>
                    Karl Friedrich Codierer <br/>
                    Universitetsparken 1 <br />
                    2100 København Ø <br />
                    Tlf: +45 35321435 <br />
                    Email: <a href="mailto:spiltirsdag@diku.dk">spiltirsdag@diku.dk</a>
                </address>
            </div>
            <div class="addrCont">
                <input type="radio"  name="addressChoice"/><label>Bestil med følgende adresse:</label>
                <div class="cmxform">
                    <fieldset style="border: none">
                      <ol>
                        <li>
                          <label for="navn">Navn<em>*</em></label>
                          <input type="text" id="navn" name="navn" />
                        </li>
                        <li>
                          <label for="address">Addresse<em>*</em></label>
                          <input type="text" name="address" id="address" />
                        </li>
                        <li>
                          <label for="town-city">By<em>*</em></label>
                          <input type="input" name="town-city" id="town-city" />
                        </li>
                        <li>
                          <label for="postnummer">Postnummer<em>*</em></label>
                          <input type="input" name="postnummer" id="postnummer" maxlength="4" />
                        </li>
                        <li>
                          <label for="telefon">Telefon<em>*</em></label>
                          <input type="input" name="telefon" id="telefon" />
                        </li>
                        <li>
                          <label for="telefon">Email<em>*</em></label>
                          <input type="input" name="name" id="email" />
                        </li>
                      </ol>
                    </fieldset>
                </div>
            </div></form>
            
            <form style="display: inline">
            <?
                $_GET['koeb_step'] = 3;
                foreach ($_GET as $k => $v) {
                    print "<input type='hidden' name='$k' value='$v' />";
                }
            ?>
            <input type="submit" value="Fortsæt" />
            </form>
            <div style="clear: both"></div>
        </div>    
    </div>
<? elseif ($step == 3): ?>
<div class="orderInfo">
    <div id="insideOrderInfo">
        <form class="cmxform">
            <fieldset>
            <legend>Vælg betalingsform</legend>
            <ul>
                <li>
                    <input type="radio" name="betalingsform" checked/> Betal med kreditkort
                    <div>
                        <label for="kortnr">Kortnummer</label>
                        <input type="input" name="kortnr" id="kortnr" /><br/>
                        <label for="sikkerhed">Sikkerhedskode</label>
                        <input type="input" name="sikkerhed" id="sikkerhed" /><br/>
                        <label for="udlob">Udløbsdato</label>
                        <input type="input" name="udlob" id="udlob" />

                    </div>
                </li>
                <li>
                    <input type="radio" name="betalingsform" /> Betal med bankoverførsel
                    <div>
                        Hvis dette vælges, betal da 1080,00 kr. til følgende konto:<br/>
                        <div>
                            Reg nr.: 4929 <br/>
                            Konto: 6621578323
                        </div>
                        Skriv teksten <strong style="padding-left: .5em; padding-right: .5em; border: 1px solid gray; background: silver">P5210CR</strong> i kommentarfeltet på betalingen, så vi ved at den er tilknyttet denne ordre.
                    </div>
                </li>
            </ul>
            </fieldset>
        </form>
        <form style="display: inline">
            <?
            $_GET['koeb_step'] = 4;
            foreach ($_GET as $k => $v) {
            print "<input type='hidden' name='$k' value='$v' />";
            }
            ?>
            <input type="submit" value="Fortsæt" />
        </form>
        <div style="clear: both"></div>
    </div>
</div>
<? elseif ($step == 4): ?>
<div class="orderInfo" style="min-height: 100px">
    <div id="insideOrderInfo">
    Din ordre er hermed modtaget.
    
    Ordren vil blive behandlet inden for 5 arbejdsdage.
    </div>
</div>
<? endif; ?>
