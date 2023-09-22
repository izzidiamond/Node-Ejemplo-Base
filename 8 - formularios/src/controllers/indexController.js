const indexController = {
    formRender: (req, res) => {
        res.render('form');
    },

    formRender2: (req, res) => {
        res.render('form2');
    },

    form: (req, res) => {
        console.log(req.body)
    }
}

module.exports = indexController;