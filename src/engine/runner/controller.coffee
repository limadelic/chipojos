engine.post '/run', (req, res) ->
  console.log req.body
  res.send 'cool'
#    test: 'test', passed: true