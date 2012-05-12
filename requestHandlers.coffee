start = () ->
  console.log "Request handler 'start' was called"
  "Hello start"

upload = () ->
  console.log "Request handler 'upload' was called"
  "Hello upload"

exports.start  = start
exports.upload = upload
