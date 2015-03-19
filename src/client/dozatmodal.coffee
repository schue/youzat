define (require) ->

    $ = require 'jquery'
    tmpl = require 'text!./dozat.html'
    bootstrap = require 'bootstrap'
    Backbone = require 'backbone'

    Backbone.View.extend
        initialize: ->
            @scope = new Backbone.Model
                neighborhood: 'Fooboggy'
           
            @$el.html tmpl

            rivets.bind @$el, @scope

            @$el.find('.modal').modal 'show'

            console.log 'showed it'

            return null
