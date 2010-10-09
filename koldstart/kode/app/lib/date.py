# -*- coding: utf-8 -*-
from datetime import datetime
from pytz import timezone

local = timezone("Europe/Copenhagen")
utc = timezone("UTC")
def datetostring(date):
    return date.strftime('%Y-%m-%dT%H:%M:%SZ')
    
def datefromstring(string):
    return datetime.strptime(string, "%Y-%m-%dT%H:%M:%SZ") \
        .replace(tzinfo = utc) \
        .astimezone(local)
