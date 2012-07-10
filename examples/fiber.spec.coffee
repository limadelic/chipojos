fibrous = require 'fibrous'

describe 'to sync', ->

  test =
    say_hi: -> process.nextTick -> console.log 'hi there'

  it 'may', -> test.future.say_hi()


