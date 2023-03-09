const modelMovie = require('../database/models/modelPeliculas.js');

const peliculasController = {
    index: (req, res) => {
        modelMovie.findAll()
            .then(movies => {
                res.render('listarPeliculas', { movies });
            })
    },
    detalles: (req, res) => {
        modelMovie.findByPk(req.params.id)
            .then(movie => {
                res.render('detallePelicula', { movie });
            })
    },
    editar: async (req, res) => {
        await modelMovie.update({
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
        modelMovie.destroy({
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
