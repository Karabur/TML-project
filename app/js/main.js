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

var tmpTest = "Title: Проверка примитива AddChoice\n" +
    "TestName:;\n" +
    "Difficulty: A1;\n" +
    "FullTime: 0;\n" +
    "Questions: 1;\n" +
    "EndTitle.\n";


require(['codemirror', 'tml-mode', 'app'], function (CodeMirror, tmlMode, app) {

    angular.element(document).ready(function() {
        angular.bootstrap(document, ['myApp']);
    });
});