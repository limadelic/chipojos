global.express = require 'express'
global.app = express.createServer()

require './config'

app.listen port

console.log "Giant Leapin' Lizards!"
