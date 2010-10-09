# -*- coding: utf-8 -*-
from app.utils import local, url_map, responders
from app.lib.session import Session
from werkzeug import Request, Response
from werkzeug.exceptions import NotFound

class Application(object):
    def __init__(self, debug):
        from os.path import join
        from werkzeug import SharedDataMiddleware
        from app.utils import root_path
        
        local.application = self
        self.debug = debug
        self.dispatch = SharedDataMiddleware(self.dispatch, {
                "/static": join(root_path, "../static")
            }
        )
    
    def dispatch(self, environ, start_response):
        try:
            local.request = Request(environ)
            local.response = Response()
            local.session = Session(local.request.cookies.get("session"))
            try:
                #notfound = responders["notfound"]
                local.url_adapter = url_adapter = url_map.bind_to_environ(environ)
                try:
                    endpoint, params = url_adapter.match()
                except NotFound:
                    notfound()
                else:
                    local.endpoint = endpoint
                    responders[endpoint](**params)
            except:
                if self.debug:
                    raise
                responders.error()
            response = local.response
            local.session.save()
            local.session.set_cookie(local.response)
        except: 
            if self.debug:
                raise
            response = Response("Fejlsidens fejlside.")
            
        return response(environ, start_response)        
    def __call__(self, environ, start_response):
        local.application = self
        return self.dispatch(environ, start_response)
