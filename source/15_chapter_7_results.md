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

![Series de tiempo de exactitud de clasificación individuales (arriba)
y promedio (abajo), como función del retraso de etiquetado
estímulo-respuesta. Los resultados por sujeto fueron conglomerados
("clusterizados") mediante el algoritmo de Ward. Abajo se muestran
series promedio a distintos suavizados temporales por media móvil
(convolución cuadrada). Destaca una ligera tendencia a la alza pasados
entre 2 y 7 segundos tras la presentación del
estímulo. \label{exp1-accuracy-timeseries}](source/figures/results_emo/exp1/accuracy-timeseries.svg){width=90%}

Como última alternativa se permitió explorar el uso de un
retraso de etiquetado distinto por sujeto. Entonces la exactitud de
clasificación promedio superó el 50% con un gran efecto estadístico (D
de Cohen = 3.72), pero la probabilidad de que se debiera a una
coincidencia por la exhaustividad de la búsqueda fue considerable
(valor p (Bonferroni) = 0.22). Ver figura \ref{test-exp-1}.

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

En resumen, la evidencia entregada por el análisis de clasificación no
puede justificar una búsqueda de correlatos neuroanatómicos a nivel
grupal; sin embargo se hizo una exploración cualitativa de los sujetos
más ejemplares. Ésta sugiere que el mesencéfalo, porciones de los
lóbulos cerebelosos anteriores, los giros fusiformes, las ínsulas, el
cíngulo anterior y dorsal, la corteza orbitofrontal y el surco
temporal superior podrían contener información relevante para la
discriminación de rostros emocionales.

![Optimización de parámetros para búsqueda de latencias óptimas
individuales. ¿Cuál es la mejor relación entre exactitud de
clasificación y número de búsquedas?  Esta exploración de la tasa de
muestreo a la que se intentan nuevos retrasos de etiquetado y el
retraso máximo probado reveló que la búsqueda más exhaustiva sigue
siendo más conveniente, pese a inflar los valores p por el número de
comparaciones. \label{best_acc_over_p}](source/figures/results_emo/exp1/best_acc_over_p.png){height=30%}

## Experimento 2

### Resultados conductuales

Como sucedería con cualquier experimento psicofisiológico, los datos
de actividad cerebral solo son tan buenos como la tarea permita. Es
importante tratar de validar las reacciones producidas por los
estímulos, así como el desempeño durante la tarea, lo que puede servir
a realizar un control de calidad.

Para el Experimento 2, previo al ingreso del participante al escáner
se aplicó una breve prueba aleatorizada de categorización de los
rostros que más tarde experimentaría durante la tarea propiamente
dicha. Una prueba estadística $\chi^2$ de Pearson para medir la fuerza
de asociación entre la emoción aspirada y la interpretación subjetiva
del participante reveló una minúscula probabilidad de que los
participantes estuvieran respondiendo azarosamente. Aunque no todas
las emociones se detectan con la misma facilidad, los porcentajes de
acierto para cada una son compatibles con los reportados en
validaciones hechas para otros conjuntos de fotografías de rostros
emocionales.\newline

\footnotesize

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

De la misma manera se tomaron cálculos homólogos por sujeto (con
corrección de Bonferroni para error tipo I de familia de comparaciones
múltiples), pero incluso para el peor de ellos, la probabilidad de
obtener tal grado de asociación respuesta-categoría según la
distribución $\chi^2$ teórica resultó menor a $5\cdot10^{-8}$.

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
la percepción subjetiva se conforma a las categorías
preasignadas. Izquierda: agrupando por emoción. Derecha: separando por
estímulo para detallar la estructura de los errores. Se muestran los
valores _p_ corregidos (Holm) de aquellos estímulos con $p>0.05$
según una prueba binomial de una cola bajo la hipótesis de que sólo se
asigna la categoría correcta al 25% de los
ensayos de Bernoulli. \label{conf-matrix-global-emotion}](source/figures/conf-matrix-global-emotion.svg){height=80%}

En lo que respecta a las respuestas durante la tarea, se realizaron
pruebas binomiales para cuantificar la probabilidad de acierto con las
botoneras, suponiendo que el nivel de acierto por azar es de 50%. La
figura \ref{cumm-hits-vs-misses-timeseries} muestra el agregado de
aciertos a lo largo del tiempo de los sujetos aceptados en el
Experimento 2. Se distingue que los errores, en rojo, son muy pocos en
proporción a los aciertos. Para el peor sujeto se encontró una
probabilidad de $6.65 \cdot 10^{-66}$ (corrección de Holm) de estar
contestando al azar; y la probabilidad para el peor tipo de bloque a
lo largo de la tarea, incluyendo bloques de pseudocaras y de cruz de
fijación, es incluso menor.

![Desempeño instantáneo durante la tarea (razón entre aciertos y
errores). \label{cumm-hits-vs-misses-timeseries}](source/figures/cumm-hits-vs-misses-timeseries.svg){height=80%}

