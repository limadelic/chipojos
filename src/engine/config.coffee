require './settings'

engine.configure ->
  engine.use express.bodyParser()
  engine.use (req, res) ->
    res.end 'viewing ' + req.body

# load controllers
require './root'
require './runner/controller'

