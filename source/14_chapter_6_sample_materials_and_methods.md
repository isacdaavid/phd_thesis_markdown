# Muestra, Materiales y Métodos

Se analizaron dos bases de datos distintas en búsqueda de evidencia de
una representación neural de la emoción de los estímulos. Mientras que
la primera proviene de un experimento psicológico que no involucró al
autor del presente proyecto, el segundo experimento fue diseñado desde
cero con el propósito expreso de mitigar las deficiencias del primero,
en tanto que idóneo para responder a la pregunta de investigación. En
lo subsecuente serán referidos como __Experimento 1__ y __Experimento 2__,
respectivamente. Es importante redundar en que ambos se
destinaron a responder exactamente la misma cuestión, y por lo tanto
serán descritos simultáneamente, resaltando sus diferencias.

## Participantes


El Experimento 1 reunió 34 participantes neurotípicos; sin reporte de
padecer o haber sido diagnosticados con alguna condición neurológica o
psiquiátrica.

<!-- [describir muestra demográficamente]. -->

El Experimento 2 reunió 8 participantes, quienes también negaron
padecer o en algún momento haber sido diagnosticados con alguna
condición neurológica o psiquiátrica. Todos los sujetos fueron varones
entre los 23 y 30 años de edad al momento del estudio. 7 de ellos
reportaron tener fenotipo de lateralidad diestra, mientras que el
restante reportó ser zurdo. Uno de los participantes diestros fue
excluido del análisis debido a una falla en la adquisición de
imágenes, ya que habría conducido a un desbalance en el número de
muestras disponibles para entrenar los modelos de clasificación
automática.

## Estímulos y diseño experimental

Dado un rostro con mirada lateralizada, el sistema visual humano es
inducido a redirigir la atención en la dirección sugerida;
presuntamente porque información de relevancia ambiental y social
podría ser descubierta en donde otros miran. Este cambio atencional
abrupto se encuentra dentro del rango de intervalos rápidos de un
movimiento sacádico. El fenómeno es conocido como "gaze cuing", y ha
sido usado para experimentar con la atención visual y
su interacción con la percepción [@friesen-kingstone-1998].

El Experimento 1 emplea una variación a la tarea de "gaze cuing" con
un diseño por eventos. No obstante, para efectos de este trabajo el
componente emocional de los estímulos puede considerarse como
presentado en pequeños bloques de 2.7 segundos y 3 segundos, ya que es
invariante dentro de cada ensayo. Cada sesión de registro comprende
126 ensayos estímulo-respuesta, donde ensayos con rostros que desvían
la mirada son intercalados con otros de control (mirada directa) para
evitar habituación en los sujetos y contaminación en el análisis de
clasificación debido a correlación temporal. Esto se explica más a
detalle en la figura \ref{paradigm_state_diagram}: un diagrama de
sistema de estados discretos de tipo markoviano, en el que se
representa un par de bloques
$\left<gaze\;cuing,\;control\right>$. Varias iteraciones en el
diagrama estarían ocurriendo durante el registro de imágenes.

Los verdaderos estímulos provienen de la base de datos fotográfica
NimStim [@tottenham-et-al-2009]. En la ilustración han sido
caricaturizados por brevedad, ya que se utilizó más de un rostro para
cada emoción (4 hombres y 4 mujeres con variantes para todas las
expresiones requeridas, étnicamente europeoides, presentados de forma
balanceada. Los identificadores de los modelos dentro de la base de
datos son: 3, 5, 7, 8, 24, 25, 32, 36).

![Paradigma de _gaze cuing_. Los nodos representan estímulos visuales,
su orden de presentación es indicado usando flechas. A menos que se
indique lo contrario, la probabilidad de transición desde un nodo se
distribuye equitativamente entre todas las flechas salientes (los
ensayos se presentaron pseudoaleatoriamente). Se le pidió a los
participantes que buscaran un objetivo (asterisco) y que presionaran
el botón izquierdo o derecho, según la posición del objetivo relativo
a la cara. El espectro de expresiones probadas (neutral, feliz,
triste; seguidas ya fuera por un objetivo congruente o incongruente
con la mirada) fue dividido y contrabalanceado en tres secuencias,
para mantener los ensayos suficientemente cortos. Las flechas
coloridas indican combinaciones específicas a una de las tres
secuencias. \label{paradigm_state_diagram}](source/figures/paradigm_state_diagram/paradigm_state_diagram.pdf){
width=100% }

![Para propósitos del etiquetado de datos de entrenamiento y prueba de
clasificación mediante aprendizaje de máquinas, los estados de
estimulación de la figura \ref{paradigm_state_diagram} pueden ser
condensados en los metaestados emocionales aquí
mostrados. \label{paradigm_state_diagram_simplified}](source/figures/paradigm_state_diagram/paradigm_state_diagram_(simplified).pdf){width=75%}

