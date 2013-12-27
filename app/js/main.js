'use strict';

require.config({
    paths: {
        codemirror: '../../bower_components/codemirror/lib/codemirror'
    },
    shim: {
        'codemirror' : {'exports' : 'CodeMirror'}
    },
    priority: [
        "angular"
    ]
});

require(['codemirror', 'tml-mode', 'app'], function (CodeMirror, tmlMode, app) {

    angular.element(document).ready(function() {
        angular.bootstrap(document, ['myApp']);
    });
});