#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
import couchdb
from itertools import groupby

from pprint import pprint


sys.path[0] = os.path.join(os.path.dirname(__file__), "..")
from app.config import config

os.chdir(sys.path[0])

try:
    server = couchdb.Server(config["couchdb_server_url"])
    db = server[config["couchdb_db"]]
except couchdb.client.ResourceNotFound:
    db = server.create(config["couchdb_db"])
except:
    print "Something bad happened while connecting to couchdb."
    raise SystemExit

def get_files(directory="."):
    dir = os.listdir(directory)
    dir = [os.path.join(directory, entry) for entry in dir]
    files = filter(os.path.isfile, dir)
    directories = filter(os.path.isdir, dir)
    for dir in directories:
        files += get_files(dir)
    return files

views = []
for file in get_files(directory="views"):
    content = open(file).read()
    designdoc = os.path.split(os.path.split(os.path.split(file)[0])[0])[1]
    viewname = os.path.split(os.path.split(file)[0])[1]
    type = os.path.split(file)[1][:-3]
    views += [(designdoc, type, viewname, content)]
views.sort()

docs = []
for designdoc, views in groupby(views, lambda val: val[0]):
    try:
        doc = db["_design/" + designdoc]
    except couchdb.client.ResourceNotFound:
        doc = {}
        exists = False
    else:
        exists = True
    doc["_id"] = "_design/" + designdoc
    doc["language"] = "javascript"
    doc["views"] = {}
    for designdoc, type, viewname, content in views:
        if not viewname in doc["views"]:
            doc["views"][viewname] = {}
        doc["views"][viewname].update({type: content})
    
    if not exists or db[doc["_id"]] != doc:
        print "Updating", designdoc + ",", viewname + ",", type
        db[doc["_id"]] = doc
