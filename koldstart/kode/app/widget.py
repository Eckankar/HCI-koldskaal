from app.utils import template_render, url_for, local

def sidemenu():
    user_id = local.session.get("user_id")
    
    is_logged_in = False
    name,email = None,None
    if is_logged_in:
        name,email = "lol", "hej@hej.dk"
    
    if is_logged_in:
        privs = get_privset(user_id)
    else:
        privs = set()
    
    return template_render("widget/sidemenu.mako",
        is_logged_in = is_logged_in,
        email = email,
        privs = privs
    )
    
def statusbar():
    is_logged_in = local.session.get("user_id") != None
    name,email = None,None
    if is_logged_in:
        name,email = "lol", "hej@hej.dk"
    
    return template_render("widget/statusbar.mako",
        is_logged_in = is_logged_in,
        name = name,
        email = email
    )
