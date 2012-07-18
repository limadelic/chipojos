global.express = require 'express'
global.engine = express.createServer()

require './config'

engine.listen settings.engine_port

console.log settings.chipojos
