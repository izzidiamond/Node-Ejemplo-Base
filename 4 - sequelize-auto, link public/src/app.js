const express = require('express');
const app = express();
const methodOverride = require('method-override');
const session = require('express-session');
const requireAuth = require('./middlewares/requireAuth.js');

// Middlewares
app.use(methodOverride('_method')); // Para poder pisar el method="POST" en el formulario por PUT y DELETE
app.use(express.urlencoded({ extended: true })); // Para poder leer los datos de los formularios
app.use(express.json()); // Para poder leer los datos de los formularios en formato JSON

app.use(express.static('../public')); // Para poder servir archivos estáticos (CSS, JS, imágenes, etc)

// Session
app.use(session({ 
    secret: 'my-secret-key', // Clave secreta para firmar la cookie
    resave: false, // Si no hay cambios en la sesión, no la guarda
    saveUninitialized: false // Si no hay nada en la sesión, no la guarda
}));


// View engine setup
app.set('view engine', 'ejs'); // Le decimos a Express que use EJS como motor de plantillas


// Routers
const routerIndex = require('./routes/routeIndex'); // Importamos el router de index
app.use('/', routerIndex); // Le decimos a Express que use el router de index en la ruta /

const routerPeliculas = require('./routes/routePeliculas'); // Importamos el router de peliculas
app.use('/peliculas', requireAuth, routerPeliculas); // Le decimos a Express que use el router de peliculas en la ruta /peliculas

const routerLogin = require('./routes/routeLogin'); // Importamos el router de login
app.use('/login', routerLogin); // Le decimos a Express que use el router de login en la ruta /login


// Server
const PUERTO = process.env.PORT || 3000; // Si no existe la variable de entorno PORT, usa el puerto 3000

app.listen(PUERTO, () => {
    console.log(`Servidor escuchando en http://localhost:${PUERTO}`);
});