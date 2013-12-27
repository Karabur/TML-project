'use strict';

define(['directives'], function (directives) {
    directives.directive('cmEditor', function (sourceService, $rootScope) {
        var editor;

        function updateContext() {
            var doc = editor.getDoc();
            console.log(doc.getCursor());
            var token = editor.getTokenAt(doc.getCursor());
            console.log(token.state.context);
            $rootScope.$apply(function () {
                $rootScope.$broadcast('hintslist', token.state.context.getAutocompletionsList())
            })
        }

        function clearContext() {
            $rootScope.$apply(function () {
                $rootScope.$broadcast('hintslist', [])
            })
        }

        function link(scope, element, attrs) {
           editor = window.editor = new CodeMirror(element[0], {
                mode: "tml",
                lineNumbers: true
            });

            editor.on('cursorActivity',updateContext);
            editor.on('focus', updateContext);
            editor.on('blur', clearContext);
        }

        return {
            restrict: 'E',
            scope: {},
            link: link
        }
    })
});
