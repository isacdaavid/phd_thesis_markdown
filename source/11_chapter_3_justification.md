# Justificación

Al día de hoy, clínicos y neurocientíficos cognitivos siguen siendo
bastante dependientes de reportes verbales y otras pistas conductuales
para evaluar estados subjetivos. Pruebas neurales análogas deberían
idearse y descubrirse, pero no solo por sus aplicaciones terapéuticas
y éticas [@seth-2010; @tononi-koch-2015; @michel-et-al-2019]. Más
general y fundamentalmente, se requiere trabajo teórico y empírico
extra para tender un puente explicativo entre los hechos de la
subjetividad (mentales) y los modelos del mundo objetivo (como el
conocimiento científico) [@chalmers-1995; @seth-2010;
@oizumi-et-al-2014]. Resulta agraviante para los estudios de la
consciencia que ni siquiera se tengan bien identificados los
correlatos neuroanatómicos más macroscópicos de prominentes estados
fenomenológicos, como las emociones.

Hay varios sentidos en los que las emociones básicas podrían
considerarse algunos de los estados organísmicos más primitivos,
después de sensaciones como el dolor [@simon-et-al-2006] o un estado
básico de vigilia reactiva/alertamiento [que @damasio-1999 denomina
"emociones de fondo"]: son universales culturales relativamente
diferenciables entre sí [@ekman-1994], y están inextricablemente
conectadas a la homeostasis y estados somáticos de gran relevancia
para el organismo; de modo que su correcto procesamiento en el sistema
nervioso tiene una función preponderante en los mecanismos de la
motivación, la toma de decisiones y el control ejecutivo
[@schwarz-1990; @damasio-1996; @damasio-1998; @damasio-1999;
@bechara-et-al-2000].

Desde el punto de vista de la percepción emocional, ayudar a entender
los mecanismos en tercera persona para su detección y procesamiento
contribuye a nuestra comprensión de la intersubjetividad. Así mismo,
el reconocimiento de expresiones faciales es una forma primaria de
comunicación no verbal [@fridlund-2014; @russell-fernández-1997;
@simon-et-al-2008] que involucra la función de vastos y distribuidos
circuitos neuronales, los cuales se encuentran bajo investigación
activa [@fridlund-2014; @kragel-labar-2014; @kragel-labar-2015].

Pese al éxito inicial identificando y describiendo los sustratos
moleculares y celulares de algunos fenómenos psicológicos y afecciones
psiquiátricas; los métodos de la neurociencia a escalas pequeñas y
medianas, así como el llano _localizacionismo_, fracasan frente a
cantidad de preguntas de interés. Muchos fenómenos psicológicos más
bien emergen (o así se piensa) de la función coordinada de componentes
anatómicamente distribuidos [@gazzaniga-ivry-2013;
@oizumi-et-al-2014]; y la percepción de expresiones faciales no es la
excepción [@kragel-labar-2014]. Las restricciones evolutivas imponen
límites en el número de especializaciones nerviosas que podrían
corresponder unívocamente con el desempeño de una función, de manera
que ciertos fenómenos cognitivos deben corresponder al reclutamiento
diferencial y modulación temporal de recursos más primitivos en el
dominio fisiológico [@gazzaniga-ivry-2013]. Más aún, las nuevas
corrientes en estudios de la cognición hacen hincapié en considerar
holísticamente no solo la actividad del sistema nervioso central como
si se tratara de un sistema confinado; sino la corporización de la
cognición como un mecanismo evolucionado para la acción y la
predicción activa [@friston-2010], e incluso considerando las
vivencias con el medio (ontogenia y filogenia) y las restriscciones
que éste llega a imponer sobre los aparatos cognitivos
[@newen-et-al-2018]. Naturalmente, dichos enfoques han sido
bienvenidos por algunos estudiosos de la emoción de manera
independiente al enfoque corporizado pionero de Damasio [por ejemplo
@harrison-et-al-2010; @seth-2013; @slaby-2014].

