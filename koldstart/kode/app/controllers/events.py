# -*- coding: utf-8 -*-
from app.utils import expose, template_response, local

@expose(["GET"], ["/events"])
def calendar():
    template_response("/page/events/calendar.mako")
