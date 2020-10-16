# Muestra, Materiales y Métodos

Se analizaron dos bases de datos distintas en búsqueda de evidencia de
una representación neural de la emoción de los estímulos. Mientras que
la primera proviene de un experimento psicológico que no involucró al
autor del presente proyecto, el segundo experimento fue diseñado desde
cero con el propósito expreso de mitigar las deficiencias percibidas
en el primero. Ambos estudios siguen un diseño transversal de un solo
grupo. En lo subsecuente serán referidos como __Experimento 1__ y
__Experimento 2__, respectivamente. Es importante redundar en que
ambos se destinaron a responder exactamente la misma cuestión, y por
lo tanto serán descritos simultáneamente, resaltando sus diferencias.

## Participantes

El Experimento 1 reunió 34 participantes neurotípicos; sin reporte de
padecer o haber sido diagnosticados con algún síndrome neurológico o
psiquiátrico.

<!-- [tabla demográfica muestra 1]. -->

El Experimento 2 reunió 15 participantes de ambos sexos con edad
promedio de 25 años, quienes también negaron padecer o en algún
momento haber sido diagnosticados con alguna condición neurológica o
psiquiátrica, motivo por el cual tres interesados fueron excluidos.
Con excepción de un participante zurdo, todos reportaron expresar
fenotipo de lateralidad diestra en algún grado. Posterior a su
participación, un sujeto fue excluido del análisis debido a una falla
de sincronización en la adquisición de imágenes; ya que habría
conducido a un desbalance en el número de muestras disponibles para
entrenar los modelos de clasificación automática.

\scriptsize

| $n=15$ | | |
|-|-:|-:|
| __Edad__ (años)       | $\bar{x}$ | $S.D.$ |
|                       | $24.93$   | $3.01$ |
| __Sexo__              | Mujeres   | Hombres |
|                       | $8$       | $7$       |
| __Escolaridad__       | Licenciatura | Posgrado |
| (obtenida o en curso) | $8$            | $7$        |

Table: Características demográficas de los 15 participantes
satisfactoriamente incluidos en el Experimento 2
efectivo. \label{participantes}

\normalsize

## Adquisición de imágenes

Tanto las imágenes del primer como del segundo experimento fueron
obtenidas con un resonador magnético General Electric Discovery MR750
a 3 T en su punto de máxima magnitud de campo, dentro de la Unidad de
Resonancia Magnética del Instituto de Neurobiología de la Universidad
Nacional Autónoma de México. Los ecos inducidos fueron registrados con
una antena de 32 canales montada alrededor de la cabeza de los
participantes.

En una sola sesión por participante se adquirieron 3 (Experimento 1) ó
5 (Experimento 2) secuencias eco-planares para señal BOLD,
respectivamente de 260 y 185 volúmenes c/u. Cada volumen contiene 34 ó
35 rebanadas transversales respectivamente, con una matriz de 64x64
cada una, a voxeles isométricos de 4mm $\cdot$ 4mm $\cdot$ 4mm para ambos
experimentos. Además se adquirió una imagen anatómica pesada a
contraste T2 y otra a T1 por sujeto. La tabla
\ref{sequence-parameters} describe los parámetros de cada
tipo de secuencia.

\footnotesize

| Parámetro de secuencia | EPI BOLD | T2w FSE | T1w FSPGR |
|--------------------|------------:|--------------:|---:|
| Orientación de rebanadas  | Axial | Axial | Axial o sagital |
| Rebanadas             | $34$ ó $35$          | $35$ | $176$ |
| FOV                   | $64$×$64$     | $512$×$512$ | $256$×$256$ |
| Tamaño de voxel         | $(4\;mm)^3$ | $.5$×$.5$×$.4\;mm^3$ | $(1\;mm)^3$ |
| Flip angle         | $\pi/2$      | $7\pi/9$ | $3\pi/45$ |
| TR (ms)            | $2000$  | $6255$ | $8.18$ |
| TE (ms)            | $30$    | $101.4$ | $3.19$ |
| TI (ms)            |             |  | $450$ |

Table: Parametros de secuencia utilizados durante el protocolo de adquisición de imágenes por resonancia magnética. \label{sequence-parameters}

\normalsize

