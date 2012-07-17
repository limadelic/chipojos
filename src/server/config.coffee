global.port = process.env.PORT or 3000

coffeekup = require 'coffeekup'

#console.log method for method of app

app.configure ->
  @use express.static __dirname + '/public'

  @set "views", __dirname + '/views'
  @set 'view engine', 'coffee'
  @register '.coffee', coffeekup.adapters.express

app.get "/", (req, res) -> res.render 'home'
app.get "/test", (req, res) -> res.render 'test'
