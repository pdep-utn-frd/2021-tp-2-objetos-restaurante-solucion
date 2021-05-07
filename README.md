### Trabajo Práctico Nro 2
#### Conceptos: Objetos y mensajes, polimorfismo, tests, colecciones, bloques

# Concurso gastronómico


Estaremos analizando la propuesta gastronómica en la ciudad, donde se compite por tener la más alta calidad.  Para ello se organizó un concurso por el cual cada casa de comidas obtiene un puntaje y el que alcanza el mayor puntaje resulta ganador. No se sabe de antemano en qué momento el jurado visitará los locales participantes para establecer el puntaje, por lo que tienen que estar siempre preparados, y como el puntaje obtenido depende de las circunstancias del momento todos tienen posibilidades de resultar ganadores.

#### Finoli
En el restaurante "finoli" hay un plato del día que elige el chef principal. Generalmente es "Cristof" el chef más antiguo, especializado en cocina francesa, pero hay otro sin tantos  antecedentes que en ocasiones queda a cargo de la cocina y prefiere hacer un buen plato de tallarines. El restaurante está pensando en contratar un nuevo chef que eventualmente también pueda asumir el rol de chef principal.
El restaurante lleva un registro de las valoraciones de los críticos que recibió en el último tiempo, que van de 0 a 5 tenedores.
Actualmente, el plato típico francés es ratatouille y el clima en París es soleado.
El jurado establece como puntaje del restaurante el puntaje del plato del día más el promedio de las valoraciones recibidas. 

#### Bodegón
El "bodegón de Cacho" ofrece en su menú matambrito a la pizza, milanesa napolitana con guarnición y tallarines.
Cuando es visitado por el jurado, el puntaje que obtiene es el doble del puntaje de su peor plato.

#### Comidas rápidas
Mc delta vende su típico combo de hamburguesa (con doble carne, jamón, queso, lechuga y tomate) y papas fritas.
Como le interesa la masividad, lleva el registro de la cantidad de personas que asisten al local. 
El puntaje que otorga el jurado es el puntaje de la hamburguesa más un punto extra por cada 1000 clientes que hayan ido al local (como máximo 5 puntos extra) 




### El puntaje
Si bien el puntaje global que otorga el jurado tiene en cuenta otros aspectos del local de comidas, cuando analiza cada plato se concentra específicamente en cómo es, sus ingredientes y sus cualidades propias. El detalle de puntos es el siguiente
* Hamburguesa: tantos puntos como ingredientes tenga más el puntaje de las papas fritas, más un punto adicional si lleva queso. 
* Milanesa napolitana con guarnición: Un puntaje según la carne utilizada para la milanesa más el puntaje de la guarnición, que generalmente es puré o papas fritas. 
* Papas fritas: 3 puntos.
* Puré: Un punto seguro y la posibilidad de un punto más si tiene manteca.
* Tallarines: siempre 8 puntos. 
* Ratatouille: entre 8 y 10 puntos, dependiendo del clima en París.
* Matambrito a la pizza: Un puntaje según la carne del matambre más 2 puntos.
* La carne de vaca tiene actualmente puntaje 8, pero podría varia según lo que suceda en el mercado de hacienda. La carne de pollo es dos punto menos que la de vaca. La carne de cerdo obtiene el 75% del puntaje de la de vaca.


### Requerimientos iniciales
1. Permitir cambios en el armado de los platos (agregar o quitar ingredientes, variar guarniciones o carnes, etc)
2. Averiguar el puntaje de los diferentes platos.
3. Representar diferentes circunstancias que puedan afectar directa o indirectamente a los locales de comidas (aumento de la cantidad de clientes, agregados de platos en el menú, modificación del chef principal, cambio de clima en París, valoración de un crítico, etc)
4. Obtener el mejor lugar de comidas de la ciudad, a partir del puntaje que obtiene cada uno.


### Consigna creativa
5. Encontrar a qué restaurantes de la ciudad se puede ir para comer algún plato apto para celíacos. 
6. Agregar un nuevo chef al restaurante finoli, con una manera diferente de elegir su plato del día.
7. Como aparece un puesto callejero de venta de comidas que tambien se quiere sumar al concurso, hay que inventar una implementación lo más básica posible, pero que permita que todo funcione. 
8. Con motivo de una pandemia que azota a la ciudad, todos sus locales de la ciudad realizan alguna adaptación, que consiste en considerar una o más de las circunstancias mencionadas. 


### Consigna
* Modelar a todas las entidades involucradas, con la implementación de sus correspondientes responsabilidades.
* Hacer pruebas variadas, especialmente que contemplen diferentes escenarios y en cada obtener al correspondiente ganador del concurso. 
* En los puntos creativos agregar un comentario que describa los detalles del problema que se quiso resolver.
* Explicar: ¿Qué sucede cuando diferentes locales de comidas hacen el mismo plato? Incluir un test donde suceda.
