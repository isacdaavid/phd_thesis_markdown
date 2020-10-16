# Resultados

## Experimento 1

Para el Experimento 1, la morfología de la serie de tiempo promedio de
exactitud de clasificación de 3 vías concuerda con las expectativas
teóricas acerca de la función de respuesta hemodinámica; no obstante,
se encontró poca o nula evidencia de decodificación exitosa, incluso
tras intentar una forma simple de reducción de dimensionalidad. Sin
esta reducción, la exactitud promedio de los clasificadores por sujeto
alcanzó su punto máximo (28%) tras un retraso de etiquetado cercano a
los 2.5 s. Seleccionar el 1% de voxeles de sustancia gris según su
puntaje-F en una prueba ANOVA empujó marginalmente el rendimiento
promedio (35%, 2.2 s y 5.2 s) por encima del nivel por azar a priori
(33%). Ver figura \ref{exp1-accuracy-timeseries}.

Como última alternativa se permitió explorar el uso de un retraso de
etiquetado distinto por sujeto. Entonces la exactitud de clasificación
promedio superó el 50% con un gran efecto estadístico (D de Cohen =
3.72), pero la probabilidad de que se debiera a una coincidencia por
la exhaustividad de la búsqueda fue considerable (valor p (Bonferroni)
= 0.22). La prueba estadística en forma de distribuciones de
probabilidad del estadístico de exactitud se ilustra en la figura
\ref{test-exp-1}.

En resumen, la evidencia entregada por el análisis de clasificación no
puede justificar una búsqueda de correlatos neuroanatómicos a nivel
grupal; sin embargo se hizo una exploración cualitativa de los sujetos
más ejemplares. Ésta sugiere que el mesencéfalo, porciones de los
lóbulos cerebelosos posteriores, los giros fusiformes, las ínsulas, el
cíngulo anterior y dorsal, la corteza orbitofrontal y el surco
temporal superior podrían contener información relevante para la
discriminación de rostros emocionales.

![Series de tiempo de exactitud de clasificación individuales (arriba)
y promedio grupal (abajo), como función del retraso de etiquetado
estímulo-respuesta. Los sujetos fueron conglomerados
("clusterizados") mediante el algoritmo de Ward. Abajo se muestran
series promedio a distintos suavizados temporales por media móvil
(convolución cuadrada). Destaca una ligera tendencia a la alza pasados
entre 2 y 7 segundos tras la presentación del
estímulo. \label{exp1-accuracy-timeseries}](source/figures/results_emo/exp1/accuracy-timeseries.svg){width=90%}

![Prueba estadística por permutaciones de la exactitud de
clasificación de 3 vías (feliz vs triste vs neutro), para el 1% de los
voxeles de materia gris más destacados según su puntaje-F. La latencia
a la que fueron etiquetadas las muestras cerebrales se dejó variar por
sujeto, permitiendo encontrar un gran efecto (D de Cohen = 3.72) a
costa de hacer 100 búsquedas por sujeto (ver figura
\ref{best_acc_over_p}). La mitad inferior muestra resultados por
sujeto, y la superior, el agregado grupal. La mitad izquierda
corresponde a las distribuciones nulas empíricas estimadas por
permutaciones, y la derecha, al valor puntual de exactitud de
clasificación observada (promedio de la validación
cruzada). \label{test-exp-1}](source/figures/results_emo/exp1/test.svg){height=30%}

![Optimización de parámetros para búsqueda de latencias óptimas
individuales. ¿Cuál es el mejor balance entre exactitud de
clasificación y número de búsquedas?  Esta exploración de la tasa de
muestreo a la que se intentan nuevos retrasos de etiquetado y el
retraso máximo probado reveló que la búsqueda más exhaustiva seguía
siendo más conveniente (pico más alto de la gráfica), incluso
considerando la inflación de los valores p por el número de
comparaciones. \label{best_acc_over_p}](source/figures/results_emo/exp1/best_acc_over_p.png){height=30%}

## Experimento 2

### Resultados conductuales

Como sucedería con cualquier experimento psicofisiológico, los datos
de actividad cerebral sólo son tan buenos como la tarea permita. Es
importante tratar de validar las reacciones producidas por los
estímulos, así como el desempeño durante la tarea, lo que puede servir
a realizar un control de calidad.

