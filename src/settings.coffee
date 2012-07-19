global.settings =

  chipojos: '''
       _    _            _
    __| |_ (_)_ __  ___ (_)___ ___
   / _| ' \\| | '_ \\/ _ \\| / _ (_-<
   \\__|_||_|_| .__/\\___// \\___/__/
             |_|      |__/
  '''

  port: process.env.PORT or 3000
  engine_port: process.env.ENGINE_PORT or 3001

settings.engine_uri = 'http://localhost:' + settings.engine_port
settings.engine_run =  settings.engine_uri + '/run'
