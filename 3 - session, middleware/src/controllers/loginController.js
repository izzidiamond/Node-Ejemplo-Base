
const loginController = {
    index: (req, res) => { // GET /login
        res.render('login');
    },
    
    login: (req, res) => { // POST /login
        //const { email, password } = req.body;
        const email = req.body.email;
        const password = req.body.password;
        console.log(req.body)
        if (email === 'admin' && password === 'admin') {
            req.session.authenticated = true;
            res.redirect('/peliculas');
        } else {
            res.render('login', { message: 'Credenciales incorrectas' });
        }
    }
}

module.exports = loginController;
