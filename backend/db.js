const { DataStore } = require('notarealdb');

const store = new DataStore('./data'); // Path to your data directory

module.exports = {
  students: store.collection('students'), // Collection for students
  colleges: store.collection('colleges'), // Collection for colleges
};
