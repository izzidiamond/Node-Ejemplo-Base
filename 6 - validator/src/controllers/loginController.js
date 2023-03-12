const bcrypt = require('bcryptjs');
const dbSequelize = require('../database/database'); // importa la instancia de Sequelize que creaste para la base de datos
const models = require('../database/models/init-models')(dbSequelize);

const loginController = {
    index: (req, res) => { // GET /login
        res.render('login');
    },
    
    login: async (req, res) => { // POST /login
        const { email, password } = req.body;

        const user = await models.users.findOne({
            where: {
                email: email,
            }
        });

        if (!user) {
            return res.render('login', { message: 'Credenciales incorrectas' });
        }

        // Comparar la contraseña ingresada con la contraseña hasheada de la base de datos
        const match = await bcrypt.compare(password, user.password); // true o false

        if (match) {
            req.session.authenticated = true;
            res.redirect('/peliculas');
        } else {
            res.render('login', { message: 'Credenciales incorrectas' });
        }
    }
}

module.exports = loginController;
