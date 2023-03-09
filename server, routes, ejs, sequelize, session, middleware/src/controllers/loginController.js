const loginController = {
    index: (req, res) => { // GET /login
        res.render('login');
    },
    
    login: (req, res) => { // POST /login
        //const { username, password } = req.body;
        const username = req.body.username;
        const password = req.body.password;

        if (username === 'admin' && password === 'admin') {
            req.session.authenticated = true;
            res.redirect('/peliculas');
        } else {
            res.render('login', { message: 'Credenciales incorrectas' });
        }
    }
}

module.exports = loginController;
