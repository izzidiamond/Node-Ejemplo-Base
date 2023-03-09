const express = require('express');
const app = express();


// Routers
const routerIndex = require('./routes/routeIndex'); // Importamos el router de index
app.use('/', routerIndex); // Le decimos a Express que use el router de index en la ruta /

const routerPeliculas = require('./routes/routePeliculas'); // Importamos el router de peliculas
app.use('/peliculas', routerPeliculas); // Le decimos a Express que use el router de peliculas en la ruta /peliculas

// Server
const PUERTO = process.env.PORT || 3000; // Si no existe la variable de entorno PORT, usa el puerto 3000

app.listen(PUERTO, function() {
    console.log(`Servidor escuchando en http://localhost:${PUERTO}`);
});