Para el Experimento 2, previo al ingreso del participante al escáner
se aplicó una breve prueba aleatorizada de categorización de los
rostros que más tarde experimentaría durante la tarea propiamente
dicha. Una prueba estadística $\chi^2$ de Pearson para medir la fuerza
de asociación entre la emoción aspirada y la interpretación subjetiva
del participante reveló una minúscula probabilidad de que estuvieran
respondiendo azarosamente. Aunque no todas las emociones se detectan
con la misma facilidad, los porcentajes de acierto para cada una son
compatibles con los reportados en validaciones hechas para otros
conjuntos de fotografías de rostros emocionales.\newline

De la misma manera se tomaron cálculos homólogos por participante (con
corrección de Bonferroni para control FWER), pero incluso el
participante de peor rendimiento mostró una probabilidad menor a
$5\cdot10^{-8}$ de obtener tal grado de asociación
respuesta-categoría, según la distribución $\chi^2$ teórica.

\scriptsize

| Estímulos | |  |  | Proporción de aciertos |
|-----------|----------------------:|-:|-:|-:|
|           | Feliz                 | Enojado | Neutral | Triste |
| Este estudio [submuestra de @ekman-1976] | 1.00 | 0.92 | 0.86 | 0.78 |
| NimStim [@tottenham-et-al-2009] |      |      |      |      |
|                   (boca abierta)| 0.98 | 0.90 | 0.82 | 0.60 |
|                   (boca cerrada)| 0.92 | 0.84 | 0.91 | 0.83 |
| RADIATE [@conley-et-al-2018]    |      |      |      |      |
|                   (boca abierta)| 0.98 | 0.69 | 0.78 | 0.34 |
|                   (boca cerrada)| 0.80 | 0.62 | 0.89 | 0.70 |

Table: Reportes externos de proporción de aciertos para las emociones bajo consideración durante el Experimento 2, comparado contra los resultados de este estudio. \label{ekman-vs-otros}

\normalsize

La misma prueba grupal fue repetida separando por estímulo en lugar de
agrupar por tipo de emoción. Para cada una de las imágenes, la
probabilidad de obtener cierto número de aciertos en un conjunto de
ensayos dicotómicos independientes (en este caso, las respuesta de
todos los sujetos para dicho estímulo) está dada por la distribución
binomial, y pruebas estadísticas homónimas revelaron que sólo 2
imágenes tenían una probabilidad superior a 0.05 de estar siendo
clasificadas al azar (tras corrección de FWER de Holm). La prueba
$\chi^2$ de toda la matriz sigue mostrando que los bloques en general
elicitan la categoría emocional requerida, con buenos niveles de
relación señal ruido para cada tipo de bloque.

![Matrices de confusión con la frecuencia conjunta de respuestas
obtenidas durante la validación de los estímulos del
Experimento 2. Para conjuntos de estímulos que verdaderamente cumplen
su propósito se esperaría observar una fuerte diagonal, indicando que
la percepción subjetiva se conforma a las categorías preasignadas a
los estímulos. Izquierda: agrupando por emoción. Derecha: separando
por estímulo para detallar la estructura de los errores. Se muestran
los valores _p_ corregidos (Holm) de aquellos estímulos con $p>0.05$
según una prueba binomial de una cola bajo la hipótesis de que sólo se
asigna la categoría correcta al 25% de los ensayos de
Bernoulli. \label{conf-matrix-global-emotion}](source/figures/conf-matrix-global-emotion.svg){width=85%}

En lo que respecta a las respuestas durante la tarea, se realizaron
pruebas binomiales para cuantificar la probabilidad de acierto con las
botoneras, suponiendo que el nivel de acierto por azar es de 50%. La
figura \ref{cumm-hits-vs-misses-timeseries} muestra el agregado de
aciertos a lo largo del tiempo de los sujetos aceptados en el
Experimento 2. Se distingue que los errores, en rojo, son muy pocos en
proporción a los aciertos. Para el peor sujeto se encontró una
probabilidad de $1.95 \cdot 10^{-60}$ (corrección de Holm) de estar
contestando al azar; y la probabilidad para el peor tipo de bloque a
lo largo de la tarea, incluyendo bloques de pseudocaras y de cruz de
fijación, es incluso menor.

![Desempeño instantáneo durante la tarea (razón entre aciertos y
errores). Cada muesca en el eje horizontal representa 10 ensayos consecutivos;
es decir, un bloque de 30 s. Cada secuencia termina después de 120 ensayos
(ver acompañado de la figura
\ref{paradigm_experiment_2}). \label{cumm-hits-vs-misses-timeseries}](source/figures/cumm-hits-vs-misses-timeseries.svg){width=80%}

