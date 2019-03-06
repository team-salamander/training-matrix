const Sequelize = require('sequelize');
const config = require('../config');

const sequelize = new Sequelize({
   database: config.database.database,
   username: config.database.user,
   password: config.database.password,
   dialect: 'mysql',
   host: config.database.host
});

module.exports = sequelize;
