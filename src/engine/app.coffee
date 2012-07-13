engine = require('express').createServer()

console.log chipojos = '''
     _    _            _
  __| |_ (_)_ __  ___ (_)___ ___
 / _| ' \\| | '_ \\/ _ \\| / _ (_-<
 \\__|_||_|_| .__/\\___// \\___/__/
           |_|      |__/
'''

engine.get '/', (req, res) ->
  res.send "<xmp>#{chipojos}</xmp>"

engine.listen process.env.ENGINE_PORT or 3001
