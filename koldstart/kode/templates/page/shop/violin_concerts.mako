<%!
    endpoint_override = "shop.index"
%>
<%inherit file="/main.mako"/>
<header>
    <h1>Violinkoncerter</h1>
    <p>Nyd en afslappende violinkoncert.</p>
</header>

<div id="kategoriVisning">
    <div class="kategoriBox">
        <a href="${url_for("shop.brahms")}"><img src="/static/images/item_4.jpg" title="Violinkoncert"/>
        <h2>Violinkoncert (Brahms)</h2></a>
        Et mesterværk fra en mester, opført i smukke omgivelser
    </div>
</div>
