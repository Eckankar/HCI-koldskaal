<div id="signupbox">
%if is_logged_in:
    Du er logget ind. <a href="${url_for("user.logout")}">Klik her for at logge ud</a>
%else:
    <a href="${url_for("user.login")}">Klik her for at logge ind</a> eller
    <a href="${url_for("member.signup_form")}">Bliv medlem nu</a>
%endif
</div>
