define (require) ->

    $ = require 'jquery'
    rivets = require 'rivets'
    tmpl = require 'text!./nav.html'
    Backbone = require 'backbone'
    bootstrap = require 'bootstrap'
    DoZatModal = require 'dozatmodal'

    Backbone.View.extend
        initialize: ->
            @scope = new Backbone.Model
                doZat: ->
                     @zat = new DoZatModal
                        el: $ '#modal'
                     console.log 'Do zat', @zat
            @$el.html(tmpl)
            rivets.bind(@$el, @scope)
            return null
