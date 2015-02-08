define (require) ->

    $ = require 'jquery'
    tmpl = require 'text!./modal.html'
    Backbone = require 'backbone'
    bootstrap = require 'bootstrap'

    Backbone.View.extend
        initialize: ->
            @$el.html(tmpl)
            return null
