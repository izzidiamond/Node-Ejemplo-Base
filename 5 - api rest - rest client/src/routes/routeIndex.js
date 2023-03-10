const express = require('express');
const routerIndex = express.Router();
const indexController = require('../controllers/indexController.js');

// Routing
routerIndex.get('/', indexController.index);

module.exports = routerIndex;