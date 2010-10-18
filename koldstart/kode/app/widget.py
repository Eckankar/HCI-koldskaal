from app.utils import template_render, local

def loginstatus():
    user_id = local.request.cookies.get("user_id")
    
    is_logged_in = user_id != None
    name,email = None,None
    if is_logged_in:
        name,email = "Gerda Hansen", "privat@gerdahansen.name"
    
    return template_render("widget/loginstatus.mako",
        is_logged_in = is_logged_in,
        name = name,
        email = email,
    )
