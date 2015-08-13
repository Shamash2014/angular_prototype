angular.module "angularTest"
  .controller "HomeController", ($scope) ->
    $scope.email = 'warp.buddhist@gmail.com'
    today = new Date()
    @newTask = ''
    newProject = { name: 'Type here your project name' }
    $scope.editedTask = null

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
      newTask = { name: 'Add your task name here', state: false, dueDate: 0 }
      $scope.tasks.push newTask
      console.log $scope.tasks
      @newTask = ''

    $scope.addProject = () ->
      $scope.projects.push newProject

    $scope.removeTask = (task) ->
      $scope.tasks.splice($scope.tasks.indexOf(task), 1)

    $scope.removeProject = (project) ->
      $scope.projects.splice($scope.projects.indexOf(project), 1)

    $scope.selectAll = () ->
      $scope.tasks.map (task)->
        task.state = !task.state