También se analizaron los tiempos de reacción por sujeto como medida
de la prestación de atención. Cada curva de la figura
\ref{cumm-hits-vs-misses-timeseries-2} corresponde al tiempo de
reacción promedio en segundos de algún sujeto. La recta negra
superpuesta proyecta la parte relevante de un modelo de regresión de
efectos mixtos lineales. El modelo de efectos mixtos es una
generalización de regresión por GLM que utiliza una matriz de
parámetros de efectos fijos (como en GLM), pero añade otra para
modelar efectos aleatorios (ver ecuación (@eq:glme)). Esto es
especialmente apto para diseños factoriales jerárquicos; ya que el
efecto de cada medición en el tiempo puede provenir de un sujeto
distinto con su propia varianza personal.[^AIC] El ajuste usó el
factor sujeto como efecto aleatorio, y el pasar de los bloques (cada
10 ensayos) y el tipo de bloque como efectos fijos. El propósito de
esto es encontrar el efecto o tendencia que tiene el transcurrir de la
tarea en los tiempos de reacción. Se observa un cambio casi
imperceptible en los tiempos de reacción debido al tiempo, y de hecho
a la baja (-0.11 ms cada bloque de 30 s).

[^AIC]: El modelo se seleccionó cuantitativamente usando el criterio
    de información de Akaike, en competición contra el modelo lineal
    general equivalente.

![Desempeño instantáneo durante la tarea (tiempo de reacción por
sujeto y ajuste lineal por modelo de efectos mixtos). Cada línea
sólida advierte el tiempo de reacción de algún sujeto mediante un
ajuste polinomial local por método LOESS, y se sombrea su intervalo de
confianza del 95%. La línea punteada muestra el casi nulo efecto
lineal del transcurso de los bloques según un modelo mixto. Debajo
aparece la expresión matemática del modelo mixto, con los parámetros
explícitos de ensayo (número de bloque / 10) e intercepto, así como
sus respectivos valores
p. \label{cumm-hits-vs-misses-timeseries-2}](source/figures/cumm-hits-vs-misses-timeseries-2.svg){width=70%}

Más aún, se revisó una prueba post-hoc de Tukey para un ANOVA de una
vía con los tiempos de reacción, usando los tipos de bloque como
factores. Los resultados son como se esperarían: no hay grandes
diferencias entre pares de emociones (excepto, quizás, entre bloques
de caras enojadas y neutras (p=.014) y enojadas y felices (p=.03)), ni
entre pseudocaras y cruces de fijación; pero sí hay diferencias
extremadamente significativas entre reaccionar a cualquier tipo de
estímulo visuofacial y bloques de pseudocaras o de cruces de fijación,
donde la complejidad del estímulo no solo es menor, sino que la tarea
también es un poco más sencilla que catalogar por género.

Todas estas líneas de evidencia con los datos conductuales convergen
en que los sujetos comprendieron la tarea y en general prestaron
atención a los estímulos. Acordemente, se optó por no descartar los
datos de alguno de estos participantes, como tampoco se descartó algún
tipo de bloque para el análisis de clasificación de patrones.

### Validación del método

