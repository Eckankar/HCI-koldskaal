# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/", "/index"])
def index():
    template_response("/page/index.mako")


