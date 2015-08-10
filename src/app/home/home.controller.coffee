angular.module "angularTest"
  .controller "HomeController", ($scope) ->
    $scope.email = 'warp.buddhist@gmail.com'
    today = new Date()
    @newTask = ''
    newProject = { name: 'Type here your project name' }

    $scope.tasks = [
      {name: 'first', state: true, dueDate: today.getDate() },
      {name: 'second', state: true, dueDate: today.getDate() },
      {name: 'third', state: true, dueDate: today.getDate() }
    ]

    $scope.projects = [
      {name: 'Build test task'}
    ]
    $scope.back = () ->
      window.history.back()
    $scope.addTask = () ->
      newTask = { name: @newTask, state: false, dueDate: 0 }
      $scope.tasks.push newTask
      console.log $scope.tasks
      @newTask = ''

    $scope.addProject = () ->
      $scope.projects.push newProject

