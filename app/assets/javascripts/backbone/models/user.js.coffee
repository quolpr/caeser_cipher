class CaeserCipher.Models.User extends Backbone.Model
  url: '/users'
  paramRoot: 'user'

  defaults:
    name: ''
