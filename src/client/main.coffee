define (require) ->
    main = ->
        $ = require 'jquery'
        rivets = require 'rivets'
        bootstrap = require 'bootstrap'
        L = require 'leaflet'
        Nav = require 'nav'

        rivets.adapters[':'] =
            observe: (obj, keypath, callback) ->
                obj.on('change:' + keypath, callback)

            unobserve: (obj, keypath, callback) ->
                obj.off('change:' + keypath, callback)

            get: (obj, keypath) ->
                return obj.get(keypath)

            set: (obj, keypath, value) ->
                obj.set(keypath, value)
        
        map = L.map('map')
            .setView [32.781389, -96.797778], 13

        L.tileLayer 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            attribution: 'Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors'
            maxZoom: 18
        .addTo(map)

        nav = new Nav
            el: $('#nav')
