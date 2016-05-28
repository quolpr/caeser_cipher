CaeserCipher.Views.Ciphers ||= {}

class CaeserCipher.Views.Ciphers.EditView extends Backbone.View
  template: JST["backbone/templates/ciphers/edit"]

  constructor: (options) ->
    super(options)
    @binder = new Backbone.ModelBinder();
    @model.bind("change:message", @updateDebounce.bind(@))
    @model.bind("change:shift", @updateDebounce.bind(@))

  updateDebounce: _.debounce(
    -> @update()
    1000
  )

  update: ->
    NProgress.start();
    @model.save(null,
      success: (cipher) =>
        @resetError()
        @model = cipher
        NProgress.done();
      error: (user, jqXHR) =>
        @setError($.parseJSON(jqXHR.responseText)['errors'])
        NProgress.done();
    )

  setError: (errors)->
    @model.set('encoded_message', '')
    firstField = Object.keys(errors)[0]
    @$(".error").html("#{firstField} #{errors[firstField][0]}")

  resetError: ->
    @$(".error").html('')

  render: ->
    @$el.html(@template({model: @model.toJSON()}))
    @binder.bind(@model, @el)
    this
