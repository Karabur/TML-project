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

        function tokenizeBlock(stream, state) {
            var context = state.context;
            var match = stream.match(/(\w+)\s*?:/);
            var child;
            if (match) {
                var keyword = match[1];
                if (child = context.getChild(keyword)) pushContext(state, child);
                return 'keyword';
            }

            match = stream.match(/(\w+)\s*?\./);
            if (match) {
                if (context.closedBy(match[1])) popContext(state);
                return 'keyword';
            } else if (stream.match(';')) {
                popContext(state);
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
                    tokenize: tokenizeBlock
                }
            }
        };
    });
});