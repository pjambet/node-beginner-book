start = () ->
  console.log "Request handler 'start' was called"
  sleep = (milliSeconds) ->
    startTime = new Date().getTime()
    while (new Date().getTime() < startTime + milliSeconds)
      ""

  sleep(10000)
  "Hello start"

upload = () ->
  console.log "Request handler 'upload' was called"
  "Hello upload"

exports.start  = start
exports.upload = upload
