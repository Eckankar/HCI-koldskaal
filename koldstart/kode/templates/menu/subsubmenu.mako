<%page args="menu,navpath"/>
<aside>
    <ul id="level3" class="darkMenu${navpath[0]}">
%for v in menu[navpath[0]][1][navpath[1]][1]:
        <li><a href="${url_for(v[0])}">${v[1]}</a></li>
%endfor
    </ul>
</aside>
<%doc>    
        <li><a href="javascript:alert('not implemented');">Nowhere</a></li>
        <li><a href="javascript:alert('not implemented');">Noplace</a></li>
        <li><a href="javascript:alert('not implemented');">Nothing</a></li>
</%doc>

