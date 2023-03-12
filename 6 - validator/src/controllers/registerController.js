const { validationResult } = require('express-validator');
const bcrypt = require('bcryptjs');
const dbSequelize = require('../database/database'); // importa la instancia de Sequelize que creaste para la base de datos
const models = require('../database/models/init-models')(dbSequelize);

const registerController = {
  index: (req, res) => {
    res.render('register');
  },
  register: (req, res) => {
    const errors = validationResult(req);
    //console.log(req.body);
    //console.log(errors);
    if (!errors.isEmpty()) {
      return res.render('register', {
        errors: errors.array(),
        old: req.body
      });
    }

    const { name, email, password, role } = req.body;
    const saltRounds = 10; // 10 vueltas de encriptación y agrega aleatoriedad
    const user = {
      name,
      email,
      password: bcrypt.hashSync(password, saltRounds),
      role
    };

    models.users.create(user)
      .then(() => {
        res.render('login', { message: 'Registro Exitoso' });
      })
      .catch(error => {
        console.log(error);
        res.send('Hubo un error al intentar registrar el usuario');
      })
    
  }
}

module.exports = registerController;
