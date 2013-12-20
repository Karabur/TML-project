'use strict';

require(['tml-mode'], function (tmlMode) {
    var tmpTest = "Title: Проверка примитива AddChoice\n" +
        "TestName:;\n" +
        "Difficulty: A1;\n" +
        "FullTime: 0;\n" +
        "Questions: 1;\n" +
        "EndTitle.\n";


    var codeEditor = window.editor = new CodeMirror(document.getElementById('editorHolder'), {
        value: tmpTest,
        mode: "tml",
        lineNumbers: true
    });
});