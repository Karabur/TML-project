'use strict';

define(['directives', 'codemirror'], function (directives, CodeMirror) {
    directives.directive('cmEditor', function (sourceService, $rootScope) {
        var editor;

        /** @return EditorContext */
        function getCursorContext() {
            var doc = editor.getDoc();
            var token = editor.getTokenAt(doc.getCursor());
            return token.state.context;
        }

        function autoComplete(idx) {
            console.log('autocomplete', idx);
            var completion = getCursorContext().getAutocompletionList()[idx - 1];
            if (!completion) return;
            var doc = editor.getDoc();
            if (completion.endTag) {
                //block element
                var cur = doc.getCursor('start');
                var preLine = '';
                if (cur.ch) preLine = '\n';
                doc.replaceSelection(preLine + completion.tag + ':\n\n' + completion.endTag + '.\n', 'start');
                cur.line += 1 + (preLine ? 1 : 0);
                doc.setCursor(cur);
            }
        }

        CodeMirror.keyMap.TML = {
            fallthrough: 'default',
            'Alt-1': autoComplete.bind(null, 1),
            'Alt-2': autoComplete.bind(null, 2),
            'Alt-3': autoComplete.bind(null, 3),
            'Alt-4': autoComplete.bind(null, 4),
            'Alt-5': autoComplete.bind(null, 5),
            'Alt-6': autoComplete.bind(null, 6),
            'Alt-7': autoComplete.bind(null, 7),
            'Alt-8': autoComplete.bind(null, 8),
            'Alt-9': autoComplete.bind(null, 9),
            'Alt-0': autoComplete.bind(null, 0)
        };

        function updateContext() {
            var context = getCursorContext();
            console.log(context.getAutocompletionList());
            $rootScope.$apply(function () {
                $rootScope.$broadcast('hintslist', context.getAutocompletionList())
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
                lineNumbers: true,
                keyMap: 'TML'
            });

            editor.on('cursorActivity', updateContext);
            editor.on('focus', updateContext);
//            editor.on('blur', clearContext);
        }

        return {
            restrict: 'E',
            scope: {},
            link: link
        }
    })
});