Para el Experimento 2 se utilizaron 5 secuencias contrabalanceadas en
un diseño por bloques de 30 segundos. Las secuencias son idénticas
salvo por el orden pseudoaleatorio de presentación de los bloques. A
las 3 clases de bloques del Experimento 1 (neutral, felicidad,
tristeza) se añadieron otras 3: de enojo, caras neutras revueltas como
rompecabezas ("scrambled") que conservan las mismas propiedades
estadísticas de la imagen aunque ya no pueden ser reconocidas como
caras, y bloques de estimulación visual mínima ("blank"). A su vez,
cada bloque consta de la presentación aleatoria de 10 imágenes
pertenecientes a esa categoría, durante aproximadamente 3 segundos
cada una y sin posibilidad de repetirse dentro del mismo bloque. Cada
bloque aparecía dos veces por secuencia, con lo que se obtiene un
total de 12 bloques por secuencia (360 s = 6 min). Al término de los
12, toda estimulación y petición de respuesta era interrumpida,
debiendo el sujeto esperar 10 segundos antes de concluir el
experimento (para dar tiempo suficiente al escáner de capturar la
respuesta hemodinámica elicitada por los últimos estímulos). Todas las
secuencias del Experimento 2 se realizaron en una sola sesión por
sujeto, de aproximadamente 30 minutos, 50 segundos ($370 \; s \;
\times \; 5$), justo después de haber obtenido las imágenes anatómicas
por resonancia magnética.

En lo que concierne a los estímulos que conforman cada bloque, éstos
fueron seleccionados de la clásica base de datos de Paul Ekman,
"Pictures of Facial Affect" [@ekman-1976]. En el caso de los bloques
de mínima estimulación visual ("blank") simplemente se hacía "saltar"
aleatoriamente una cruz de fijación tenue de un cuadrante a otro
dentro del espacio visual. La cruz no ocupaba más del 10% del espacio
total en cualquiera de sus direcciones. Véase la figura
\ref{paradigm_experiment_2} para una explicación gráfica del
Experimento 2.

<!-- reportar en tabla las fotografías usadas -->

![Paradigma por bloques del Experimento 2. El eje horizontal representa el paso del tiempo. Los rectángulos corresponden a unidades de estimulación (secuencias, bloques y estímulos individuales). \label{paradigm_experiment_2}](source/figures/paradigm_experiment_2.svg){width=100% }

Se tomaron mediciones conductuales a través de la tarea como
indicadores de la prestación de atención a los estímulos. Al inicio de
cada secuencia los participantes recibieron la instrucción explícita
de indicar si cada rostro presentado pertenecía a un hombre o a una
mujer. Esto ocurría mediante botones para cada dedo índice, con
controles a cada mano que les permitían mantener los brazos lo más
fijos posibles. En cambio, cuando la imagen claramente no correspondía
a un hombre o una mujer (o persona siquiera: bloques "scrambled" y
"blank"), la instrucción simplemente era reportar cada cambio en la
imagen usando los índices alternadamente. De esta manera se
garantizaba que la actividad motora fuera la misma durante todos los
bloques. Aunque jamás se les pidió catalogar o pensar en la expresión
o emoción de los rostros, no es posible descartar la posibilidad de
que este proceso lingüístico-conceptual apareciera espontáneamente en
su tren de pensamiento; lo cual añadiría una variable de confusión al
análisis de clasificación de patrones.

## Adquisición de imágenes

Tanto las imágenes del primer como del segundo experimento fueron
obtenidas con un resonador General Electric Discovery MR750 de la
Unidad de Resonancia Magnética del Instituto de Neurobiología; cuyo
campo magnético principal alcanza los $3.0\;T$ en su punto de magnitud
máxima. Los ecos inducidos fueron registrados usando una antena de 32
canales montada a cabeza.

Los escaneos pesados a contraste T2* para imágenes funcionales durante
el Experimento 1 se componen de 8840 cuadros cada uno. La tabla
\ref{fmri-task-sequence-parameters} describe sus parámetros de
secuencia.

| Parámetro de secuencia | Valor       |
|--------------------|------------:|
| Tipo de adquisición   | 2D          |
| Orientación de rebanadas  | Transversal |
| Rebanadas             | $34$          |
| Tamaño de matriz        | $64$×$64$       |
| Tamaño de voxel         | $(4\;mm)^3$ |
| Flip angle         | $\pi/2$      |
| TR                 | $2000\;ms$  |
| TE                 | $40\;ms$    |

Table: Parametros de secuencia utilizados durante las adquisiciones de
IRMf. \label{fmri-task-sequence-parameters}

![Muestra de imagen eco-planar cruda dentro del conjunto de
datos. Este corte axial es una de las 34 rebanadas adquiridas dentro
de cada tiempo de repetición
(TR).](source/figures/sample-raw-image.png){width=40%}

## Métodos de análisis

<!-- (pipeline: DICOM -> NIFTI, volbrain, Feat prepro, atlases/masks, pymvpa, etc) -->

<!-- After routine preprocessing, linear SVM classifiers (one per subject -->
<!-- and contrast) were trained with all non-trivial combinations of face -->
<!-- classes (16 samples per class for the first experiment, 150 for the -->
<!-- second one). Parcel-based dimensionality reduction was attempted for -->
<!-- the second dataset in addition to whole-brain analysis. Within-subject -->
<!-- performances were estimated using leave-one-out (first experiment) and -->
<!-- 5-fold (second experiment) cross-validation, then compared to the null -->
<!-- hypothesis estimated using the Monte-Carlo method (5000 -->
<!-- training-partition label permutations). -->

<!-- Uno de los inconvenientes de estos métodos radica en la promiscuidad -->
<!-- con la que consumen variables que faciliten la clasificación, -->
<!-- independientemente de si tienen conexión causal a la variable -->
<!-- respuesta de interés. Los hallazgos hechos con MVPA y neuroimagen -->
<!-- podrían maridarse con estudios que irrumpan en la función de los -->
<!-- correlatos (como lesiones, manipulación farmacológica o estimulación -->
<!-- magnética transcraneal) para validar la relevancia de las conexiones -->
<!-- estadísticas. -->
