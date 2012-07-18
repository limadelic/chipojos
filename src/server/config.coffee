global.port = process.env.PORT or 3000
pub = __dirname + '/public'
views = __dirname + '/views'

app.configure ->
  @use @router
  @use express.static pub
  @use express.errorHandler()

  @set 'views', views
  @set 'view engine', 'jade'

app.get "/", (req, res) -> res.render 'home'
app.get "/test", (req, res) -> res.render 'test'