![Muestra de imágenes crudas de un mismo sujeto para cada tipo de
secuencia (en el mismo orden que en la tabla
\ref{sequence-parameters}). Estos cortes axiales a nivel del tálamo
corresponden a una de las muchas rebanadas adquiridas para un mismo
volumen.](source/figures/sample-raw-image.png){width=70%}

## Estímulos y tarea

Dado un rostro con mirada lateralizada, el sistema visual humano es
inducido a redirigir la atención en la dirección sugerida;
presuntamente porque información de relevancia ambiental y social
podría ser descubierta en donde otros miran. Este cambio atencional
abrupto se encuentra dentro del rango de intervalos rápidos de un
movimiento sacádico. El fenómeno es conocido como "gaze cuing" y ha
sido usado para experimentar con la atención visual y
su interacción con la percepción [@friesen-kingstone-1998].

El Experimento 1 emplea una variación a la tarea de "gaze cuing" con
un diseño por eventos. No obstante, para efectos de este trabajo el
componente emocional de los estímulos puede considerarse como
presentado en pequeños bloques de 2.7 segundos y 3 segundos, ya que la
emoción es invariante dentro de cada ensayo. Cada sesión de registro
comprende 126 ensayos estímulo-respuesta, donde ensayos con rostros
que desvían la mirada son intercalados con otros de control (mirada
directa) para evitar habituación en los sujetos y contaminación en el
análisis de clasificación debido a correlación temporal. Esto se
explica más a detalle en la figura \ref{paradigm_state_diagram}: un
diagrama de sistema de estados discretos de tipo markoviano, en el que
se representa un par de bloques
$\left<gaze\;cuing,\;control\right>$. Varias iteraciones en el
diagrama estarían ocurriendo durante el registro de imágenes.

Los verdaderos estímulos provienen de la base de datos fotográfica
NimStim [@tottenham-et-al-2009]. En la ilustración han sido
caricaturizados por brevedad, ya que se utilizó más de un rostro para
cada emoción (4 hombres y 4 mujeres con variantes para todas las
expresiones requeridas, étnicamente europeoides, presentados de forma
balanceada. Los identificadores de los modelos dentro de la base de
datos son: 3, 5, 7, 8, 24, 25, 32, 36).

Para el Experimento 2 se utilizaron 5 secuencias contrabalanceadas en
un diseño por bloques de 30 segundos. Las secuencias son idénticas
salvo por el orden pseudoaleatorio de presentación de los bloques. A
las 3 clases de bloques del Experimento 1 (neutral, felicidad,
tristeza) se añadieron otras 3: de enojo, pseudocaras revueltas como
rompecabezas ("scrambled") que conservan las mismas propiedades
estadísticas de los rostros neutrales aunque ya no pueden ser
reconocidas como tal, y bloques de estimulación visual mínima
("blank"). Las caras neutras o poco expresivas podrían ofrecer un
mejor control contrastando entre tipos de emociones. De lo contrario
sería imposible concluir a partir de un buen desempeño que el
algoritmo de clasificación ha aprendido a identificar las marcas de
cada emoción, en lugar de aprender a reconocer las de $n-1$ emociones
junto con algo que no es ninguna de ellas, aunque distinto de los
correlatos de la emoción restante. La elección de introducir bloques de
pseudocaras y de nula estimulación visual fue motivada por los malos
resultados analizando la base de datos del Experimento 1. Mediante
distinciones más triviales y de resultados bien conocidos (como simple
estimulación visual) se buscó hacer una validación de todo el
análisis, que al involucrar una cantidad considerable de piezas
móviles y programación, ofrecía muchas oportunidades para haber
cometido errores.

![Paradigma de _gaze cuing_ del Experimento 1. Los nodos representan
estímulos visuales, su orden de presentación es indicado usando
flechas. A menos que se indique lo contrario, la probabilidad de
transición desde un nodo se distribuye equitativamente entre todas las
flechas salientes (los ensayos se presentaron
pseudoaleatoriamente). Se pidió a los participantes que buscaran un
objetivo (asterisco) y que presionaran el botón izquierdo o derecho,
según la posición del objetivo relativo a la cara. El espectro de
expresiones probadas (neutral, feliz, triste; seguidas ya fuera por un
objetivo congruente o incongruente con la mirada) fue dividido y
contrabalanceado en tres secuencias, con tal de mantenerlas
suficientemente cortas. Las flechas coloridas indican situaciones
específicas a una de las tres
secuencias. \label{paradigm_state_diagram}](source/figures/paradigm_state_diagram/paradigm_state_diagram.pdf){
height=35% }

