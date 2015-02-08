define (require) ->

    $ = require 'jquery'
    tmpl = require 'text!./nav.html'
    Backbone = require 'backbone'
    bootstrap = require 'bootstrap'

    Backbone.View.extend
        initialize: ->
            console.log 'Hi there'
            @$el.html(tmpl)
            return null
