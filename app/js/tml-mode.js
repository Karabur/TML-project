define(['codemirror', 'editor-context'], function (CodeMirror, EditorContext) {
    CodeMirror.defineMode('tml', function (config, modConfig) {
        var indentUnit = config.indentUnit;

        function rootTokenize(stream, state) {
            if (stream.match(/\w+:/)) return 'keyword';
            if (stream.match(/\w+\./)) return 'keyword';
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