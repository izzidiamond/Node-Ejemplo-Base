
const peliculasController = {
    index: (req, res) => {
        res.send('Estoy en el index de peliculas');
    },
    detalles: (req, res) => {
        res.send('Este en el detalle de la pelicula ' + req.params.id);
    },
    editar: (req, res) => {
        res.send('Estoy en editar');
    },
}

module.exports = peliculasController;
