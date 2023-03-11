var DataTypes = require("sequelize").DataTypes;
var _actor_episode = require("./actor_episode");
var _actor_movie = require("./actor_movie");
var _actors = require("./actors");
var _episodes = require("./episodes");
var _genres = require("./genres");
var _migrations = require("./migrations");
var _movies = require("./movies");
var _password_resets = require("./password_resets");
var _seasons = require("./seasons");
var _series = require("./series");
var _users = require("./users");

function initModels(sequelize) {
  var actor_episode = _actor_episode(sequelize, DataTypes);
  var actor_movie = _actor_movie(sequelize, DataTypes);
  var actors = _actors(sequelize, DataTypes);
  var episodes = _episodes(sequelize, DataTypes);
  var genres = _genres(sequelize, DataTypes);
  var migrations = _migrations(sequelize, DataTypes);
  var movies = _movies(sequelize, DataTypes);
  var password_resets = _password_resets(sequelize, DataTypes);
  var seasons = _seasons(sequelize, DataTypes);
  var series = _series(sequelize, DataTypes);
  var users = _users(sequelize, DataTypes);

  actor_episode.belongsTo(actors, { as: "actor", foreignKey: "actor_id"});
  actors.hasMany(actor_episode, { as: "actor_episodes", foreignKey: "actor_id"});
  actor_movie.belongsTo(actors, { as: "actor", foreignKey: "actor_id"});
  actors.hasMany(actor_movie, { as: "actor_movies", foreignKey: "actor_id"});
  actor_episode.belongsTo(episodes, { as: "episode", foreignKey: "episode_id"});
  episodes.hasMany(actor_episode, { as: "actor_episodes", foreignKey: "episode_id"});
  movies.belongsTo(genres, { as: "genre", foreignKey: "genre_id"});
  genres.hasMany(movies, { as: "movies", foreignKey: "genre_id"});
  series.belongsTo(genres, { as: "genre", foreignKey: "genre_id"});
  genres.hasMany(series, { as: "seriess", foreignKey: "genre_id"});
  actor_movie.belongsTo(movies, { as: "movie", foreignKey: "movie_id"});
  movies.hasMany(actor_movie, { as: "actor_movies", foreignKey: "movie_id"});
  actors.belongsTo(movies, { as: "favorite_movie", foreignKey: "favorite_movie_id"});
  movies.hasMany(actors, { as: "actors", foreignKey: "favorite_movie_id"});
  episodes.belongsTo(seasons, { as: "season", foreignKey: "season_id"});
  seasons.hasMany(episodes, { as: "episodes", foreignKey: "season_id"});
  seasons.belongsTo(series, { as: "serie", foreignKey: "serie_id"});
  series.hasMany(seasons, { as: "seasons", foreignKey: "serie_id"});

  return {
    actor_episode,
    actor_movie,
    actors,
    episodes,
    genres,
    migrations,
    movies,
    password_resets,
    seasons,
    series,
    users,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
