# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/blank/netvaerk"])
def network():
    template_response("/page/blank.mako")

@expose(["GET"], ["/blank/raadgivning"])
def counseling():
    template_response("/page/blank.mako")

@expose(["GET"], ["/blank/arrangementer"])
def events():
    template_response("/page/blank.mako")

@expose(["GET"], ["/blank/frivillige"])
def volunteer():
    template_response("/page/blank.mako")

@expose(["GET"], ["/blank/presseogpolitik"])
def presspolitics():
    template_response("/page/blank.mako")

@expose(["GET"], ["/blank/arbejdsliv"])
def worklife():
    template_response("/page/blank.mako")