![Para propósitos del etiquetado de datos de entrenamiento y prueba de
clasificación mediante aprendizaje de máquinas, los estados de
estimulación de la figura \ref{paradigm_state_diagram} pueden ser
condensados en los metaestados emocionales aquí
mostrados. \label{paradigm_state_diagram_simplified}](source/figures/paradigm_state_diagram/paradigm_state_diagram_(simplified).pdf){height=20%}

A su vez, cada bloque consta de la presentación aleatoria de 10
imágenes pertenecientes a esa categoría, durante aproximadamente 3
segundos cada una y sin posibilidad de repetirse dentro del mismo
bloque. Cada bloque aparecía dos veces por secuencia, con lo que se
obtiene un total de 12 bloques por secuencia (360 s = 6 min). Al
término de los 12, toda estimulación y petición de respuesta era
interrumpida, debiendo el sujeto esperar 10 segundos antes de concluir
el experimento (para dar tiempo suficiente al escáner de capturar la
respuesta hemodinámica elicitada por los últimos estímulos). La
totalidad de una sesión para el Experimento 2 es de aproximadamente 30
minutos, 50 segundos ($370 \; s \; \times \; 5$), sin considerar el
tiempo de obtención de las referencias anatómicas justo antes de la
tarea de fMRI.

En lo que concierne a los estímulos que conforman cada bloque, éstos
fueron seleccionados de la clásica base de datos de Paul Ekman,
"Pictures of Facial Affect" [@ekman-1976]. En el caso de los bloques
de mínima estimulación visual ("blank") simplemente se hacía brincar
aleatoriamente una cruz de fijación tenue de un cuadrante a otro
dentro del espacio visual. La cruz no ocupaba más del 10% del espacio
total en cualquiera de sus direcciones. Véase la figura
\ref{paradigm_experiment_2} para una explicación gráfica del
Experimento 2.

<!-- reportar en tabla las fotografías usadas -->

![Paradigma por bloques del Experimento 2. El eje horizontal representa el paso del tiempo. Los rectángulos corresponden a unidades de estimulación (secuencias, bloques y estímulos individuales). \label{paradigm_experiment_2}](source/figures/paradigm_experiment_2.svg){width=60%}

Se tomaron mediciones conductuales a través de la tarea como
indicadores de la prestación de atención a los estímulos y así evaluar
la calidad de los datos. Al inicio de cada secuencia los participantes
recibieron la instrucción de indicar si cada rostro presentado
pertenecía a un hombre o a una mujer. La respuesta era registrada con
botones para cada dedo índice, con controles a cada mano que les
permitían mantener los brazos lo más fijos posibles. En cambio, cuando
la imagen claramente no correspondía a un hombre o una mujer (o
persona siquiera; caso de los bloques "scrambled" y "blank"), la
instrucción simplemente era reportar cada cambio en la imagen usando
los índices alternadamente. De esta manera se garantizaba que la
actividad motora fuera lo más homogénea posible durante todos los
bloques, controlando otro posible efecto confusorio durante el
análisis de clasificación de patrones pertenecientes a rostros vs
bloques "scrambled". Aunque jamás se suministró consigna explícita de
catalogar o pensar en la expresión o emoción de los rostros, no es
posible descartar la posibilidad de que este proceso
lingüístico-conceptual apareciera espontáneamente en el tren de
pensamiento de los participantes; lo cual añadiría otra posible
variable de confusión.

## Métodos de análisis

