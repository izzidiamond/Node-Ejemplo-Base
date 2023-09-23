const indexController = {
    loginView: (req, res) => {
        res.render('postHtml');
    },

    login: (req, res) => {
        const { username, password } = req.body
        //Logica para comprobar usuario
        const user = true
        console.log(req.body)
        if (user) {
            res.redirect('/tasks');
        } else {
            res.render('form', { message: 'Credenciales incorrectas' });
        }
    },

    updateUserView: (req, res) => {
        res.render('patchAjax');
    },

    updateUser: (req, res) => {
        const { name, lastname, email } = req.body
        // Logica para hacer update al usuario
        console.log(req.body)
        const seActualizo = true
        if (seActualizo) {
            res.status(200).json({ messaje: 'ok' })
        } else {
            res.status(404).json({ messaje: 'id no encontrado' })
        }
    },

    updateUserView2: (req, res) => {
        res.render('patchHtml');
    },

    updateUser2: (req, res) => {
        const { name, lastname, email } = req.body
        // Logica para hacer update al usuario
        console.log(req.body)
        const seActualizo = true
        if (seActualizo) {
            res.render('patchHtml');
        } else {
            res.status(404).json({ messaje: 'id no encontrado' })
        }
    },
}

module.exports = indexController;