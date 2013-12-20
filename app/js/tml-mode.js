CodeMirror.defineMode('tml',function (config, modConfig) {
    console.log('aaa', config, modConfig);
    var TmlMode = function TmlMode() {

    };

    TmlMode.prototype =  {
        constructor: TmlMode,
        token: function (stream, state) {
            console.log('token', state);
            state.x=state.x || 0;
            state.x++;
            if (stream.match(/\w+:/)) return 'keyword';
            if (stream.match(/\w+\./)) return 'keyword';
            stream.next();
            return null;
        }
    };

    return new TmlMode();
});