CodeMirror.defineMode('tml',function (config, modConfig) {
    console.log('aaa', config, modConfig);
    var TmlMode = function TmlMode() {

    };

    TmlMode.prototype =  {
        constructor: TmlMode,
        token: function (stream, state) {
            console.log('token', stream);
            stream.next();
            return 'asd';
        }
    };

    return new TmlMode();
});