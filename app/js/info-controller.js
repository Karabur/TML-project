'use strict';
define(['controllers', 'cm-directive'], function (controllers) {
    controllers.controller('infoPanelCtrl',['$scope', '$rootScope', 'sourceService', function ($scope, $rootScope, sourceService) {
        $scope.$on('hintslist', function (event,list) {
            $scope.hints = list;
        })
    }])
});
