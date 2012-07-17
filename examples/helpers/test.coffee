{ EngineService } = require '../../src/engine/service'

global.run = (test) ->
  new EngineService().run test

global.test = (test) ->
  verify_all_passed run test