<%inherit file="/main.mako"/>
<header>
    <h1>Rabatter og tilbud</h1>
    <p>Tilbud, rabatter og fordele fra vores mange samarbejdspartnere. Find de nyeste tilbud, oplevelser og produkter i kategorierne.</p>
</header>

    <div id="shop_rightmenu">
        <div id="shop_new_items">
                <p>Nyt i shoppen</p>
                <div>
                    <img src="/static/images/shop/wireless_hearing_aid.jpg"/>
                    Wifi Høreapparat
                </div>
                <div>
                    <img src="/static/images/shop/panda_maske.jpg" />
                    Panda maske
                </div>
                <div>
                    <img src="/static/images/shop/louisiana.jpg" />
                    Udflugt til Louisiana
                </div>
        </div>
        <div id="shop_upcoming_events">
            <p>Kommende begivenheder</p>
            <dl>
                <dt>Oktober</dt>
                <dd><strong>18.</strong> Violinkoncert (Brahms)</dd>
                <dd><strong>20.</strong> Se pandaerne i Zoo</dd>
                <dd><strong>25.</strong> PC Kørekort</dd>
                <dd><strong>28.</strong> Microsoft Torsdag</dd>
                <dt>November</dt>
                <dd><strong>2.</strong> På Bakken med Bent Burg</dd>
                <dd><strong>3.</strong> Julemanden kommer på tidligt visit</dd>
                <dd><strong>15.</strong> Udflugt til din mor</dd>
                <dd><strong>16.</strong> Udflugt til din mor (fortsat)</dd>
                <dd>Bitch</dd>
            </dl>
        </div>
    </div>
<div id="kategoriVisning" style="float:left;width:500px;">
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
