<%inherit file="/main.mako"/>
<header>
    <h1>Rabatter og tilbud</h1>
    <p>Tilbud, rabatter og fordele fra vores mange samarbejdspartnere. Find de nyeste tilbud, oplevelser og produkter i kategorierne.</p>
</header>

<div id="kategoriVisning">
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented');" alt="Gå til bekvemmeligheder" title="Gå til bekvemmeligheder">
            <img src="/static/images/kategori_bekvemmeligheder.jpg" title="Bekvemmeligheder" alt="Bekvemmeligheder"/>
            <h2>Bekvemmeligheder</h2>
        </a>
        Komfort til hjemmet
    </div>
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented');" alt="Gå til hjælpemidler" title="Gå til hjælpemidler">
            <img src="/static/images/kategori_hjaelpemidler.jpg" title="Hjælpemidler" alt="Hjælpemidler"/>
            <h2>Hjælpemidler</h2>
        </a>
        Tryghed og hjælp i dagligdagen
    </div>
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented');" alt="Gå til kommunikation" title="Gå til kommunikation">
            <img src="/static/images/kategori_kommunikation.jpg" title="Kommunikation" alt="Kommunikation"/>
            <h2>Kommunikation</h2>
        </a>
        Kontakt til omverdenen
    </div>
    <div class="kategoriBox">
        <a href="${url_for("shop.concerts")}" alt="Gå til koncerter" title="Gå til koncerter">
            <img src="/static/images/kategori_koncert.jpg" title="Koncerter" alt="Koncerter"/>
            <h2>Koncerter</h2>
        </a>
        Musik og oplevelser til sjælen
    </div>
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented');" alt="Gå til rejser" title="Gå til rejser">
            <img src="/static/images/kategori_rejser.jpg" title="Rejser" alt="Rejser"/>
            <h2>Rejser</h2>
        </a>
        Udforsk verden
    </div>
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented');" alt="Gå til transport" title="Gå til transport">
            <img src="/static/images/kategori_transport.jpg" title="Transport" alt="Transport"/>
            <h2>Transport</h2>
        </a>
        Kom omkring i dagligdagen
    </div>
    <div class="kategoriBox">
        <a href="javascript:alert('not implemented');" alt="Gå til underholdning" title="Gå til underholdning">
            <img src="/static/images/kategori_underholdning.jpg" title="Underholdning" alt="Underholdning"/>
            <h2>Underholdning</h2>
        </a>
        Underholdning, museer og cirkus
    </div>
</div>