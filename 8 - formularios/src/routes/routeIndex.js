const express = require('express');
const routerIndex = express.Router();
const indexController = require('../controllers/indexController.js');

// Routing
routerIndex.get('/login', indexController.loginView);
routerIndex.post('/login', indexController.login);

routerIndex.get('/updateUser', indexController.updateUserView);
routerIndex.patch('/updateUser', indexController.updateUser);

routerIndex.get('/updateUser2', indexController.updateUserView2);
routerIndex.patch('/updateUser2', indexController.updateUser2);

module.exports = routerIndex;