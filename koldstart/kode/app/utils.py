# -*- coding: utf-8 -*-
from os import listdir
from os.path import dirname, join, isfile, isdir, splitext
from werkzeug import Local, LocalManager
from werkzeug.routing import Map, Rule
import couchdb
from app.config import config
from mako.lookup import TemplateLookup

root_path = dirname(__file__)
local = Local()
local_manager = LocalManager([local])
application = local("application")

def get_files(directory="."):
    dir = listdir(directory)
    dir = [join(directory, entry) for entry in dir]
    files = filter(isfile, dir)
    directories = filter(isdir, dir)
    for dir in directories:
        files += get_files(dir)
    return files

url_map = Map()
responders = {}
def expose(methods, rules, **kw):
    def decorate(f):
        for rule in rules:
            name = f.__module__ + "." + f.__name__
            name = name[len(__package__) + len(".controllers."):]
            responders[name] = f
            url_map.add(Rule(rule, methods=methods, endpoint=name, **kw))
        return f
    return decorate

def db():
    return couchdb.Server(config["couchdb_server_url"])[config["couchdb_db"]]

template_lookup = TemplateLookup(
    directories=[join(root_path, "../templates")],
    input_encoding="utf-8",
    output_encoding="utf-8"
)

def url_for(endpoint, method="GET", _external=False, **values):
    return local.url_adapter.build(endpoint, values, method=method, force_external=_external)

def template_response(templatename, **kwargs):
    kwargs["response"] = local.response
    local.response.data = template_render(templatename, **kwargs)

def template_render(templatename, **kwargs):
    from xml.sax.saxutils import quoteattr, escape
    import widget
    import json
    template = template_lookup.get_template(templatename)
    kwargs["url_for"] = url_for
    kwargs["esc_attr"] = quoteattr
    kwargs["escape"] = escape
    kwargs["json"] = json.dumps
    kwargs["endpoint"] = local.endpoint
    kwargs["widget"] = widget
    return template.render(**kwargs)

for file in get_files(directory = __package__ + "/controllers"):
    __import__(splitext(file)[0].replace("/","."))
