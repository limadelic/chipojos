global.port = process.env.PORT or 3000

app.configure ->
  @use express.static __dirname + '/public'
  @set 'views', __dirname + '/views'

app.get "/", (req, res) -> res.render 'home.jade'
app.get "/test", (req, res) -> res.render 'test'
