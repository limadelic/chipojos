global.express = require 'express'
global.engine = express.createServer()

require './config'

engine.listen engine_port

console.log chipojos