Para abordar este tipo de preguntas, la resonancia magnética nuclear
funcional es capaz de registrar señales correlato de los potenciales
locales de campo, a la vez que provee un moderado balance de
resolución espacial y temporal para diferenciar casi simultáneamente
el metabolismo aeróbico en todo el encéfalo. Es una técnica idónea para
estudios en los que redes funcionales asociadas a tareas primero deben
ser identificadas o refinadas, allanando el terreno para técnicas de
medición más finas que intenten establecer la circuitería y química
sináptica [@logothetis-2008].

El actual debate alrededor de los mecanismos cognitivos de la
percepción de expresiones faciales se beneficiará de evidencia
adicional en materia de disociación anatomo-funcional; y lo que es más
apremiante: el uso de métodos de análisis más sensibles para derivar
la evidencia necesaria.

Los métodos multivariantes han demostrado tener mayor éxito
extendiendo la identificación de interacciones complejas de actividad
cerebral que no son abordables mediante modelos de regresión
tradicionales [@huettel-et-al-2009; @mahmoudi-et-al-2012;
@lewis-peacock-norman-2013]. Considere el siguiente ejemplo en el que
el patrón de activación (ej., la señales de actividad en distintas
áreas del cerebro) bajo dos condiciones o macroestados experimentales,
llamados _A_ y _B_, ha sido construido según la siguiente relación
(reducida a dos voxeles por simplicidad):