En cumplimiento con el tercer objetivo específico del presente
proyecto, todo el análisis de los datos debería ser reproducible, y su
código fuente — que fue (re)implementado para poder ser reutilizado
con otras bases de datos de fMRI — se encuentra disponible bajo una
licencia libre en la dirección Web 
[https://github.com/isacdaavid/np-mvpa](https://github.com/isacdaavid/np-mvpa).

### Preprocesamiento de imágenes

Los tres tipos de imágenes por resonancia magnética fueron convertidos
del formato DICOM [@mustra-et-al-2008] al formato NIfTI-1
[@cox-et-al-2004] y estructurados en un árbol de archivos conforme al
estándar BIDS 1.4.0 [@gorgolewski-et-al-2016] usando la herramienta
Dcm2Bids 2.1.4 [@bedetti-et-al-2019], que a su vez fue configurada
para usar el convertidor dcm2niix 1.0.20170411 [@li-et-al-2016] y para
anonimizar los rostros de los participantes con el software pydeface
2.0.0 [@faruk-gulban-et-al-2019]. La sanidad de la base de datos
resultante fue verificada mediante BIDS Validator 1.5.4.

Se recurrió al servicio Web de segmentación de tejidos y volumetría
cerebrales Volbrain [@manjon-coupe-2016] por sus máscaras de encéfalo
("deskulling") y sustancia gris, y serendípicamente se aprovechó su
corrección de intensidad por sesgos de campo en las imágenes T1w.

Luego las secuencias de fMRI fueron yuxtapuestas por orden temporal en
una gran secuencia por sujeto, y los resultados fueron sometidos al
siguiente preprocesamiento a cargo de las utilerías de
FSL 6.0 [@jenkinson-et-al-2012]: filtro de frecuencias pasa-altas (>50
segundos) e interpolación para tiempo de adquisición de rebanada
[@woolrich-et-al-2001], corrección lineal de movimiento y corregistro
lineal [12 grados de libertad, @jenkinson-smith-2001;
@jenkinson-et-al-2002] con su respectiva referencia T1w y con la
plantilla T1w promedio del estándar MNI-152 [@fonov-et-al-2009;
@fonov-et-al-2011] a 1 mm de resolución.

Terminado el corregistro, se aplicó la matriz resultante
correspondiente para transformar las máscaras de Volbrain al espacio
de baja resolución de las imágenes de fMRI. Al sobrante de series de
tiempo de fMRI con origen en sustancia gris posteriormente se restan
las tendencias lineales, conservando los residuos de un ajuste de
regresión lineal simple por cada una de las secuencias que componen la
gran serie concatenada. Finalmente y para evitar sesgar los modelos de
clasificación hacia alguna dimensión, cada gran serie concatenada para
cada voxel es normalizada a puntajes-z, lo que lleva la matriz de
covarianza de los datos a parecerse a la matriz identidad,
decorrelacionando el espacio fase.

### MVPA

Los datos preprocesados provenientes del Experimento 1 fueron
analizados usando la librería pyMVPA 2.5.0 [@hanke-et-al-2009]. Se
entrenó un clasificador SVM lineal por sujeto, incluyendo al modelo
muestras balanceadas con los tres tipos de caras y todos los voxeles
(alrededor de 10 mil, sin mayor reducción de dimensionalidad que
seleccionar toda la sustancia gris).[^gris] La tarea solo permitió
extraer un máximo común de 16 muestras cerebrales por clase, después
de haber descartado volúmenes subsecuentes pertenecientes a un mismo
bloque (metaestado emocional, ver figura
\ref{paradigm_state_diagram_simplified}); con tal de evitar contaminar
la evaluación del modelo con una posible autocorrelación temporal en
los datos. En lugar de asumir un retraso óptimo en la respuesta
hemodinámica para el etiquetado de volúmenes cerebrales tras la
presentación de estímulo, se exploraron las series de tiempo de
exactitud de clasificación por sujeto para todos los retrasos posibles
(hasta 20 s) a una resolución de 200 ms; corrigiendo la tasa de error
de familia de comparaciones (Family Wise Error Rate) por método de
Bonferroni. El desempeño intra-sujeto fue estimado usando validación
cruzada "leave-one-out" (16 muestras $\times$ 3 clases = 48 "folds",
o sea, entrenando el modelo SVM con 47 datos y probando con el
restante de cada iteración). Como estadístico de prueba se recurrió a
la simple exactitud de clasificación ("accuracy" = aciertos / errores)
promediada sobre todos los "folds".[^conf-matrix] Posteriormente ésta
fue comparada contra un modelo nulo en una prueba no paramétrica de
rango. La distribución de probabilidad de exactitud de clasificación
promedio dada la hipótesis nula se estimó por el método de
simulaciones de Monte-Carlo para generar datos sustitutos, haciendo
permutar las etiquetas de la partición de datos de entrenamiento al
azar 5000 veces, y repitiendo el mismo esquema de validación cruzada
para cada permutación.

[^gris]: Se probó además un análisis con la totalidad del encéfalo
    (sustancia gris, blanca y líquido cefalorraquídeo), y otro usando
    poco más de 100 series de tiempo promedio tomando en cuenta la
    parcelación de un atlas cortical, cerebeloso y subcortical. El
    éxito de la decodificación fue ligeramente peor (casi idéntica)
    para ambos que con todos los voxeles de sustancia gris.
[^conf-matrix]: Aunque también se computan y guardan métricas más
    detalladas como sensibilidad, especificidad y poder predictivo
    positivo; junto con las respectivas matrices de confusión o
    contingencia.

El análisis multivariado del Experimento 2 siguió la misma metodología
salvo por los siguientes cambios y adiciones: cada clase o tipo de
bloque recogió 150 muestras cerebrales (120 datos de entrenamiento, 30
de prueba). Se usó validación cruzada con 5-folds en lugar de
"leave-one-out", usando cada secuencia de la tarea como un "fold". Se
computaron modelos SVM para todos los contrastes (combinaciones de
emociones tanto de 2 vías como de 3 vías, así como el único modelo de
4 vías: neutral vs feliz vs triste vs enojado); además de que se
entrenaron modelos para los ya mencionados contrastes triviales de
validación: estimulación visual y percepción de rostros. Aunque
también se exploraron distintos retrasos de etiquetado de muestras
(cada 2 s, desde cero retraso hasta retraso de 10 s), para propósitos
de toda la inferencia estadística individual y grupal se fijó un
retraso de 4 s, evitando una inflación del error tipo 1.

<!-- En adición, se calcularon 2 matrices de análisis de similitud -->
<!-- representacional (RSA) por sujeto y contraste, una con las distancias -->
<!-- de correlación y otra con las distancias euclidianas de cada par de -->
<!-- muestras [@walther-et-al-2016; @kriegeskorte-et-al-2008]. RSA puede -->
<!-- revelar información valiosa de si una región anatómica, o en este -->
<!-- caso, todo el cerebro; realmente agrupa las muestras por una u otra -->
<!-- categoría dentro del espacio de fase. En particular, si el patrón de -->
<!-- RSA es cualitativamente distinguible, se asegura que algún algoritmo -->
<!-- de clasificación o conglomeración sea capaz de decodificarlo -->
<!-- cuantitativamente. -->

### SVM

SVM (máquina de vectores de soporte) es un método multivariado de
aprendizaje supervisado que utiliza la representación
geométrica-vectorial de los datos para construir un modelo de
clasificación binaria, desarrollado por Vladimir Vapnik entre los años
70s y 90s [@vapnik-chervonenkis-1974; @boser-et-al-1992]. SVM
parte de la idea de que en un problema linealmente separable, el mejor
hiperplano que serviría como frontera de decisión es aquel que
maximiza su margen hacia los datos más fronterizos (los vectores de
soporte), como la línea roja en la figura \ref{hyperplanes}:

![El punto de partida de SVM es buscar el hiperplano que maximizaría
el margen a los vectores más difíciles de clasificar. La recta azul
separa las clases, pero no maximiza el margen. La recta roja sí lo
hace. Imagen de Zack Weinberg, modificada y usada con permiso según la
licencia Creative Commons BY-SA
3.0. \label{hyperplanes}](source/figures/svm-hyperplanes.svg){width=25%}

Nótese que si se conociera dicho hiperplano — y por lo tanto un vector
$\bm{w}$ ortogonal a éste —, entonces la regla de decisión para
clasificar nuevas muestras estaría dada por el signo de la proyección
del dato $\bm{x_i}$ sobre $\bm{w}$; sumando o restando la constante $b$
necesaria para que justo sobre el hiperplano el resultado sea 0:

$$ \bm{w} \cdot \bm{x_i} + b = 0 $$ {#eq:svm-decision-rule}

![Asignar nuevos datos (como el vector $\bm{x_i}$) a una u otra
categoría equivale a proyectarlos sobre un vector ortogonal al
hiperplano de separación, y tamizar esta magnitud con un umbral $b$
(de _bias_). \label{decision-rule}](source/figures/svm-decision.svg){width=25%}

Luego se imponen las restricciones de que el resultado sea justo +1 ó
-1 para los vectores de soporte (es decir, justo sobre las rectas de
los márgenes), dependiendo de qué lado se esté hablando. Para
simplificar la expresión por partes, se introduce la variable $y_i$
tal que $y_i = +1$ para una clase, y $y_i = -1$ para la otra
clase. Entonces:

$$ y_i(\bm{w} \cdot \bm{x_i} + b) \geq 0 $$

Y justo sobre los márgenes:

$$ y_i(\bm{w} \cdot \bm{x_i} + b) = 1$$ {#eq:svm-decision-rule2}

Nótese que la anchura entre márgenes — lo que desea maximizarse —
puede calcularse a partir de la resta de cualesquiera dos vectores de
soporte de clases opuestas, proyectando el resultado sobre un vector
ortonormal al hiperplano. Recordando que por definición $\bm{w}$ ya es
ortogonal, se tiene que:

![Relación entre los vectores de soporte, $\bm{w}$ y la anchura total
del margen. \label{svm-width}](source/figures/svm-width.svg){width=25%}

$$ anchura = (\bm{x_{+}} - \bm{x_{-}}) \cdot \frac{\bm{w}}{||\bm{w}||} = \frac{(\bm{w} \cdot \bm{x_{+}} - \bm{w} \cdot \bm{x_{-}})} {||\bm{w}||} $$ {#eq:svm-width}

Sustituyendo ambos productos punto con lo que se obtiene de la
ecuación (@eq:svm-decision-rule2) se descubre que:

$$ anchura = \frac{((1-b) - (-1-b))}{||\bm{w}||} = \frac{2}{||\bm{w}||} $$ {#eq:svm-width2}

Por lo tanto, el hiperplano óptimo puede computarse a partir de
minimizar $||\bm{w}||$, sujeto a que $y_i(\bm{w} \cdot \bm{x_i} + b)
\geq 1$ para todos los datos $x_i$ en la muestra.[^soft-margin]. El
vector óptimo estimado $\bm{\hat{w}}$, también llamado "vector de
pesos", ofrece una correspondencia directa entre la magnitud de sus
componentes y la importancia relativa de cada dimensión o
característica; lo cuál es de suma relevancia para interpretar el
modelo y descubrir estructuras cerebrales de interés. Para los
problemas de clasificación de más de 2 vías, la implementación de SVM
en pyMVPA simplemente produce un clasificador SVM binario para cada
pareja de clases, que se usan en conjunto para emitir una decisión
final.

[^soft-margin]: Para el caso más general donde no todos los datos son
linealmente separables pero aun se desea ajustar el mejor hiperplano,
las restricciones se sustituyen con una función de costo distinta
[@cortes-vapnik-1995].

### Inferencia a nivel grupal

Para cada experimento y para cada contraste o combinación de
categorías se reunieron las series tiempo de exactitud de
clasificación por retraso de etiquetado; además de las pruebas de
hipótesis de exactitud de todos los sujetos, usando el retraso de
etiquetado seleccionado según se acaba de explicar. A partir de estos
grupos de pruebas de hipótesis se calculó un _valor p promedio_ por
contraste, y su correspondiente tamaño de efecto (razón señal-ruido)
según la D de Cohen.

Aquellos contrastes de categorías que presentaron evidencia muestral
de clasificación por encima del azar fueron seleccionados para un
análisis de localización de _clústers_ anatómicos,[^clustering] con la
esperanza de que pudiera existir correspondencia anatómica entre las
dimensiones que fueron definitorias para el SVM de sujetos
distintos. Para los resultados más prometedores del Experimento 2 se
intentó, sin éxito, hacer pruebas $z$ para cada voxel bajo varios
esquemas de suavizado con los pesos de SVM normalizados, comparando la
media grupal por voxel contra la hipótesis nula con media en
cero. Sin embargo, la distribución de los mapas estadístico-anatómicos
(sin corrección por comparaciones) resultaba siempre aleatoria y
carente de sentido. Exploraciones con los contrastes de validación del
método sugirieron que la simple media grupal de los mapas de pesos
$\bm{\hat{w}}$, umbralizados a partir del percentil 99 (ordenando por
magnitud del peso promedio en cierto voxel), sería una buena
heurística para encontrar los clústers relevantes; pese a carecer de
rigor estadístico y valores-p asociados a las regiones encontradas. En
la sección de _Resultados_ con el Experimento 2 se exponen mapas
cerebrales paramétricos siguiendo dicho procedimiento, además de
evidencia adicional para justificar su uso. Pruebas grupales
preliminares usando un método riguroso y estandarizado por
permutaciones con la herramienta _randomise_ de FSL
[@winkler-et-al-2014], e inferencia por clúster con el método TFCE
[@smith-nichols-2009], son capaces de descubrir clústers de gran
significancia estadística justo en las estructuras donde se
esperarían; al menos para los contrastes de validación.

<!-- El análisis de clústers utilizó, una vez más, una prueba no -->
<!-- paramétrica con 5000 permutaciones. Para ello se usó la herramienta -->
<!-- _randomise_ de FSL [@winkler-et-al-2014]; utilizando como entrada 4D -->
<!-- al programa el compendio de vectores $\bm{\hat{w}}$ de cada modelo SVM -->
<!-- tras haber sido normalizados por su norma L2. Con cada iteración se -->
<!-- cambian combinatoriamente los signos del estadístico y se guarda el -->
<!-- estadístico máximo, luego se usa la distribución estimada para -->
<!-- corregir por FWER sin siquiera tener que definir un umbral inicial de -->
<!-- clusterización, ni un suavizado arbitrario; gracias al método de -->
<!-- "Threshold-Free Cluster Enhancement" [TFCE, @smith-nichols-2009]. TFCE -->
<!-- mejora la especificidad espacial de los métodos de clúster, respecto -->
<!-- de la inferencia menos sensible por voxel, ya que calcula una integral -->
<!-- (en el sentido de Lebesgue) sensible tanto a clústers grandes como a -->
<!-- pequeños pero pronunciados: -->

<!-- $$ TFCE(voxel) = \int_{w=0}^{w_{voxel}} x(voxel)^{1/2}w^2 dw $$ {#eq:} -->

<!-- A diferencia de otros esquemas de umbralización basada en clúster, el -->
<!-- estadístico TFCE se calcula para cada coordenada espacial $voxel$, a -->
<!-- pesar de usar cierta definición de clúster en su cálculo. $w$ es la -->
<!-- "altura" del estadístico como función del $voxel$ (en este caso, el -->
<!-- peso $w_i$ del vector $\bm{\hat{w}}/||\bm{w}||$). $x(voxel)$ es la -->
<!-- extensión espacial del clúster para cierto $voxel$ y a cierta altura -->
<!-- $w$. -->

[^clustering]: No confundir con "clustering" en el sentido de
    aprendizaje automático no supervisado.

### Análisis clásico

Para propósitos de comparar ambos acercamientos analíticos, los mismos
datos preprocesados del Experimento 2 (hasta antes de restar
tendencias lineales y normalizar) fueron analizados usando FSL 6.0,
ajustando modelos lineales generales a la tarea para obtener
parámetros a nivel individual. Se aplicó un suavizado por convolución
con kernel gaussiano con FWHM de 7 mm a las imágenes eco-planares
BOLD, y las columnas de las señales cuadradas de estimulación en la
matriz de diseño fueron convolucionadas con una curva de respuesta
hemodinámica doble-gamma. Además se añadió la primera derivada de cada
regresor convolucionado como co-regresor, pero no se añadieron
regresores de movimiento. Luego para el análisis de nivel superior, se
ajustaron modelos lineales de efectos mixtos (herramienta FLAME) a los
mapas de parámetros individuales, y se usó teoría de campos aleatorios
gaussianos para la inferencia grupal por clúster (umbral formador de
clústers iniciales: valor-p < .001. Valor Z de tamaño de clúster >
2.3).
