const Sequelize = require("sequelize");

const dbSequelize = new Sequelize(
  "movies_db", // db name,
  "root", // username
  "", // password
  {
    host: "localhost",
    dialect: "mysql",
  }
);

module.exports = dbSequelize;