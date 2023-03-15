const dbSequelize = require('../database/database'); // importa la instancia de Sequelize que creaste para la base de datos
const models = require('../database/models/init-models')(dbSequelize);

const peliculasController = {
    index: (req, res) => {
            models.movies.findAll()
            .then(movies => {
                res.render('listarPeliculas', { movies });
            })      
    },
    detalles: (req, res) => {
        models.movies.findByPk(req.params.id, {
            include: ['genre']
        })
        .then(movie => {
            console.log(movie.dataValues);
            res.render('detallePelicula', { movie });
        })
    },
    editar: (req, res) => {
        models.movies.update({
            title: req.body.title,
            rating: req.body.rating,
            awards: req.body.awards,
            release_date: req.body.release_date,
            length: req.body.length,
            genre_id: req.body.genre_id
        }, {
            where: {
                id: req.params.id
            }
        })
        res.redirect(`/peliculas/${req.params.id}`);
    
      },
    eliminar: (req, res) => {
        models.destroy({
            where: {
                id: req.params.id
            }
        })
        .then(() => {
            res.redirect('/peliculas');
        })
        .catch(error => {
            console.log(error);
            res.send('Hubo un error al intentar eliminar la película');
        });
    }
}

module.exports = peliculasController;
