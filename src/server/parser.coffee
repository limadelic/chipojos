_ = require 'underscore'

class exports.Parser

  parse: (test) ->
    _.compact test.split '\n'