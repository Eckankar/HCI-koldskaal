<div id="signupbox">
%if is_logged_in:
    Du er logget ind. <a href="${url_for("user.logout")}">Klik her for at logge ud</a>
    <br/><br/><hr><br/>
    <h3>Din Kalender</h3>
    <dl>
        <dt>25. oktober</dt><dd>PC Kørekort</dd>
        <dt>3. november</dt><dd>Julemanden kommer på tidligt visit</dd>
        <dt>16. november</dt><dd>Udflugt til din mor (fortsat)</dd>
    </dl>
%else:
    <a href="${url_for("user.login")}">Klik her for at logge ind</a> eller
    <a href="${url_for("member.signup_form")}">Bliv medlem nu</a>
%endif
</div>

