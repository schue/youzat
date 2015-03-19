require.config({
  shim: {
    bootstrap: {
      deps: [
        'jquery'
      ],
      exports: 'Bootstrap'
    }
  },
  paths: {
    backbone: 'bower_components/backbone/backbone',
    bootstrap: 'bower_components/bootstrap/dist/js/bootstrap',
    leaflet: 'bower_components/leaflet/dist/leaflet',
    'leaflet-src': 'bower_components/leaflet/dist/leaflet-src',
    rivets: 'bower_components/rivets/dist/rivets',
    requirejs: 'bower_components/requirejs/require',
    jquery: 'bower_components/jquery/dist/jquery',
    underscore: 'bower_components/underscore/underscore',
    text: 'bower_components/requirejs-text/text',
    'requirejs-text': 'bower_components/requirejs-text/text',
    sightglass: 'bower_components/sightglass/index'
  },
  packages: [

  ]
});

// Start it up
require(['main'], function(main) { 
    main();
});
