<%inherit file="/html5.mako"/>
<%!
    endpoint_override = None
    menu = [
        (("index", "Medlemmer"), [
            (("index", u"Det gør vi for dig"), [
                ("index", u"Det gør vi for dig")
            ]),
            (("member.signup_form", u"Medlemsservice"), [
                ("member.signup_form", u"Bliv medlem")
            ]),
            (("member.offers", u"Medlemstilbud"), [
                ("member.offers", u"Medlemstilbud")
            ]),
            (("blanks.network", u"Netværket"), [
                ("blanks.network", u"Netværket")
            ]),
            (("blanks.counseling", u"Rådgivning"), [
                ("blanks.counseling", u"Rådgivning")
            ]),
            (("blanks.events", u"Arrangementer"), [
                ("blanks.events", u"Arrengementer")
            ]),
        ]),
        (("blanks.volunteer", "For frivillige"), [
            (("blanks.volunteer", u"For frivillige"), [
                ("blanks.volunteer", u"For frivillige")
            ])
        ]),
        (("blanks.presspolitics", "Presse og politik"), [
            (("blanks.presspolitics", u"Presse og politik"), [
                ("blanks.presspolitics", u"Presse og politik")
            ])
        
        ]),
        (("blanks.worklife", "Arbejsliv"), [
            (("blanks.worklife", u"Arbejsliv"), [
                ("blanks.worklife", u"Arbejsliv")
            ])
        
        ])
    ]
    def get_navpath(endpoint):
        level = [None, None, None]
        a = 0
        for x in menu:
            if endpoint == x[0][0]:
                level[0] = a
            b = 0
            for y in x[1]:
                if endpoint == y[0][0]:
                    level[0], level[1] = a, b
                c = 0
                for z in y[1]:
                    if endpoint == z[0][0]:
                        level[0], level[1], level[2] = a, b, c
                        return level
                    c += 1
                b += 1
            a += 1
        return level
        
%><%
    if self.attr.endpoint_override != None:
        navpath = get_navpath(self.attr.endpoint_override)
    else:
        navpath = get_navpath(endpoint)
%>
<head>
    <meta charset="utf-8" />
    <title>Pensionistsagen</title>
    <link rel="stylesheet" href="/static/css/master.css" type="text/css" media="screen" />
    <script type="text/javascript" src="/static/javascript/contrib/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="/static/javascript/contrib/jquery.corner.js"></script>
    <script type="text/javascript" src="/static/javascript/master.js"></script>
</head>
<body>
    <header>
        <img src="/static/images/logo_lille.png" alt="Pensionistsagen" />
    </header>
    <%include file="/menu/menu.mako" args="menu=menu, navpath=navpath"/>
    <%include file="/menu/submenu.mako" args="menu=menu, navpath=navpath"/>
    <%include file="/menu/subsubmenu.mako" args="menu=menu, navpath=navpath"/>
    <section id="content">
        ${next.body()}
    </section>
</body> 
