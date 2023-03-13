const express = require('express');
const routerApis = express.Router();
const apisController = require('../controllers/apisController.js');

// Routing

// GET se usa para obtener datos 
routerApis.get('/getAllMovies', apisController.getAllMoviesGet);
routerApis.get('/getMovie/:id', apisController.getMovie);

// POST se usa para enviar datos
routerApis.post('/getAllMovies', apisController.getAllMoviesPost);
routerApis.post('/addMovie', apisController.addMovie);

// DELETE se usa para eliminar datos
routerApis.delete('/deleteMovie', apisController.deleteMovie);

// PUT se usa para modificar datos Update/Replace
routerApis.put('/updateMovie', apisController.updateMovie);

// PATCH se usa para modificar datos Update/Modify
routerApis.patch('/updateMovie', apisController.updateMovieTitle);

module.exports = routerApis;