#!/usr/bin/env python
# -*- coding: utf-8 -*-
from os.path import dirname, join
from pprint import pformat
import sys
sys.path[0] = join(dirname(__file__), "..")

def user_query(itemname, converter, default=None):
    while True:
        if default == None:
            answer = raw_input("Indtast %s: " % (itemname,))
        else:
            answer = raw_input("Indtast %s [%s]: " % (itemname, default))
            if answer == "":
                return default
        try:
            answer = converter(answer)
        except:
            print "Kunne ikke forstå værdien, prøv igen."
            continue
        return answer

def prompt_update_config():
    try:
        from app.config import config
    except ImportError:
        from app.defaultconfig import config
        config = config()

    for name, key, converter in [
        ("CouchDB Server URL", "couchdb_server_url", str),
        ("CouchDB db", "couchdb_db", str),
    ]:
        config[key] = user_query(name, converter, config[key])
    return config

def write_config(config):
    filename = join(dirname(__file__), "..", "app", "config.py")
    fhandle = open(filename, "w")
    fhandle.write(
        "from app.defaultconfig import config\n"
      + "config = config()\n"
      + "config.update(\n"
      + pformat(config, indent=4) + "\n"
      + ")"
    )

if __name__ == "__main__":
    config = prompt_update_config()
    write_config(config)
