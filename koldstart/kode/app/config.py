from app.defaultconfig import config
config = config()
config.update(
{   'couchdb_db': 'koldskaal', 'couchdb_server_url': 'http://127.0.0.1:5984/'}
)