<%page args="menu,navpath"/>
<nav id="level1">
    <ul>
%for i, v in enumerate(menu):
%if i == navpath[0]:
        <li class="selected lightMenu${i}">
%else:
        <li class="unselected lightMenu${i}">
%endif
    <a href="${url_for(v[0][0])}">${v[0][1]}</a>
    </li>
%endfor
    </ul>
    <div class="menuBar lightMenu${navpath[0]}"></div>
</nav>
