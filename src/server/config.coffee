global.port = process.env.PORT or 3000
pub = __dirname + '/public'
views = __dirname + '/views'

app.configure ->
  @use express.bodyParser()
  @use express.static pub
  @use express.errorHandler()
  @use @router

  @set 'views', views
  @set 'view engine', 'jade'

require './controller'
