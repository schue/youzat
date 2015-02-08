define (require) ->
    main = ->
        $ = require 'jquery'
        L = require 'leaflet'
        Nav = require 'nav'
        
        map = L.map('map').setView([32.781389, -96.797778], 13)
        L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: 'Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors',
            maxZoom: 18
        }).addTo(map)

        nav = new Nav(
            el: $('#nav')
            )
