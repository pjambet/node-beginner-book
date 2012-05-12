http = require('http')
url  = require('url')

start = (route, handle) ->
  onRequest = (request, response) ->
    pathname = url.parse(request.url).pathname
    console.log "Request for " + pathname + " received."

    response.writeHead 200, {"Content-Type": "text/plain"}
    content = route(handle, pathname)
    response.write content
    response.end()
  http.createServer(onRequest).listen 8888
  console.log("Server has started")

exports.start = start