app.get "/", (req, res) -> res.render 'home'

app.get "/test", (req, res) -> res.render 'test'

app.post "/test", (req, res) ->
  console.log req.body.test
  res.redirect 'back'
