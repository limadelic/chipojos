global.engine = require('express').createServer()

require './settings'
require './root'

engine.listen process.env.ENGINE_PORT or 3001

console.log chipojos
