var app = angular.module('plunker', []);

app.controller('MainCtrl', function($scope,$http) {
    $http.get('/movies/topslider').success(function(data) { 
        $scope.items = data.items;
    });
  
  
  $scope.count = 0;
}).directive("owlCarousel", function() {
    return {
        restrict: 'E',
        transclude: false,
        link: function (scope) {
            scope.initCarousel = function(element) {
              // provide any default options you want
                var defaultOptions = {
                };
                var customOptions = scope.$eval($(element).attr('data-options'));
                // combine the two options objects
                for(var key in customOptions) {
                    defaultOptions[key] = customOptions[key];
                }
                // init carousel
                $(element).owlCarousel(defaultOptions);
            };
        }
    };
})
.directive('owlCarouselItem', [function() {
    return {
        restrict: 'A',
        replace: true,
        templateUrl: "/templates/similarslider.html",
        transclude: false,
        link: function(scope, element) {
          // wait for the last item in the ng-repeat then call init
            if(scope.$last) {
                scope.initCarousel(element.parent());
            }
        }
    };
}])
.directive("preview", function() {
    return {
         link : function(scope, element, attrs) {
            element.parent().bind('mouseenter', function() {
                element.children('.preview').show();
            });
            element.parent().bind('mouseleave', function() {
                 element.children('.preview').hide();
            });
       }
   };
});