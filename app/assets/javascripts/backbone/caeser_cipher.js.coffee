#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.CaeserCipher =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
Backbone.ModelBinder.SetOptions({changeTriggers: {'': 'change', '': 'keyup'}})
