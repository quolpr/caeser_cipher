class CaeserCipher.Routers.UsersRouter extends Backbone.Router
  routes:
    ".*": "newUser" # default route

  newUser: ->
    @view = new CaeserCipher.Views.Users.NewView
    $("#application").html(@view.render().el)
