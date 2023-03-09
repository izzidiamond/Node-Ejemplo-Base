const express = require('express');
const routerPeliculas = express.Router();
const peliculasController = require('../controllers/peliculasController');

// Routing
routerPeliculas.get('/', peliculasController.index);
routerPeliculas.get('/:id', peliculasController.detalles);
routerPeliculas.patch('/editar/:id', peliculasController.editar);

module.exports = routerPeliculas;