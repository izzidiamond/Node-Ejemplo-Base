const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('episodes', {
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
    rating: {
      type: DataTypes.DECIMAL(3,1),
      allowNull: false
    },
    season_id: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: true,
      references: {
        model: 'seasons',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'episodes',
    timestamps: false,
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
        name: "episodes_season_id_foreign",
        using: "BTREE",
        fields: [
          { name: "season_id" },
        ]
      },
    ]
  });
};
