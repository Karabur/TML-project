'use strict';
define([], function () {
    var mod = angular.module('controllers', []);
    mod.controller('infoPanelCtrl', function ($scope) {
        $scope.hints = [
            { title: 'Title' },
            { title: 'Questions' },
            { title: 'Choice' }
        ];
    })
});