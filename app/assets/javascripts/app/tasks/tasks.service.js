'use strict';

angular.module('todoApp')
  .provider('Task', function () {
    this.$get = ['$resource', function ($resource){
      var Task = $resource('/api/tasks/:id', { id: '@id' }, {
          done: { method: 'POST', url: '/api/tasks/:id/done' }
        }
      );
      Task.prototype = {
      };
      return Task;
    }];
  });