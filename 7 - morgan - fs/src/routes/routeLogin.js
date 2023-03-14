const express = require('express');
const routerLogin = express.Router();
const loginController = require('../controllers/loginController');

// Routing
routerLogin.get('/', loginController.index);
routerLogin.post('/', loginController.login);

module.exports = routerLogin;