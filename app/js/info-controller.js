'use strict';
define(['controllers', 'cm-directive'], function (controllers) {
    controllers.controller('infoPanelCtrl',['$scope', 'sourceService', function ($scope, sourceService) {
        $scope.hints = [
            { title: 'Title' },
            { title: 'Questions' },
            { title: 'Choice' }
        ];
    }])
});
