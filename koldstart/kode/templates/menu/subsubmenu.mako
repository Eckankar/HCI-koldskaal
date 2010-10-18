<%page args="menu,navpath"/>
<aside id="leftSideMenu">
    <ul id="level3" class="darkMenu${navpath[0]}">
%if navpath[1] != None:
%for v in menu[navpath[0]][1][navpath[1]][1]:
        <li><a href="${url_for(v[0])}">${v[1]}</a></li>
%endfor
    </ul>
    <div id="signupbox">
        <a href="/medlemsskab">Bliv medlem nu</a>
    </div>
</aside>
%endif
<%doc>    
        <li><a href="javascript:alert('not implemented');">Nowhere</a></li>
        <li><a href="javascript:alert('not implemented');">Noplace</a></li>
        <li><a href="javascript:alert('not implemented');">Nothing</a></li>
</%doc>

