<?php
$fp = fopen('varer.txt', 'r');
$_items = array();
while ($item = fgetcsv($fp, 0, ';')) {
    foreach ($item as $k => $v) {
        if ($v === 'NULL') {
            $item[$k] = null;
        }
    }
    $_items[(int)$item[0]] = array(
        'id'          => (int)$item[0],
        'leverandoer' => $item[1],
        'varenavn'    => $item[2],
        'varegruppe'  => $item[3],
        'undergruppe' => $item[4],
        'sted'        => $item[5],
        'dato'        => $item[6],
        'pris'        => (int)$item[7],
    );
}
fclose($fp);

//function getItemsByField($field, $value)
//{
//    global $_items;
//    return array_filter($_items, function($item) use ($field, $value) {
//        return $item[$field] == $value;
//    });
//}

function getItemByID($id)
{
    global $_items;
    if (!isset($_items[$id])) {
        return false;
    }
    return $_items[$id];
}

if (empty($_GET['itemID'])) {
    $_VIEW['content'] = 'You fail';
    return;
}

if (!$item = getItemByID($_GET['itemID'])) {
    $_VIEW['content'] = 'Varen findes ikke.';
    return;
}
?>
<header>
    <h1><?= htmlentities($item['varenavn']) ?></h1>
</header>

<dl>
    <?php if (null !== $item['sted']): ?>
    <dt>Sted:</dt>
    <dd><?= htmlentities($item['sted']) ?></dd>
    <?php endif ?>

    <?php if (null !== $item['dato']): ?>
    <dt>Dato:</dt>
    <dd><?= htmlentities($item['dato']) ?></dd>
    <?php endif ?>

    <dt>Pris:</dt>
    <dd><?= number_format($item['pris'] / 100, 2, ',', '.') ?></dd>

    <dt>Beskrivelse:</dt>
    <dd>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Curabitur at ligula lectus. Phasellus dapibus enim eu est tempus
        dignissim. Aliquam erat volutpat. Donec cursus, augue eget
        faucibus fermentum, purus arcu interdum tellus, eu accumsan
        nisl nunc eu elit. In ipsum tellus, commodo a rhoncus vel,
        molestie in sem. Maecenas in sapien nisl, vitae gravida sapien.
        Pellentesque in augue dui. Aliquam et nunc nisi, eget rhoncus
        ante. In porttitor egestas odio eget bibendum. Praesent sagittis
        urna id risus placerat et porttitor nisi tempus. Mauris congue
        fringilla massa, sit amet tempus sapien imperdiet et. Mauris
        nec arcu ac sapien pulvinar volutpat. Mauris egestas hendrerit
        cursus.</p>

        <p>Nulla ipsum nunc, scelerisque id fermentum non, egestas et
        risus. Donec accumsan, sapien eget rutrum ullamcorper, ante ligula
        porttitor diam, at posuere nunc arcu sit amet orci. In vestibulum,
        lectus vel ullamcorper rhoncus, lorem sem feugiat nibh, nec tempus
        ipsum mi sit amet arcu. Integer eu varius lorem. Ut vel elit
        metus, ut rhoncus ligula. Class aptent taciti sociosqu ad litora
        torquent per conubia nostra, per inceptos himenaeos. Mauris et dui
        eu mi placerat condimentum in sit amet quam. Quisque congue nulla
        lacus. Integer fermentum, sem euismod rhoncus pretium, quam felis
        bibendum eros, non consequat leo nibh id nunc. Vestibulum dictum,
        velit non varius rutrum, nisi nibh iaculis nisl, at accumsan odio
        felis in arcu. Duis mi ipsum, rutrum blandit volutpat in, pretium
        sed metus. Integer dictum est ut urna rhoncus sed consectetur
        metus tempus. Donec eget turpis enim, nec elementum est. Integer
        viverra, nunc nec accumsan congue, nunc turpis imperdiet sapien,
        vel elementum ipsum mauris et tellus. Aliquam vitae enim eleifend
        libero placerat mattis eu a eros. Mauris consequat velit id tellus
        euismod viverra. Integer quam magna, sollicitudin nec accumsan
        quis, pharetra ut elit.</p>
    </dd>
</dl>
