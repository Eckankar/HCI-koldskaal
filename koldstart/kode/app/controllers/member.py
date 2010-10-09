# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/medlemsskab"])
def signupform():
    template_response("/page/membership/signupform.mako")

@expose(["GET"], ["/medlemsskab/tilbud"])
def offers():
    template_response("/page/blank.mako")

