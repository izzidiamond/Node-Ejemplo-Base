const dbSequelize = require('../database/database'); // importa la instancia de Sequelize que creaste para la base de datos
const models = require('../database/models/init-models')(dbSequelize);

const apisController = {
    getAllMoviesGet: (req, res) => {
        models.movies.findAll()
            .then(movies => {
                res.json(movies);
            })
            .catch(error => {
                console.log(error);
            });
    },
    getMovie: (req, res) => {
        models.movies.findByPk(req.params.id)
            .then(movies => {
                res.json(movies);
            })
            .catch(error => {
                console.log(error);
            });
    },
    getAllMoviesPost: (req, res) => {
        key = req.body.key;
        if (key == 'key-edelar') {
            models.movies.findAll()
                .then(movies => {
                    res.json(movies);
                })
                .catch(error => {
                    console.log(error);
                });
        } else {
            res.json({ error: 'No se pudo obtener la lista de películas' });
        }
    },
    addMovie: (req, res) => {
        key = req.body.key;
        if (key == 'key-edelar') {
            models.movies.create({
                title: req.body.title,
                rating: req.body.rating,
                awards: req.body.awards,
                length: req.body.length,
                release_date: req.body.release_date,
                genre_id: req.body.genre_id
            })
                .then(movies => {
                    res.json(movies);
                })
                .catch(error => {
                    console.log(error);
                });
        } else {
            res.json({ error: 'No se pudo agregar la película' });
        }
    },
    updateMovie: (req, res) => {
        key = req.body.key;
        if (key == 'key-edelar') {
            models.movies.update({
                title: req.body.title,
                rating: req.body.rating,
                awards: req.body.awards,
                length: req.body.length,
                release_date: req.body.release_date,
                genre_id: req.body.genre_id
            }, {
                where: {
                    id: req.body.id
                }
            })
                .then(movies => {
                    res.json(movies);
                })
                .catch(error => {
                    console.log(error);
                });
        } else {
            res.json({ error: 'No se pudo modificar la película' });
        }
    },
    updateMovieTitle: (req, res) => {
        key = req.body.key;
        if (key == 'key-edelar') {
            models.movies.update({
                title: req.body.title,
            }, {
                where: {
                    id: req.body.id
                }
            })
                .then(movies => {
                    res.json(movies);
                })
                .catch(error => {
                    console.log(error);
                });
        } else {
            res.json({ error: 'No se pudo modificar la película' });
        }
    },
    deleteMovie: (req, res) => {
        key = req.body.key;
        if (key == 'key-edelar') {
            models.movies.destroy({
                where: {
                    id: req.body.id
                }
            })
                .then(movies => {
                    res.json(movies);
                })
                .catch(error => {
                    console.log(error);
                });
        } else {
            res.json({ error: 'No se pudo eliminar la película' });
        }
    },
}

module.exports = apisController;