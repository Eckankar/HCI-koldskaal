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
  background-color: #CCC;
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
  background-color: #CCC;
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
#step_4 { background-color: #6666CC }
#arrow_1{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -1555px 50%;
  width:30px;
}
#arrow_2{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -1555px 50%;
  width:30px;
}
#arrow_3{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -3900px 50%;
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
<div class="orderInfo" style="min-height: 100px">
    <div id="insideOrderInfo">
    Din ordre er hermed modtaget.
    
    Ordren vil blive behandlet inden for 5 arbejdsdage.
    </div>
</div>
