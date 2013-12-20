define(['codemirror'], function (CodeMirror) {
    CodeMirror.defineMode('tml', function (config, modConfig) {
        var TmlMode = function TmlMode() {

        };

        TmlMode.prototype = {
            constructor: TmlMode,
            token: function (stream, state) {
                state.x = state.x || 0;
                state.x++;
                if (stream.match(/\w+:/)) return 'keyword';
                if (stream.match(/\w+\./)) return 'keyword';
                stream.next();
                return null;
            },
            startState: function () {
                return {};
            }
        };

        return new TmlMode();
    });
})