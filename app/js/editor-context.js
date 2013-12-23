'use strict';

define([], function () {
    function EditorContext(type, prev) {
        this.type = type;
        this.prev = prev || null;
    }
    EditorContext.prototype = {
        constructor:EditorContext,
        tokenize: function (stream) {
            if (stream.match(/\w+:/)) return 'keyword';
            if (stream.match(/\w+\./)) return 'keyword';
            stream.next();
        },
        getAutocompletionsList: function () {
            return [
                {title: 'Title'},
                {title: 'Test'},
                {title: 'Choice'}
            ]
        }
    };


    return EditorContext;
});