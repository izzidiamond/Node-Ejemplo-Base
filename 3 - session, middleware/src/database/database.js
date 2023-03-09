const Sequelize = require("sequelize");

const dbSequelize = new Sequelize(
  "movies_db", // db name,
  "root", // username
  "", // password
  {
    host: "localhost",
    dialect: "mysql",
    // pool: {
    //   max: 5,
    //   min: 0,
    //   require: 30000,
    //   idle: 10000,
    // },
    // logging: false,
  }
);

module.exports = dbSequelize;