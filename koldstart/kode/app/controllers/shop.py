# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/medlemstilbud"])
def index():
    template_response("/page/shop/index.mako")

@expose(["GET"], ["/medlemstilbud/koncerter"])
def concerts():
    template_response("/page/shop/concerts.mako")

@expose(["GET"], ["/medlemstilbud/koncerter/violin"])
def violin_concerts():
    template_response("/page/shop/violin_concerts.mako")

@expose(["GET"], ["/medlemstilbud/koncerter/violin/brahms"])
def brahms():
    template_response("/page/shop/brahms.mako")

@expose(["POST"], ["/medlemstilbud/bestil"])
def enter_info():
    template_response("/page/shop/enter_info.mako")

@expose(["POST"], ["/medlemstilbud/bestil/betalingsform"])
def choose_payment():
    template_response("/page/shop/choose_payment.mako")

@expose(["POST"], ["/medlemstilbud/bestil/success"])
def order_confirmed():
    template_response("/page/shop/order_confirmed.mako")
