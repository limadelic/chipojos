engine.get '/', (req, res) ->
  res.send "<pre>#{settings.chipojos}</pre>"
