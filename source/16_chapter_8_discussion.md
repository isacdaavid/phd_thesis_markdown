# Discusión

Tras incrementar el número de datos disponibles para el Experimento 2,
hemos mostrado la factibilidad de buscar correlaciones multivariadas
entre las neuroimágenes funcionales y fenómenos perceptuales con
distintos grados de dificultad de decodificación. Esto se realizó
buscando en el espacio fase de alta dimensionalidad de toda la
sustancia gris, a diferencia del enfoque univariado tradicional y a
diferencia de otros estudios con MVPA. Si bien no todos los algoritmos
de aprendizaje estadístico son susceptibles a proveer un mapa entre
los parámetros del modelo multivariado y las imágenes del parénquima
cerebral, hemos visto que el uso concienzudo de al menos ciertos
métodos computacionales de uso corriente puede no sólo predecir la
presentación de uno u otro tipo de estímulo, sino que además localiza
los parámetros más importantes en estructuras cerebrales relevantes
para las tareas psicológicas probadas. Nuestra contribución tiene
potencial para enriquecer un sinfín de estudios de decodificación y
predicción neuronal, y otros tantos de segregación de funciones
cognitivas y afectivas.

La relevancia de adoptar un enfoque multivariado — especialmente en
situaciones que requieren de mayor sensibilidad — puede apreciarse
desde los resultados con los localizadores funcionales (figura
\ref{validation}). Tanto el cúmulo de estudios univariados masivos de
neuroimagen funcional, como estudios de potenciales relacionados con
eventos y estudios de lesiones de pacientes con prosopagnosia
concuerdan con que la identificación de rostros es una función
lateralizada al giro fusiforme medio derecho [@meadows-1974;
@yovel-et-al-2008]; o el de la preferencia manual del sujeto
[@bukowski-et-al-2013]. Sin embargo, la lateralización del área
especializada en rostros no es absoluta, existiendo usualmente FFAs
contralaterales de menor tamaño en un mismo sujeto [@haxby-et-al-2000;
@yovel-et-al-2008]. Con todo esto, queda la interrogante de qué
elementos de conectividad, organización y funcionalidad distinguen al
tejido cortical no dominante del dominante. Ya que solamente uno de
nuestros participantes fue zurdo, resulta más verosímil atribuir el
hallazgo bilateral con MVPA a la posible presencia de información
emergente para detectar rostros tanto en la FFA izquierda e
inmediaciones como en la corteza pre-estriada lateral inferior
izquierda. También es plausible que se hubiera tenido que reclutar una
muestra mayor para identificar las zonas izquierdas con el análisis
univariado. Responder esta cuestión con los mismos datos requeriría de
un análisis de la dimensionalidad intrínseca de las señales contenidas
en los clusters anatómicos revelados.

El hecho de que el mismo contraste con MVPA también haya dado gran
importancia a un clúster claramente correspondiente con la corteza
estriada puede ser explicado de la misma manera: V1 no está
especializado a procesar información visual específica a rostros, pero
la totalidad de su actividad de "menor rango" en la jerarquía visual
puede ser igualmente aprovechada por un modelo multivariado; de la
misma manera que sistemas artificiales de visión y reconocimiento de
objetos emulan los cómputos corticales, a partir de nada más que
pixeles crudos.

En cuanto a los resultados de percepción visual emocionalmente
cargada, sólo se encontró evidencia de que la alegría estuviera siendo
representada en el cerebro de los participantes. Tanto las glosas
grupales de pruebas estadísticas como las matrices de contingencia (no
mostradas) consistentemente muestran éxito decodificando la ocurrencia
de esta emoción, independientemente del abanico de afectos (o rostros
neutros) con el que se acompañe. Es decir, para combinaciones que
incluyen más emociones, la ventaja por encima del nivel de
clasificación por azar es debida principalmente a la alta sensibilidad
detectando alegría.

