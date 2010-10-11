<%!
    endpoint_override = "shop.index"
%>
<%inherit file="/main.mako"/>
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
  background-color: #CCC;
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
  background-color: #6666CC;
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
  background-color: #CCCCFF;
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
#arrow_1{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -3890px 50%;
  width:30px;
}
#arrow_2{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -2333px 50%;
  width:30px;
}
#arrow_3{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -795px 50%;
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
    <div class="orderInfo">
        <div id="insideOrderInfo">
            <form style="display: inline" action="${url_for("shop.choose_payment", method="POST")}" method="POST">
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
            </div>
            <input type="submit" value="Fortsæt" />
            </form>
            <div style="clear: both"></div>
        </div>    
</div>

