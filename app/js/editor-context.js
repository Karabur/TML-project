'use strict';

define([], function () {

    var Contexts = {
        'root': {
            tag: null,
            children: ['title', 'test']
        },
        'title': {
            title: 'Title',
            tag: 'Title',
            endTag: 'EndTitle',
            children: ['test-name', 'difficulty', 'full-time', 'questions']
        },
        'test': {
            title: 'Test Suite',
            tag: 'StartTest',
            endTag: 'EndTest',
            children: []
        },
        'test-name' : {
            tag: 'TestName',
            title: 'Test name'
        },
        'difficulty' : {
            tag: 'Difficulty',
            title: 'Difficulty'
        },
        'full-time' : {
            tag: 'FullTime',
            title: 'Full time'
        },
        'questions' : {
            tag: 'Questions',
            title: 'Questions'
        }
    };

    for (var ctx in Contexts) {
        Contexts[ctx].children = Contexts[ctx].children || [];
    }

    function EditorContext(type, prev) {
        this.type = type;
        this.context = Contexts[type];
        this.prev = prev || null;
    }
    EditorContext.prototype = {
        constructor:EditorContext,
        getChild: function (tag) {
            var children = this.context.children.filter(function (ch) {
                var child = Contexts[ch];
                return child.tag.toLowerCase() == tag.toLowerCase()
            });
            if (children.length) {
                return children[0];
            }
            return null;
        },
        closedBy: function (tag) {
            if (!this.context.endTag) return false;
            return this.context.endTag.toLowerCase() == tag.toLowerCase();
        },

        getAutocompletionList: function () {
            return this.context.children.map(function (ch) {
                var child = Contexts[ch];
                if (!child) throw 'Context undefined: ' + this.type + ' -> ' + ch;
                return angular.copy(child);
            }.bind(this))
        }
    };


    return EditorContext;
});