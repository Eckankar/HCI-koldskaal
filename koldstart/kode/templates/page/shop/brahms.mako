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
  background-color: #6666CC;
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
  background-color: #CCCCFF;
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
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -2333px 50%;
  width:30px;
}
#arrow_2{
  background: #ccccff url(https://s.yimg.com/lq/i/reg/ar_progress_sprite.png) -3110px 50%;
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
<h1> Violinkoncert (Brahms)</h1>
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
        <img src="/static/images/item_4.jpg" alt="Violinkoncert (Brahms)" title="Violinkoncert (Brahms)" class="orderImage"/>
        <h3>Violinkoncert (Brahms)</h3>
        <ul id="orderDetailsList">
            <li><strong>Tid:</strong> Oktober 2010</li>
            <li><strong>Sted:</strong> Amager</li>
            <li style="margin-top: 1em"><em>Normalpris:</em> 300,00 kr.</li>
            <li><strong>Din pris som guldmedlem:</strong> 270,00 kr.</li>
        </ul>
        <strong>Ønsket antal:</strong>
        <select><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option></select>
        <form action="${url_for("shop.enter_info", method="POST")}" method="POST" style="display: inline">
            <input type="submit" value="Køb" />
        </form>
        <div style="clear: both"></div>
    </div>
    <div class="orderInfo" style="margin-top: .5em;">
        <div id="insideOrderInfo">
            <p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at ligula lectus. Phasellus dapibus enim eu est tempus dignissim. Aliquam erat volutpat. Donec cursus, augue eget faucibus fermentum, purus arcu interdum tellus, eu accumsan nisl nunc eu elit. In ipsum tellus, commodo a rhoncus vel, molestie in sem. Maecenas in sapien nisl, vitae gravida sapien. Pellentesque in augue dui. Aliquam et nunc nisi, eget rhoncus ante. In porttitor egestas odio eget bibendum. Praesent sagittis urna id risus placerat et porttitor nisi tempus. Mauris congue fringilla massa, sit amet tempus sapien imperdiet et. Mauris nec arcu ac sapien pulvinar volutpat. Mauris egestas hendrerit cursus.
            </p>
            <p>
Nulla ipsum nunc, scelerisque id fermentum non, egestas et risus. Donec accumsan, sapien eget rutrum ullamcorper, ante ligula porttitor diam, at posuere nunc arcu sit amet orci. In vestibulum, lectus vel ullamcorper rhoncus, lorem sem feugiat nibh, nec tempus ipsum mi sit amet arcu. Integer eu varius lorem. Ut vel elit metus, ut rhoncus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et dui eu mi placerat condimentum in sit amet quam. Quisque congue nulla lacus. Integer fermentum, sem euismod rhoncus pretium, quam felis bibendum eros, non consequat leo nibh id nunc. Vestibulum dictum, velit non varius rutrum, nisi nibh iaculis nisl, at accumsan odio felis in arcu. Duis mi ipsum, rutrum blandit volutpat in, pretium sed metus. Integer dictum est ut urna rhoncus sed consectetur metus tempus. Donec eget turpis enim, nec elementum est. Integer viverra, nunc nec accumsan congue, nunc turpis imperdiet sapien, vel elementum ipsum mauris et tellus. Aliquam vitae enim eleifend libero placerat mattis eu a eros. Mauris consequat velit id tellus euismod viverra. Integer quam magna, sollicitudin nec accumsan quis, pharetra ut elit.
            </p>
        </div>
    </div>
