#!/usr/bin/env python
from livereload import Server, shell
server = Server()
server.watch('index.html', 'elements/routing.html')
server.serve(port=8080, host='localhost')