También se analizaron los tiempos de reacción por sujeto como medida
de la prestación de atención. Cada curva de la figura
\ref{cumm-hits-vs-misses-timeseries-2} corresponde al tiempo de
reacción promedio en segundos de algún sujeto, y se sombrean sus
intervalo de confianza del 95%. La recta negra superpuesta proyecta la
parte relevante de un modelo de regresión de efectos mixtos
lineales. El modelo de efectos mixtos es una generalización de
regresión por GLM que utiliza una matriz de parámetros de efectos
fijos (como en GLM), pero añade otra para modelar efectos
aleatorios. Esto es especialmente apto para diseños factoriales
jerárquicos; ya que el efecto de cada medición en el tiempo puede
provenir de un sujeto distinto con su propia varianza personal. El
ajuste usó el factor sujeto como efecto aleatorio, y el pasar de los
bloques y el tipo de bloque como efectos fijos. El propósito de esto
es encontrar el efecto o tendencia que tiene el transcurrir de la
tarea en los tiempos de reacción. Se observa un cambio casi
imperceptible en los tiempos de reacción debido al tiempo, y de hecho
a la baja.

![Desempeño instantáneo durante la tarea (tiempo de reacción por sujeto y ajuste lineal por modelo de efectos mixtos). \label{cumm-hits-vs-misses-timeseries-2}](source/figures/cumm-hits-vs-misses-timeseries-2.svg){width=80%}

Todas estas líneas de evidencia con los datos conductuales convergen
en que los sujetos comprendieron la tarea y en general prestaron
atención a los estímulos. Acordemente, se optó por no descartar los
datos de alguno de estos participantes, como tampoco se descartó algún
tipo de bloque para el análisis de clasificación de patrones.

### Validación del método

La exactitud de clasificación superó el 80% para todos los contrastes
binarios que incluían la condición "blank" en el Experimento 2. El
análisis a nivel de grupo de los parámetros o pesos asignados por SVM
a cada característica anatómico-funcional revela una preferencia por
los voxeles o parcelas situados dentro y justo alrededor de la fisura
calcarina: la corteza visual primaria (V1). Pruebas estadísticas $z$
(sin corrección) a nivel grupal usando los pesos normalizados mediante
la métrica $L2$ únicamente superaron los umbrales recomendados para
Feat (GLM+LME) en el caso del análisis reducido por parcelación, y a
expensas de la sensibilidad espacial del mapa $z$ umbralizado, que
claramente sufre un deterioro en la figura \ref{validation}. Las
pruebas $z$ para el análisis "voxel-wise" resultó simplemente
infactible. El problema podría ser inherente al uso de métodos
multivariantes con datos de alta dimensionalidad, como se ha venido
augurando desde la sección de _Antecedentes_. Aunque es perfectamente
posible explorar un número limitado de combinaciones de
características muestreadas uniforme y aleatoriamente a lo largo,
ancho y alto del espacio de búsqueda; la raleza ("sparsity") entre los
voxeles favorecidos para cada sujeto (aunque cercanos), es tanta que
no sobrevive a la gran varianza inter-sujeto. Se probaron suavizados
(convolución gaussiana con FWHM de 6mm, 8mm y 10mm) de los pesos de
SVM previo a las pruebas estadísticas grupales, pero una vez más, la
raleza de estos parámetros merma la coincidencia espacial; haciendo de
las pruebas estadísticas por voxel un pobre instrumento de detección.
En su lugar, para el análisis "voxel-wise" se muestra el promedio de
pesos SVM normalizados, filtrados a partir del percentil 99.

Las mismas consideraciones se repiten para el contraste "neutral vs
scrambled": evidencia fuerte de aprendizaje de los patrones
característicos de cada condición según las pruebas de permutaciones
por sujeto, agrupamiento coherente de los pesos asignados por cada
modelo SVM hacia regiones de la red nuclear del procesamiento de caras
(Occipital Face Area, Fusiform Face Area); pero con una raleza tal que
la varianza por voxel es alta y el suavizado espacial en poco ayuda.

![Mapas paramétricos grupales de activación para los contrastes de
validación del _pipeline_ de procesamiento del Experimento 2. En rojo
el contraste "scrambled vs blank" ("scrambled > blank" para GLM). En
azul, caras neutrales vs "scrambled" ("neutral" > "scrambled" para
GLM). Destaca la sensibilidad y especificidad del análisis
multivariado "voxel-wise" (sin reducción de características) filtrando
los pesos de SVM normalizados a partir del
percentil 99. Vista radiológica axial sobre la plantilla MNI-152. \label{validation}](source/figures/valid.png){height=35%}

### Percepción emocional

![asdf. \label{results_emo}](source/figures/results_emo/tests.svg){height=35%}

![asdf. \label{results_emo2}](source/figures/results_emo/tests-reduced.svg){height=35%}

![asdf. \label{results_emo3}](source/figures/results_emo/test-neutral-happy.svg){height=35%}

![asdf. \label{results_emo3}](source/figures/results_emo/test-neutral-happy-cont.png){height=35%}

![asdf. \label{results_emo3}](source/figures/results_emo/test-all-pairwise-cont.png){height=35%}

![asdf. \label{results_emo3}](source/figures/results_emo/test-all-triwise-cont.png){height=35%}
