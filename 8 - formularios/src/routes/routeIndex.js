const express = require('express');
const routerIndex = express.Router();
const indexController = require('../controllers/indexController.js');

// Routing
routerIndex.patch('/form', indexController.form);
routerIndex.get('/formRender', indexController.formRender);
routerIndex.get('/formRender2', indexController.formRender2);

module.exports = routerIndex;