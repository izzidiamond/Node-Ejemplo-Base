¿Porque usar patch delete y put si puedo simplemente utilizar POST?

En general, la razón por la cual se utilizan diferentes métodos HTTP como PATCH, DELETE y PUT en lugar de solo POST es para seguir las convenciones de diseño de API RESTful y para mejorar la semántica y legibilidad de la API.

Aquí hay algunas razones específicas por las que se utilizan estos métodos HTTP en lugar de solo POST:

Claridad y semántica: cada método HTTP tiene un significado específico y diferente. Por ejemplo, DELETE se usa para eliminar recursos, mientras que PUT se usa para actualizar recursos completos. PATCH se utiliza para actualizar recursos parciales, es decir, actualizar solo algunos campos de un recurso existente. Si solo se usara POST para todas las operaciones, sería menos claro y más difícil de entender qué acción se está realizando.

Utilización adecuada de HTTP: POST se utiliza principalmente para crear nuevos recursos, pero también se puede utilizar para actualizar recursos existentes. Sin embargo, esto no sigue las convenciones de diseño RESTful. Además, si se usa POST para realizar acciones como la eliminación o actualización de recursos, se violaría el principio de "seguridad de métodos HTTP" en el que solo se permite realizar ciertas acciones con ciertos métodos HTTP.

Interoperabilidad: los diferentes métodos HTTP tienen diferentes requisitos y comportamientos. Por ejemplo, cuando se usa PUT para actualizar un recurso, se espera que se envíe el recurso completo actualizado en el cuerpo de la solicitud. Si se usa POST para esta operación, no habría una convención clara sobre cómo enviar el recurso actualizado.

En resumen, aunque es técnicamente posible usar solo POST para todas las operaciones CRUD, el uso de diferentes métodos HTTP como PATCH, DELETE y PUT ayuda a seguir las convenciones de diseño RESTful, mejora la claridad y la semántica de la API, y garantiza la interoperabilidad y el uso adecuado de HTTP.