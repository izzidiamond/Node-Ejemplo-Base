On a 2GHz core you can roughly expect:
rounds=8 : ~40 hashes/sec
rounds=9 : ~20 hashes/sec
rounds=10: ~10 hashes/sec
rounds=11: ~5  hashes/sec
rounds=12: 2-3 hashes/sec
rounds=13: ~1 sec/hash
rounds=14: ~1.5 sec/hash
rounds=15: ~3 sec/hash
rounds=25: ~1 hour/hash
rounds=31: 2-3 days/hash



Porque en este middleware no uso next() y en los otros si?
Este middleware, es un middleware de validación que utiliza la biblioteca Express Validator para validar los datos de entrada en una solicitud. En este caso, no es necesario llamar a next() ya que si alguno de los campos de entrada no cumple con las validaciones definidas, se producirá un error de validación y se enviará una respuesta de error al cliente, deteniendo la ejecución del middleware.

Es importante tener en cuenta que no todos los middlewares necesitan llamar a next(). De hecho, algunos middlewares pueden manejar completamente la solicitud y enviar una respuesta sin llamar a next(). Otros middlewares, como los middlewares de autenticación y autorización, pueden necesitar llamar a next() solo si la solicitud se autentica correctamente y el usuario tiene los permisos necesarios para acceder a los recursos protegidos.

Por otro lado, los middlewares que utilizan next() lo hacen para pasar la solicitud al siguiente middleware o controlador en la cadena de middlewares de Express. Por ejemplo, los middlewares que manejan la autenticación y autorización pueden llamar a next() solo si la solicitud está autenticada y autorizada correctamente para permitir que continúe la ejecución del siguiente middleware o controlador en la cadena de middlewares.

En resumen, el uso de next() depende del comportamiento deseado del middleware y de su lugar en la cadena de middlewares de Express. En el caso del middleware de validación que muestras, no es necesario llamar a next() ya que se encarga completamente de manejar la solicitud y enviar una respuesta de error si es necesario.



Cuando uso compare de bcrypt estoy enviando la password normal a comprar con la password encriptada. Como sabe bcrypt la saltRounds?
Cuando utilizas bcrypt.compare(password, hash) para comparar la contraseña ingresada por el usuario (password) con la contraseña hasheada almacenada en la base de datos (hash), no necesitas pasar el número de salt rounds que se usó para hashear la contraseña original, porque esa información ya está contenida en el hash almacenado en la base de datos.

La función bcrypt.compare extrae automáticamente el número de salt rounds del hash almacenado en la base de datos, por lo que no es necesario que lo pases explícitamente.

La función bcrypt.compare compara la contraseña sin hashear ingresada por el usuario (password) con la contraseña almacenada en la base de datos (hash), y se asegura de que la contraseña ingresada coincida con la contraseña almacenada después de hashearla con el número de salt rounds correspondiente.

Es importante tener en cuenta que bcrypt.compare devuelve una promesa que resuelve en un valor booleano que indica si las contraseñas coinciden o no.