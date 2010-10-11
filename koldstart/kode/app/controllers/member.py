# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/medlemsskab"])
def signup_form():
    template_response("/page/membership/signupform.mako")

@expose(["POST"], ["/medlemsskab/oprettet"])
def signup_done():
    template_response("/page/membership/success.mako")

@expose(["GET"], ["/medlemsskab/tilbud"])
def offers():
    template_response("/page/blank.mako")

