const { body } = require('express-validator');

const registerValidator = [
  body('name')
    .trim().notEmpty().withMessage('El nombre es requerido'),
  body('email')
    .notEmpty().withMessage('El email es requerido').bail()
    .isEmail().withMessage('Email inválido')
    .normalizeEmail(),
  body('password')
    .notEmpty().withMessage('La contraseña es requerida').bail()
    .isLength({ min: 8 }).withMessage('La contraseña debe tener al menos 8 caracteres'),
  body('confirm_password')
    .notEmpty().withMessage('Debes confirmar la contraseña')
    .custom((value, { req }) => {
      if (value !== req.body.password) {
        throw new Error('Las contraseñas no coinciden');
      }
      return true;
    }),
  body('role')
    .notEmpty().withMessage('Debe seleccionar un rol')
    .isIn(['admin', 'operator', 'user']).withMessage('Rol inválido')
];

module.exports = registerValidator;
