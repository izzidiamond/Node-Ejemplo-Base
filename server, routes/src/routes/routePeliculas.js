const express = require('express');
const routerPeliculas = express.Router();
const peliculasController = require('../controllers/peliculasController');

// Routing
routerPeliculas.get('/', peliculasController.index);
routerPeliculas.get('/:id', peliculasController.detalles);

module.exports = routerPeliculas;