Todos los contrastes con localizadores funcionales destinados a
validar la metodología arrojaron fuerte evidencia de decodificación
exitosa, tanto a nivel de sujeto como a nivel de grupo. En el caso de
los contrastes de estimulación visual ("blank vs scrambled", "blank vs
neutral", "blank vs angry", "blank vs sad", "blank vs happy"), todos
los valores p de observar cierta exactitud de clasificación, tanto
individuales como grupales, fueron _menores_ a $2 \times 10^{-4}$: el
valor más bajo que podría haberse medido con 5000
permutaciones. Otramente dicho, por azar jamás se encontró exactitud
de clasificación igual o superior a la del modelo. Además, se
registraron efectos grupales enormes; siempre mayores a una D de Cohen
de 6.5. A manera de ejemplo, la figura \ref{blank-vs-scrambled}
muestra los resultados para el contraste "blank vs scrambled".

![Derecha: series de tiempo de exactitud de clasificación por sujeto
en función del retraso de etiquetado. Izquierda: pruebas de hipótesis
para un retraso de etiquetado de 4 s (encuadrado en negro en la figura
derecha). Valor p promedio < .0002, D de Cohen =
7.2. \label{blank-vs-scrambled}](source/figures/blank_vs_scrambled.svg){height=35%}

También resultaron individual y grupalmente exitosas las
decodificaciones con las cuatro condiciones cuya línea basal se
destinó a distinguir cuando se percibían rostros de cuando no. Estas
fueron: "scrambled vs neutral", "scrambled vs happy", "scrambled vs
sad" y "scrambled vs angry". El valor p individual más grande para la
exactitud de clasificación observada fue de $6 \times 10^{-4}$ y el
promedio grupal más grande fue de $3.75 \times 10^{-5}$. El tamaño de
efecto grupal más austero fue de 4.9, según el estadístico D de Cohen.

![Derecha: series de tiempo de exactitud de clasificación por sujeto
en función del retraso de etiquetado. Izquierda: pruebas de hipótesis
para un retraso de etiquetado de 4 s (encuadrado en negro en la figura
derecha). Valor p promedio = $3.75 \times 10^{-5}$, D de Cohen =
4.9. \label{scrambled-vs-neutral}](source/figures/scrambled_vs_neutral.svg){height=35%}

El éxito de estos resultados motiva fuertemente a buscar los
correlatos neurales para ambos tipos de tarea, lo cual se presenta en
la figura \ref{validation}. En comparación con el análisis clásico por
GLM e inferencia por clúster con "Random Field Theory", el algoritmo
multivariado SVM claramente se vale bilateralmente de las cortezas de
caras del giro fusiforme (FFA) y las cortezas occipitales laterales
inferiores ("Occipital Face Area"). Además, el área visual primaria
(V1) en la fisura calcarina también está siendo aprovechada por SVM
para distinguir entre rostros y pseudorostros.

![Mapas anatómicos de los parámetros de los modelos de clasificación
para los contrastes de validación del _pipeline_ de procesamiento. En
rojo el contraste "scrambled vs blank" ("scrambled > blank" para
GLM). En azul, caras neutrales vs "scrambled" ("neutral" > "scrambled"
para GLM). Para SVM se muestra la magnitud de los pesos normalizados,
promediados para todos los sujetos y luego umbralizados a partir del
percentil 99. Vista radiológica axial sobre la plantilla
MNI-152. \label{validation}](source/figures/valid.png){height=30%}

### Percepción emocional

La validación del método arrojó resultados consistentes con el
conocimiento existente acerca del sistema visual y la vía ventral del
reconocimiento de objetos, de tal suerte que la puerta está abierta
para que el análisis multivariado logre discernir entre emociones
básicas, y que sus resultados posean sentido y valor neurocientífico.

El diagrama de Venn de la figura \ref{venn-emotions} es una
recopilación de las pruebas grupales para los 11 contrastes entre
emociones, incluyendo las combinaciones con rostros neutros. Una vez
más, en blanco se muestra el modelo nulo de distribución agregada de
exactitud de clasificación, como referencia contra la cual es
comparado el verdadero éxito decodificando el juego de emociones en
cuestión (en gris). Se observa que el desempeño varía dependiendo de
las emociones probadas; desde un valor p promedio de 0.05 (D de Cohen
= 3.3) para distinguir entre cerebros observando rostros felices vs
neutros, hasta un valor p promedio de 0.82 (D de Cohen = -1.2)
distinguiendo entre enojo y tristeza.

![Agregados grupales de pruebas no paramétricas de exactitud de
clasificación para todas las combinaciones de emociones. \label{venn-emotions}](source/figures/results_emo/tests-whole.svg){height=40%}

Entonces se procedió a inspeccionar los contrastes para los cuales
hubo evidencia de una decodificación exitosa; entendiendo como
"evidencia": valores p chicos y efectos grandes. Esto se observa
cualitativamente a partir del grado de corrimiento y
separación hacia la derecha de las distribuciones grises, respecto de
los modelos nulos en blanco. Del diagrama de Venn se percibe que
existen elementos para considerar exitosos a aquellos contrastes que
incluyeron la emoción "alegría", mientras que los modelos de
clasificación que la excluyeron no superaron el desempeño de sus
respectivos modelos nulos.

La figura \ref{svm-emotions} muestra los correlatos anatómicos
grupales que contendrían información relevante para decodificar las
emociones percibidas, siguiendo la misma lógica de umbralización de
parámetros que para la validación del análisis durante la sección
anterior. En la primera fila están los 3 contrastes binarios; en la
segunda, los contrastes de tres vías, y hasta abajo cuando se le pedía
al clasificador distinguir entre los cuatro tipos de caras. Ningún
clúster bajo ningún contraste pasó los criterios estadísticos dentro
del análisis univariado masivo, por lo que se omiten mapas anatómicos
de activación.

Parece que muchas áreas relevantes para el sistema emocional y en la
vía visual ventral están siendo identificadas. Las estructuras
reveladas son, en orden postero-anterior: el lóbulo posterior del
cerebelo en sus partes paravermianas, la corteza visual primaria (V1)
bilateral y alrededores linguales. El mismo clúster que abarca corteza
visual temprana y corteza cerebelosa posterior se extiende
anteriormente y bilateralmente hacia la corteza cerebelosa anterior,
reclamando partes de los surcos colaterales neocorticales (muy
cercanos a sus adyacentes giros fusiformes). Además se tienen
clusters en subconjuntos de ambas amígdalas. Finalmente aparece un
clúster bilateral en la corteza prefrontal ventromedial (vmPFC), justo
sobre los giros rectos pero también alcanzando porciones más
dorsales. Aunque los modelos mostrados fueron entrenados con varias
combinaciones de emociones, tanto la evidencia de la figura
\ref{venn-emotions} como una inspección manual de las matrices de
contingencia demandan ser cautos identificando estos correlatos
neuroanatómicos con algo más que la percepción de alegría.

![Mapas anatómicos de los parámetros de los modelos de clasificación,
para todos aquellos contrastes donde se encontró evidencia de
decodificación exitosa. En color falso se muestra la magnitud de los
pesos SVM normalizados, promediados para todos los sujetos y luego
umbralizados a partir del percentil 99. Vista radiológica axial sobre
la plantilla MNI-152. vmPFC (corteza prefrontal ventromedial), Amyg
(amígdalas), aC/CS (cerebelo anterior y surcos colaterales), V1 (corteza
visual primaria), pmC (cerebelo
posteromedial). \label{svm-emotions}](source/figures/results_emo/SVM-voxel-wise.png){height=35%}

Una forma de invalidar el endeble esquema de inferencia grupal y
umbralización de clúster sería mostrando que usar las características
seleccionadas exclusivamente es perjudicial al rendimiento de la
clasificación. Es decir, si los parámetros de SVM descartados por su
baja magnitud subumbral fueran importantes para lograr la
decodificación del patrón neuro-emocional, entonces ignorarlos en una
repetición del análisis causaría estragos. Lo que se hizo entonces fue
tomar el último mapa grupal en amarillo de la figura
\ref{svm-emotions} derivado de todas las emociones, y se usó como
máscara para volver a correr el análisis de cada participante.

\scriptsize

| Índice de clúster | Número de voxeles | Máximo [0, 1] | X | Y | Z | Área anatómica |
|---|-:|-------:|--:|--:|--:|----------------|
| 1 | 42429| 0.29   |95 |38 | 67| Giros linguales occipitales |
| 1 | 42429| 0.29   |75 |43 |50 | Corteza cerebelosa posterior izquierda (lóbulo cuadrangular) |
| 1 | 42429| 0.28   |83 |34 |65 | Fisura calcarina posterior izquierda |
| 1 | 42429| 0.28   |109|51 |52 | Corteza cerebelosa posterior derecha (lóbulo cuadrangular) |
| 2 | 39957| 0.26   |89 |171| 50| Giros rectos |
| 2 | 39957| 0.25   |88 |172|58 | Giros paracingulados |
| 3 |   668| 0.24   |68 |122|46 | Amígdala izquierda |
| 4 |   209| 0.22   |112|120|47 | Amígdala derecha |

Table: Coordenadas MNI-152 (a 1 mm de resolución) de los máximos
locales en el mapa grupal de parámetros de clasificación de 4 vías (en
amarillo) de la figura \ref{svm-emotions}.  \label{svm-emotions-table}

\normalsize

El efecto observado de hecho fue el contrario, demostrando que la
umbralización, aparentemente arbitraria, ha removido dimensiones
ruidosas de los datos. Una vez más, los contrastes que incluyen la
emoción felicidad son los acreedores al beneficio. En la figura
\ref{venn-emotions-wholemasked} se ven las nuevas distribuciones de
exactitud de clasificación en color rojo. Ahora todos los sujetos
están por encima de la media de la distribución nula.

![Advertencia: a pesar de que la mejoría refuerza la convicción de que
se han localizado sustratos relevantes para la percepción y
decodificación de emociones en rostros, es falaz alardear con los
nuevos valores-p ignorando los anteriores, como si fueran el resultado
de una búsqueda a ciegas en los datos de mayor
dimensionalidad. \label{venn-emotions-wholemasked}](source/figures/results_emo/tests-wholemasked.svg){height=40%}
