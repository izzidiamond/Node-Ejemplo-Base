const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('seasons', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING(500),
      allowNull: true
    },
    number: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: true
    },
    release_date: {
      type: DataTypes.DATE,
      allowNull: false
    },
    end_date: {
      type: DataTypes.DATE,
      allowNull: false
    },
    serie_id: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: true,
      references: {
        model: 'series',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'seasons',
    timestamps: true,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id" },
        ]
      },
      {
        name: "seasons_serie_id_foreign",
        using: "BTREE",
        fields: [
          { name: "serie_id" },
        ]
      },
    ]
  });
};
