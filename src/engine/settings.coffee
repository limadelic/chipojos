global.chipojos = '''
     _    _            _
  __| |_ (_)_ __  ___ (_)___ ___
 / _| ' \\| | '_ \\/ _ \\| / _ (_-<
 \\__|_||_|_| .__/\\___// \\___/__/
           |_|      |__/
'''

global.engine_port = process.env.ENGINE_PORT or 3001
global.engine_uri = "http://localhost:#{engine_port}"
