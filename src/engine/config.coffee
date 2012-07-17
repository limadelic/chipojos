require './settings'

engine.configure ->
  engine.use express.bodyParser()

# load controllers
require './root'
require './runner/controller'

