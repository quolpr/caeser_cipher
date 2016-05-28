class CaeserCipher.Routers.CiphersRouter extends Backbone.Router
  routes:
    "users/:user_name/cipher": "edit"

  edit: (user_name) ->
    cipher = new CaeserCipher.Models.Cipher;
    cipher.url = "/users/#{user_name}/cipher"
    cipher.fetch(
      success: =>
        @view = new CaeserCipher.Views.Ciphers.EditView(model: cipher)
        $("#application").html(@view.render().el)
    )
