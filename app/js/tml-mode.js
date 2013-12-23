define(['codemirror', 'editor-context'], function (CodeMirror, EditorContext) {
    CodeMirror.defineMode('tml', function (config, modConfig) {
        var indentUnit = config.indentUnit;

        function pushContext(state, type) {
            state.context = new EditorContext(type, state.context);
        }

        function popContext(state) {
            if (!state.context.prev) return;
            state.context = state.context.prev;
        }

        function rootTokenize(stream, state) {
            var match = stream.match(/\w+:/);
            if (match) {
                if (match[0]=='Title:') pushContext(state, 'title');
                return 'keyword';
            }
            match = stream.match(/\w+\./);
            if (match) {
                if (match[0]=='EndTitle.' && state.context.type == 'title') popContext(state);
                return 'keyword';
            }
            stream.next();
            return null;
        }

        return {
            token: function (stream, state) {
                return state.tokenize(stream, state);
            },

            startState: function () {
                return {
                    context: new EditorContext('root'),
                    tokenize: rootTokenize
                }
            }
        };
    });
});