Este resultado es de gran interés, especialmente a la luz de los
escasos estudios de emoción con MVPA y la relativa laxitud
metodológica con la que se han venido conduciendo. En comparación con
la literatura mencionada en la tabla
\ref{table-mvpa-in-emotion-perception} en la sección de
_Antecedentes_, @ethofer-et-al-2009, @said-et-al-2010,
@peelen-et-al-2010 y @kotz-et-al-2012 también incluyeron estímulos
cargados con enojo y tristeza, y @wegrzyn-et-al-2015 incluyeron enojo.
Veamos cada uno de ellos: el experimento de @ethofer-et-al-2009 usó
estímulos auditivos, y la búsqueda se restringió al giro temporal
superior medio (corteza auditiva) y la convolución de Heschl, ya
dentro de la fisura de Silvio en dirección a la ínsula, por lo que no
se esperaría repetir sus resultados usando una tarea visual como la
nuestra. Un escrutinio más profundo pone en duda el optimismo de sus
resultados. Se reportan exactitudes de clasificación promedio (n=22)
de 30% y superiores a 35% para tristeza y enojo, respectivamente, de
un total de 5 clases distintas. No obstante, los modelos fueron
entrenados por pares de categorías, tomando una emoción a la vez y
contrastándola contra una metaclase de "todo lo demás". Suponiendo que
las muestras fueron balanceadas, el nivel de clasificación por azar a
priori para ese tipo de análisis debería ser de 50%, no de
20%. Además, la comparación estadística se hace contra un modelo a
priori en lugar de estimarse con datos sustitutos. @said-et-al-2010 se
basaron en una tarea visual con 7 clases de expresiones dinámicas en
video (n=21), que activan preferentemente al surco temporal superior
(STS) como parte de la red de procesamiento de caras a la que se hizo
alusión en la sección de _Introducción_. Se probó la clasificación de
7 vías, y de sus matrices de contingencia se infiere que de hecho
tuvieron éxito decodificando el enojo, y en menor grado, felicidad;
mas no la tristeza. Se comparó contra modelos nulos empíricos, pero
lamentablemente sus estimaciones podrían ser totalmente espurias,
puesto que las etiquetas apenas se hicieron permutar 50 veces. El
interesante estudio supramodal de @peelen-et-al-2010 no hizo
clasificación sino análisis de similitud representacional, por lo que
los resultados no son comparables con los de este trabajo; aunque cabe
mencionar que son más exitosos para felicidad y miedo que para
enojo. Los estímulos cargados con tristeza de hecho presentaron la
peor especificidad. Al igual que @ethofer-et-al-2009, @kotz-et-al-2012
utilizaron la modalidad auditiva y simplificaron la decodificación de
5 categorías emocionales con contrastes binarios entre una emoción y
el resto. Se reportan resultados por encima del azar para todos los
contrastes y en las diversas áreas de interés identificadas por el
método de "searchlight". Los resultados más pobres fueron
decodificando el enojo. ¿Los mejores?: la sorpresa en el giro frontal
inferior y en el complejo opercular fronto-insular
derecho. Cualitativamente, sus resultados parecen ofrecer rendimientos
regulares tanto para felicidad como tristeza. Se comparó someramente
contra un nivel de exactitud de clasificación a priori de 20%.

En conclusión, aún no existen razones convincentes en trabajos previos
para suponer que nuestro fracaso decodificando enojo y tristeza es
debido a una limitante metodológica. Ignoramos si el sentido de los
resultados para este par de emociones se habría invertido e inflado
usando las mismas metodologías que evitamos desde el punto de
partida. Siguiendo con las especulaciones, cabe la posibilidad de que
una representación perceptual para este tipo de emociones, de valencia
negativa, sea genuinamente escasa en el sistema nervioso central. Por
otro lado, el fracaso encontrando un patrón de actividad para otras
emociones no es garantía para descartar su existencia. Patrones
discriminantes podrían existir a escalas temporales inferiores a las
de la frecuencia de muestreo de fMRI, en especial si es evolutivamente
crítico que el sistema emocional haga un procesamiento inconsciente
fugaz de estos estímulos [@calvo-et-al-2006]. Cabe también la
posibilidad de que los patrones ya estén presentes en los datos
adquiridos, pero que no sean linealmente separables por una SVM sin
kernel (los estudios mencionados también usaron métodos lineales) o
que la dinámica del sistema carezca de suficiente estacionariedad en
las dimensiones relevantes, o simplemente que las búsquedas
espacialmente localizadas por regiones de interés o tipo "searchlight"
tengan mejor éxito, pese a los problemas metodológicos de los estudios
que han hecho esto. Como se mencionó durante los _Antecedentes_ y la
_Justificación_, este estudio pretendía poner a prueba las habilidades
de MVPA haciendo una búsqueda de cerebro completo como se suele hacer
con el análisis clásico. En ese sentido, y aunado al pequeño tamaño
muestral, poder recuperar solo _algunos_ estados emocionales a partir
de la actividad de estructuras que resultaron bien definidas ya supone
un logro importante y un cumplimiento parcial de nuestras hipótesis y
objetivos.

En lo que respecta a los correlatos neuroanatómicos per se, destaca
que todos los contrastes exitosos concuerdan en cuáles serían las
estructuras candidatas a implementar los mecanismos de percepción
emocional. Es evidente la colocalización de clústers para los 7
contrastes indagados en la figura \ref{svm-emotions}. Además, aunque
añadir clases complica las cosas para el clasificador, parece que
también lo obliga a buscar clústers más definidos y consistentes. Este
enfoque conservador contrasta contra el uso de clasificaciones
binarias de una emoción contra lo restante.

