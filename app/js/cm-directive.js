'use strict';

define(['directives'], function (directives) {
    directives.directive('cmEditor', function (sourceService, $rootScope) {
        function link(scope, element, attrs) {
           var editor = window.editor = new CodeMirror(element[0], {
                value: tmpTest,
                mode: "tml",
                lineNumbers: true
            });

            editor.on('cursorActivity', function (editor) {
                var doc = editor.getDoc();
                var token = editor.getTokenAt(doc.getCursor());
                console.log(token.state.context);
                $rootScope.$apply(function () {
                    $rootScope.$broadcast('hintslist', token.state.context.getAutocompletionsList())
                })
            })
        }

        return {
            restrict: 'E',
            scope: {},
            link: link
        }
    })
});