(@math-circle) $$ \left\{ \begin{array}{cc}
                           A: & voxel_1^2 + voxel_2^2 > r^2 \\
                           B: & voxel_1^2 + voxel_2^2 < r^2
           \end{array} \right. $$

Esto no es más que un círculo en el espacio de los voxeles (espacio de
estados o espacio fase, más generalmente). Si restringimos los valores
a un intervalo finito y constante centrado en $(0,0)$, llamado $c$,
entonces podemos obligar a los macroestados _A_ y _B_ a poseer el
mismo número de puntos; si y solo sí $r$ en la expresión
(@math-circle) cumple que:

(@math-circle-area) $$ \frac{c^2}{2} = \pi r^2 $$

Luego, se muestrean algunos puntos aleatoriamente de manera uniforme
(40 en las figuras \ref{lm-vs-multivariate-2} y
\ref{lm-vs-multivariate-1}). Al graficarlos en el plano, se observa
que nuestras mediciones contienen suficiente información para
distinguir ambos estados cerebrales, incluso por simple inspección
visual:

![Patrón bidimensional no lineal de actividad de dos voxeles, según se
muestreó aleatoriamente con 18 ensayos bajo la condición experimental
_A_ más 22 bajo la _B_. Las mediciones de la señales que corresponden
a la condición _A_ pueden distinguirse por su excentricidad con
respecto de la condición
_B_. \label{lm-vs-multivariate-2}](source/figures/./lm-vs-multivariate-2.svg){width=70%}

Sin embargo un análisis univariado (como regresión mediante GLM) está
destinado a fracasar (ver figura \ref{lm-vs-multivariate-1}). Las
distribuciones unidimensionales de muestra se encuentran
aproximadamente centradas alrededor del mismo valor de intensidad, así
que no se observa ningún efecto intercondición. Por otro lado, las
mediciones están muy dispersas y lucen ruidosas. Tal enormidad en el
rango de valores para cada estado tampoco puede ser explicado por
artefactos de movimiento ni por un proceso determinista no
estacionario que empuje sistemáticamente los valores; ya que el
proceso usado para generar los estados fue explícitamente ninguna de
esas cosas.

![Modelos de regresión lineal simplificados y valores $p$ de las pruebas $t$ para las proyecciones de los datos de la figura \ref{lm-vs-multivariate-2} sobre cada eje. El efecto de las condiciones experimentales sobre voxeles individuales es negligible (atestiguado por las pequeñas pendientes de los modelos), y probablemente son resultado del azar (valores $p$), como se esperaba. También por construcción, una prueba de Shapiro-Wilk revela que las distribuciones de datos _A_ no pasan el criterio de normalidad, haciendo más cuestionable la aplicación de este tipo de análisis. \label{lm-vs-multivariate-1}](source/figures/./lm-vs-multivariate-1.svg){width=70%}

Incluso un clasificador univariado no lineal cometería una gran
cantidad de errores en la intersección entre ambas
distribuciones.[^uni-curvo] Un patrón discriminante univariado podría
observarse a partir de un análisis dinámico del espectro de
frecuencias bajo condiciones dinámicas especiales,[^fourier] pero el
enfoque más adecuado por mucho es considerar ambos voxeles
simultáneamente; como en la figura \ref{lm-vs-multivariate-2}, ya que
así es como se generaron los datos en primer lugar.

[^uni-curvo]: Imagine que todos los puntos de un voxel son colocados
    sobre la recta real, y permitimos dibujar una curva continua sobre
    todo el plano, con tal de separar las dos condiciones.

[^fourier]: Si las oscilaciones de la trayectoria durante un estado
    fueran más rápidas, por ejemplo. O más generalmente, en la medida
    en que su descomposición de Fourier favorezca frecuencias
    exclusivas.

Paradójicamente, los estudios disponibles con MVPA han limitado
sistemáticamente las bondades matemáticas de estos métodos; cuando
evitan analizar datos de gran dimensionalidad espacial y cuando, pese
a haber realizado un análisis de cerebro completo, pierden la
oportunidad de realizar pruebas estadísticas rigurosas para derivar
mapas anatómicos de actividad cerebral relacionada a la tarea. Ambas
características son parte integral del análisis clásico, que los
proponentes de MVPA no escatiman calificar como complementario, si no
es que obsoleto. La gran mayoría de los estudios con MVPA más bien han
enfatizado su capacidad para hacer decodificación neuronal y
predicción a partir de un subconjunto de voxeles o regiones de
interés, seleccionadas _a priori_ o heurísticamente, así se
desperdicie la oportunidad de encontrar un mejor patrón haciendo una
búsqueda guiada por los datos, más extensiva y distribuida (como son
los correlatos cerebrales conocidos de las emociones).

Otras causas para estas flaquezas en la literatura de MVPA son más
bien limitantes computacionales y metodológicas: la adición de
variables puede ser detrimental para los resultados cuando sólo
algunas de ellas contribuyen información y no ruido, además de
complicar el cómputo. Por lo tanto puede ser legítimo a los objetivos
de un estudio buscar reducir la dimensionalidad (también conocido como
"selección de características"). Tanto la reducción de dimensiones
como la selección de algoritmo de aprendizaje de patrones puede que
impactare también en la factibilidad de producir mapas anatómicos de
actividad, ya que muchos de ellos descartan la correspondencia entre
sus propias variables y la topología de los voxeles originales. Con
todo y eso, éstas son áreas de gran oportunidad para los estudios de
discriminación de emociones. De hecho, el algoritmo más recurrido
(SVM) _sí tiene interpretación espacial_ subutilizada. A continuación
se revisarán los mejores acercamientos hasta ahora, seleccionando de
la lista mencionada en el capítulo de _Antecedentes_.

En materia de percepción emocional, @kotz-et-al-2012 hicieron pruebas
estadísticas a nivel de grupo, produciendo mapas anatómicos de
actividad relevante a la discriminación de expresión emocional en
estímulos sonoros. Sin embargo, los datos de entrada al análisis
grupal provienen de una búsqueda tipo "searchlight", que se restringe
a analizar voxeles contiguos dentro de una esfera de pocos milímetros
de radio. @skerry-saxe-2015 también realizaron un análisis global
mediante searchlight y análisis estadístico a nivel grupal, como
justificación de sus ROIs y evidencia
complementaria. @hernandez-et-al-2018 limitaron la elaboración de
mapas anatómicos a un espacio de búsqueda con el 1% de voxeles más
sobresalientes según sus puntajes $F$ en una prueba ANOVA, y no se
intentó un análisis grupal, probablemente porque el poco traslape
espacial tras los ANOVAs por sujeto lo volvería fútil. Los puntajes
$F$ son una razón entre la varianza media intergrupal (Mean Square
Among groups) y la varianza media intragrupal (Mean Square Within
groups), como define la ecuación (@math-f-score). Por lo tanto asume
que los voxeles tienen comportamientos gaussianos, y que los más
relevantes para lograr la decodificación son los más separados del
resto. Esto merma la decisión de usar MVPA, que suele ofrecer mayor
generalidad.

(@math-f-score) $$ F = \frac{MSA}{MSW} =
     \frac{\frac{1}{G-1} \sum_{g=1}^{G} n_g \left( \bar{x}_{g.}-\bar{x}..\right)^2}
     {\frac{1}{N-G} \sum_{g=1}^G \sum_{i=1}^{n_g}\left(x_{gi}-\bar{x}_{g.}\right)^2} $$

Donde $G$ es el número de grupos, $N$ el número neto de datos y $n_g$
el número de datos para el grupo $g$.

En lo que respecta a experimentación de emociones en primera persona,
@saarimaki-et-al-2015 también filtraron sus voxeles mediante puntajes
$F$, luego derivaron mapas anatómicos para cada categoría emocional a
partir de la actividad y los pesos de la red neuronal artificial
entrenada para hacer la clasificación. Esta red únicamente contenía
capa de entrada (con una neurona por voxel) y capa de salida (una
neurona por categoría), por lo que su entrenamiento es equivalente a
optimizar las combinaciones lineales de señales que "activan" una
categoría; no muy distinto de lo que logra el algoritmo SVM
lineal. Extrañamente, se reportó el producto del peso de la sinapsis
artificial y el valor del voxel; asumiendo sin garantías que un voxel
"silencioso" durante determinado estado emocional no contribuye a
manufacturar dicho estado, aunque la red neuronal le hubiese dado mucho
peso. Quizás el reporte más completo hasta ahora sea el de
@kragel-labar-2015: un estudio multimodal de inducción de emociones
que además comparó el modelo de emociones básicas vs un modelo
dimensional. Utilizó un algoritmo de análisis discriminante por
mínimos cuadrados parciales (PLS-DA) entrenado con los datos de todos
los sujetos, de cuyos parámetros se derivaron (y validaron
estadísticamente mediante técnicas de remuestreo) patrones anatómicos
para cada emoción.

Ademas, muchos de estos estudios podrían haber sido menos laxos en sus
pruebas estadísticas a nivel grupal; por ejemplo, a causa del método
de corrección de múltiples comparaciones, umbrales de significancia y
uso de distribuciones paramétricas a priori que podrían no reflejar
los verdaderos niveles de clasificación por azar. Así mismo, aunque
algún tipo u otro de validación cruzada contra ejemplos fuera de la
muestra de entrenamiento es estrictamente observada en la literatura;
aquellos que recurrieron al esquema "leave-one-out", o con "folds" que
no corresponden a las adquisiciones de datos, no reportaron haber
mitigado la autocorrelación de las señales. Es decir, si datos
suficientemente temporalmente cercanos a los de entrenamiento
terminaran en la partición de validación, podría ser que el buen
desempeño del clasificador se debiera a similitudes en las tendencias
de baja frecuencia y no a un aprendizaje de las características de
interés. Esto es cierto en la medida que el funcional de correlación
cruzada resulte alto.[^autocorrelation][^filter-detrending]

[^autocorrelation]: Se puede explicar mediante la siguiente analogía:
    imagine que toma consecutivamente dos fotografías de un amigo, con
    el afán de usar la primera para pedirle a un tercero que aprenda a
    reconocerlo, y la segunda para poner su habilidad a prueba. Puede
    que acierte debido a que en la segunda foto llevaba la misma ropa,
    porque el fondo y los colores son similares; y no debido a que
    aprendió a reconocer a la persona.

[^filter-detrending]: Aunque no son usados explícitamente para este
    propósito, el uso de filtros pasa-altas y regresión para
    "detrending" podrían estar mitigando el problema.

