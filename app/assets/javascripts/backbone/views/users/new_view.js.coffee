CaeserCipher.Views.Users ||= {}

class CaeserCipher.Views.Users.NewView extends Backbone.View
  template: JST["backbone/templates/users/new"]

  events:
    "submit .new-user": "save"

  constructor: (options) ->
    super(options)
    @binder = new Backbone.ModelBinder();
    @model = new CaeserCipher.Models.User()

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    NProgress.start();
    @model.save(null,
      success: (user) =>
        @resetError()
        @model = user
        window.location.hash = "/users/#{@model.get('name')}/cipher"
        NProgress.done();
      error: (user, jqXHR) =>
        @setError($.parseJSON(jqXHR.responseText)['errors'])
        NProgress.done();
    )

  setError: (errors)->
    @$(".error").html("#{errors['name'][0]}")

  resetError: ->
    @$(".error").html('')

  render: ->
    @$el.html(@template({model: @model.toJSON()}))
    @binder.bind(@model, @el)
    this
