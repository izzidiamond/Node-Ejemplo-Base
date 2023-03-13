const express = require('express');
const routerRegister = express.Router();
const registerController = require('../controllers/registerController.js');
const registerValidator = require('../middlewares/registerValidator');

// Routing
routerRegister.get('/', registerController.index);
routerRegister.post('/', registerValidator, registerController.register);

module.exports = routerRegister;