Todos los clusters encontrados son bien conocidos por formar parte de
la circuitería cerebral de procesamiento visual o emocional, otorgando
cierta coherencia, fiabilidad y aplicación interpretativa a nuestro
método multivariado de cerebro completo. Una posible explicación para
que V1 forme parte del patrón de actividad relevante ya se ofreció
hace unos párrafos, con el contraste entre caras y
pseudocaras. Además, investigaciones recientes han encontrado
correlaciones considerables entre la actividad tónica o ruido de fondo
de la corteza visual primaria y la conducta espontánea y el estado
motivacional del animal [@stringer-et-al-2019]. De estudios con
lesiones se sabe que el cerebelo paravermiano posterior da pie a
afecciones como el síndrome cognitivo-afectivo cerebeloso
[@schmahmann-sherman-1997], y prominentes teorías del cerebro
predictivo/bayesiano hipotetizan que la estructura está involucrada en
implementar toda clase de modelos predictivos directos para adelantar
las consecuencias sensoriales de las acciones [@wolpert-et-al-1998];
por lo que no es de sorprender que exista actividad neuronal emocional
en él [@strata-2015; @schutter-2016]. La importancia de las amígdalas
entorno a evaluación emocional y motivacional automática es un hecho
bien establecido [@adolphs-2002], aunque su funcionamiento preciso y
su rol dentro del sistema emocional son materia de investigación
activa [por ejemplo, @gil-lievana-et-al-2020]. Como es también de
esperarse, la corteza prefrontal medial está fuertemente asociada a
cuestiones de regulación emocional y atribución y evaluación de
estados mentales [@zaki-et-al-2009; @vanoverwalle-baetens-2009], con
proyecciones dopaminérgicas recíprocas con VTA a través de la vía
mesocortical y proyecciones glutamatérgicas directas hacia el núcleo
accumbens [@gorelova-et-al-2012]; de gran relevancia para el sistema
de recompensa. Diversas líneas de evidencia y teorías como la de los
marcadores somáticos sugieren que vmPFC juega un papel crucial en el
sistema emocional, al representar emociones de forma abstracta para
beneficio de (e interacción con) otros sistemas [@bechara-et-al-2000;
@peelen-et-al-2010]. Las únicas ausencias prominentes entre estos
clusters y los componentes conocidos del sistema emocional son la
ínsula anterior ventral y el cíngulo anterior ventral. Sin embargo
esto es entendible dada la probable ausencia de experiencia emocional
en primera persona en nuestra tarea de percepción [ver en comparación
el trabajo de @mercadillo-et-al-2011], donde además la consigna _per
se_ fue ortogonal a discernir estados afectivos; y dadas las funciones
interoceptivas y de control autonómico que se han asociado a estas
estructuras [@craig-2002; @critchley-2005].

El presente trabajo también contiene diversas limitantes y direcciones
de futura oportunidad. Hacia el final de la subsección de _Métodos de
análisis_ se describió la falta de pruebas estadísticas más rigurosas
para derivar los clusters de parámetros de SVM; además, se ofrecieron
resultados muy preliminares haciendo justamente eso. En segundo lugar,
ya se ha mencionado la falta de exploración de métodos no lineales de
clasificación. En tercer lugar, potencialmente se podría continuar con
una subclasificación de los patrones de emociones particulares,
proyectando la dinámica cerebral sobre los clusters
encontrados. También se podría explorar el sistema dinámico encontrado
a través de modelos matemáticos sintéticos, o explorar su
dimensionalidad intrínseca mediante técnicas como PCA e ICA. Ignoramos
si el patrón para decodificar la alegría está dependiendo de actividad
distribuida que habría sido omitida mediante búsquedas focalizadas,
aunque es probable que así sea, sin que esto suponga que no existen al
mismo tiempo otros patrones más focalizados que igualmente se
correlacionen con la tarea. Esto podría responderse en análisis
subsecuentes.

Sería interesante tratar de extender los resultados a otras
modalidades sensoriales y usando más emociones, quizás llegando a
comparar entre un modelo de emociones básicas y uno
dimensional. Aunque el tratamiento desde el diseño de la tarea se ha
referido a algunas emociones básicas, los resultados no son
concluyentes para descartar que los modelos exitosos en realidad
aprendieron a reconocer cualquier valencia hedónica positiva, en lugar
de algo más específico como alegría.

Otro de los inconvenientes de estos métodos radica en la promiscuidad
con la que consumen variables que faciliten la clasificación,
independientemente de si tienen conexión causal a la variable
respuesta de interés. Se intentó controlar esto mediante el uso de
estímulos neutros, pero incluso así se encontraron áreas sensoriales
primarias. Los hallazgos hechos con MVPA y neuroimagen podrían
maridarse con estudios que irrumpan directamente en la función de los
correlatos (como lesiones, manipulación farmacológica o estimulación
magnética transcraneal) en lugar de limitarse a las variables
instrumentales de una tarea psicológica y su efecto indirecto en la
actividad cerebral; y así poder corroborar la relevancia de las
conexiones estadísticas multivariadas.
