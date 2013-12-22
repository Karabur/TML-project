'use strict';

define(['directives'], function (directives) {
    directives.directive('cmEditor', function (sourceService) {
        function link(scope, element, attrs) {
           var editor = window.editor = new CodeMirror(element[0], {
                value: tmpTest,
                mode: "tml",
                lineNumbers: true
            });

            editor.on('cursorActivity', function () {
                console.log(arguments)
            })
        }

        return {
            restrict: 'E',
            scope: {},
            link: link
        }
    })
});
