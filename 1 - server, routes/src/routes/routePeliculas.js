const express = require('express');
const routerPeliculas = express.Router();
const peliculasController = require('../controllers/peliculasController');

// Routing
routerPeliculas.get('/', peliculasController.index);
routerPeliculas.get('/detalles/:id', peliculasController.detalles);
routerPeliculas.get('/editar', peliculasController.editar);

module.exports = routerPeliculas;