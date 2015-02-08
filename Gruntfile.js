module.exports = function(grunt) {
    // configure the tasks
    grunt.initConfig({
        copy: {
            build: {
                files: [
                    {cwd: 'src/', src: [ '**' ], dest: 'build/', expand: true},
                    {cwd: 'bower_components/', src: [ '**' ], dest: 'build/client/bower_components/', expand: true},
                    {cwd: '.', src: [ 'config.js' ], dest: 'build/client/'},
                ],
            },
        },

        clean: {
            build: {
                src: [ 'build' ]
            },
        },

        coffee: {
            build: {
                expand: true,
                cwd: 'src',
                src: [ '**/*.coffee' ],
                dest: 'build',
                ext: '.js'
            }
        },

        bowerRequirejs: {
            target: {
                rjsConfig: 'config.js',
            }
        }
    });
 
    // load the tasks
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-bower-requirejs');

    // define the tasks
    grunt.registerTask(
        'build', 
        'Build it',
        [ 'clean', 'bowerRequirejs', 'copy', 'scripts' ]
    );

    grunt.registerTask(
        'scripts', 
        'Build scripts',
        [ 'coffee' ]
    );

    grunt.registerTask(
        'default', 
        'Watches the project for changes, automatically builds them and runs a server.', 
        [ 'build' ]
    );

    grunt.registerTask('express', 'Start a custom web server.', function() {
        var done = this.async();
        var server = require('./build/server/server.js');
    });

    grunt.registerTask(
        'server',
        'Rebuilds then runs server',
        [ 'build', 'express' ]
    );
};
