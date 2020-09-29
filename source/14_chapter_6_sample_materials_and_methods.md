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

El Experimento 2 reunió 17 participantes de ambos sexos con edad
promedio de 24 años, quienes también negaron padecer o en algún
momento haber sido diagnosticados con alguna condición neurológica o
psiquiátrica, motivo por el cual tres interesados fueron excluidos.
Con excepción de un participante zurdo, todos reportaron expresar
fenotipo de lateralidad diestra en algún grado. Posterior a su
participación, un sujeto fue excluido del análisis debido a una falla
de sincronización en la adquisición de imágenes; ya que habría
conducido a un desbalance en el número de muestras disponibles para
entrenar los modelos de clasificación automática.

\scriptsize

| $n=16$ | | |
|-|-:|-:|
| __Edad__ (años)       | $\bar{x}$ | $S.D.$ |
|                       | $25$   | $3.01$ |
| __Sexo__              | Mujeres   | Hombres |
|                       | $8$       | $8$       |
| __Escolaridad__       | Licenciatura | Posgrado |
| (obtenida o en curso) | $8$            | $8$        |

Table: Características demográficas de los 16 participantes
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
\ref{sequence-parameters}). Estos cortes axiales corresponden a una de
las muchas rebanadas
adquiridas para un mismo volumen.](source/figures/sample-raw-image.png){width=70%}

## Estímulos y tarea

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

![Paradigma de _gaze cuing_ del Experimento 1. Los nodos representan
estímulos visuales, su orden de presentación es indicado usando
flechas. A menos que se indique lo contrario, la probabilidad de
transición desde un nodo se distribuye equitativamente entre todas las
flechas salientes (los ensayos se presentaron
pseudoaleatoriamente). Se le pidió a los participantes que buscaran un
objetivo (asterisco) y que presionaran el botón izquierdo o derecho,
según la posición del objetivo relativo a la cara. El espectro de
expresiones probadas (neutral, feliz, triste; seguidas ya fuera por un
objetivo congruente o incongruente con la mirada) fue dividido y
contrabalanceado en tres secuencias, con tal de mantenerlas
suficientemente cortas. Las flechas coloridas indican situaciones
específicas a una de las tres
secuencias. \label{paradigm_state_diagram}](source/figures/paradigm_state_diagram/paradigm_state_diagram.pdf){
height=40% }

![Para propósitos del etiquetado de datos de entrenamiento y prueba de
clasificación mediante aprendizaje de máquinas, los estados de
estimulación de la figura \ref{paradigm_state_diagram} pueden ser
condensados en los metaestados emocionales aquí
mostrados. \label{paradigm_state_diagram_simplified}](source/figures/paradigm_state_diagram/paradigm_state_diagram_(simplified).pdf){height=25%}

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
correlatos de la emoción restante. La elección de bloques de
pseudocaras y de nula estimulación visual fue motivada por los malos
resultados analizando la base de datos del Experimento 1. Mediante
distinciones más triviales y de resultados bien conocidos (como simple
estimulación visual) se buscó hacer una validación de todo el
análisis, que al involucrar una cantidad considerable de piezas
móviles y programación, ofrecía muchas oportunidades para haber
cometido un errores.

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

![Paradigma por bloques del Experimento 2. El eje horizontal representa el paso del tiempo. Los rectángulos corresponden a unidades de estimulación (secuencias, bloques y estímulos individuales). \label{paradigm_experiment_2}](source/figures/paradigm_experiment_2.svg){width=70%}

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
tiempo de origen en sustancia gris posteriormente se restan las
tendencias lineales, conservando los residuos de un ajuste de
regresión lineal simple por cada una de las secuencias que componen la
gran serie concatenada. Finalmente y para evitar sesgar los modelos de
clasificación hacia alguna dimensión, cada gran serie concatenada para
cada voxel es normalizada a puntajes-z, lo que lleva la matriz de
covarianza de los datos a parecerse a la matriz identidad,
decorrelacionando el espacio fase.

Para el Experimento 1, tras preprocesamiento de rutina se entrenó un
clasificador SVM lineal por sujeto con los tres tipos de caras (16
muestras por clase, después de descartar volúmenes subsecuentes
pertenecientes al mismo bloque, con tal de disminuir la autocorrelación de
los datos). El poder predictivo intra-sujeto fue estimado usando
validación cruzada "leave-one-out" (16 validaciones, usando un dato
distinto a los 15 de entrenamiento como prueba en cada iteración). La
exactitud de clasificación promedio luego fue comparada con una prueba
no paramétrica de rangos contra la distribución de probabilidad de
clasificación dada la hipótesis nula, que se estimó por el método de
simulaciones de Monte-Carlo (5000 permutaciones de etiqueta en la
partición de datos de entrenamiento). En lugar de asumir un retraso
hemodinámico óptimo para el etiquetado de volúmenes cerebrales tras la
presentación de estímulo, se midieron las series de tiempo de
exactitud de clasificación por sujeto para todos los retrasos posibles
(hasta 20 s) a una resolución de 200 ms.

