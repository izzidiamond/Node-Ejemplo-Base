const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('actor_episode', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      primaryKey: true
    },
    actor_id: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      references: {
        model: 'actors',
        key: 'id'
      }
    },
    episode_id: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      references: {
        model: 'episodes',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'actor_episode',
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
        name: "actor_episode_actor_id_foreign",
        using: "BTREE",
        fields: [
          { name: "actor_id" },
        ]
      },
      {
        name: "actor_episode_episode_id_foreign",
        using: "BTREE",
        fields: [
          { name: "episode_id" },
        ]
      },
    ]
  });
};
