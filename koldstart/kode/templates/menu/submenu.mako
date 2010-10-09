<%page args="menu,navpath"/>
<nav id="level2" class="lightMenu${navpath[0]}">
    <ul>
%for i, v in enumerate(menu[navpath[0]][1]):
%if i == navpath[1]:
    <li class="selected darkMenu${navpath[0]}">
%else:
    <li class="unselected lightMenu">
%endif
    <a href="${url_for(v[0][0])}">${v[0][1]}</a>
    </li>
%endfor
    </ul>
    <div class="menuBar darkMenu${navpath[0]}"></div>
</nav>
