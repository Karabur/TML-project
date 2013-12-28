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
                cur.line += (preLine ? 1 : 0);
                doc.markText({line: cur.line, ch: 0}, {line: cur.line + 1, ch: 0}, {atomic: true});
                doc.markText({line: cur.line + 2, ch: 0}, {line: cur.line + 3, ch: 0}, {atomic: true});
                cur.line++;
                doc.setCursor(cur);
            } else {
                //one-tag element
                cur = doc.getCursor('start');
                doc.replaceSelection(completion.tag + ': ;', 'start');
                doc.markText({line: cur.line, ch: cur.ch}, {line: cur.line, ch: completion.tag.length + 2}, {atomic: true});
                cur.ch += completion.tag.length + 2;
                doc.setCursor(cur);
            }
        }

        CodeMirror.keyMap.TML = {
            fallthrough: 'default'
        };
        for (var i = 0; i < 10; i++) { CodeMirror.keyMap.TML['Alt-' + i] = autoComplete.bind(null, i) }

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
