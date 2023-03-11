const { validationResult } = require('express-validator');

const registerController = {
  index: (req, res) => {
    res.render('register');
  },
  register: (req, res) => {
    const errors = validationResult(req);
    console.log(req.body);
    if (!errors.isEmpty()) {
      return res.render('register', {
        errors: errors.array(),
        old: req.body
      });
    }

    res.send('Registro exitoso');
    
  }
}

module.exports = registerController;
