# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/", "/index"])
def index():
    template_response("/page/index.mako")

def error():
    template_response("/error/error.mako")

def notfound():
    template_response("/error/notfound.mako")
