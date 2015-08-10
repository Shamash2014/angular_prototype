angular.module "angularTest"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "email",
        url: "/"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state 'home',
        url: '/home'
        templateUrl: 'app/home/home.html'
        controller: 'HomeController'
        controllerAs: 'home'

    $urlRouterProvider.otherwise '/'
