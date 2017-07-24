require('es6-promise').polyfill();

var fs = require('fs');
var tasks = fs.readdirSync('./gulp/tasks/');
var excludes = ['Thumbs.db', '.DS_Store', '.', '..'];

tasks.forEach(function(task) {
  if (!excludes.includes(task)) {
    require('./tasks/' + task);
  }
});
