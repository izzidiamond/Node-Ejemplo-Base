const fs = require('fs');

function logMiddleware(req, res, next) {
    fs.appendFileSync('log.txt', 
    'Se ingreso en la pagina ' + req.url + 
    ' con el metodo ' + req.method +
    ' a las ' + new Date() +
    ' desde la IP ' + req.connection.remoteAddress +
    ' con el User Agent ' + req.headers['user-agent'] +
    ' y el Accept ' + req.headers['accept']
    + "\n")


    next();
}

module.exports = logMiddleware;