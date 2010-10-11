<%!
    endpoint_override = "shop.index"
%>
<%inherit file="/main.mako"/>
<header>
    <h1>Koncerter</h1>
    <p>Musik og oplevelser til sjælen.</p>
</header>

<div id="kategoriVisning">
    <div class="kategoriBox">
        <a href="${url_for("shop.violin_concerts")}"><img src="/static/images/underkategori_violin.jpg" title="Violinkoncert"/>
        <h2>Violinkoncert</h2></a>
        Nyd en afslappende violinkoncert
    </div>
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented')"><img src="/static/images/underkategori_lied.jpg" title="Liedkoncert"/>
        <h2>Liedkoncert</h2></a>
        Et indslag fra liedens univers
    </div>
</div>

