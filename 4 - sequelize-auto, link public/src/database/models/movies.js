const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('movies', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING(500),
      allowNull: false
    },
    rating: {
      type: DataTypes.DECIMAL(3,1),
      allowNull: false
    },
    awards: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      defaultValue: 0
    },
    release_date: {
      type: DataTypes.DATE,
      allowNull: false
    },
    length: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: true
    },
    genre_id: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: true,
      references: {
        model: 'genres',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'movies',
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
        name: "movies_genre_id_foreign",
        using: "BTREE",
        fields: [
          { name: "genre_id" },
        ]
      },
    ]
  });
};
