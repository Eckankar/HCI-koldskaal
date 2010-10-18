# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local, url_for
from werkzeug import redirect

@expose(["GET"], ["/bruger/login"])
def login():
    local.response = redirect(url_for("index"))
    local.response.set_cookie("user_id", 1)

@expose(["GET"], ["/bruger/log_ud"])
def logout():
    local.response = redirect(url_for("index"))
    local.response.delete_cookie("user_id")
