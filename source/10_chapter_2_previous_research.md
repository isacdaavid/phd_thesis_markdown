# Antecedentes

Las investigaciones del procesamiento emocional hasta antes de la
neuroimagen funcional lograron implicar varias regiones corticales y
subcorticales; algunas de ellas más bien primitivas y bien
conservadas. A grandes rasgos, los impulsos tempranos que entran al
tálamo son copiados a corteza sensorial pero también a la
amígdala. Ésta última contiene núcleos especializados para evaluación
de carga emocional tanto innata como aprendida. Una larga historia de
investigación en condicionamiento ha mostrado que la amígdala debe
estar presente para aprender asociaciones implícitas (es decir,
procedimentales) entre estímulos que generan miedo y estímulos
incondicionados. El núcleo central de la amígdala proyecta a lugares
como la región gris central del tallo cerebral e hipotálamo, que a su
vez puede desencadenar reacciones automáticas y actividad
humoral. También hay áreas corticales implicadas en la percepción de
emociones complejas: la corteza cingulada ventral anterior, la ínsula
y la corteza prefrontal ventromedial. Como ejemplo de las
consecuencias que estas estructuras tienen en percepción emocional,
daño a la corteza prefrontal resulta en discapacidades sociopáticas
[@ledoux-damasio-2013].

No obstante, la localización y codificación de emociones tanto en el
sistema nervioso central como en el periférico permanece un problema
abierto [@kragel-labar-2016; @celeghin-et-al-2017]. Una pregunta
fundamental es si existen patrones en actividad neuronal
suficientemente específicos que correspondan con concepciones
vernáculas y psicológicas de las emociones. Además, ¿qué tan
generalizables son esos correlatos entre individuos y especies? Ésta
última cuestión tiene implicaciones para nuestra comprensión de la
aparición de estados afectivos, ya sea en términos de evolución de los
genes o de la cultura.

Los metanálisis y revisiones de la literatura hasta antes de la
aplicación de detección de patrones multivariados no muestran una
tendencia en la respuesta a las preguntas anteriores. @phan-et-al-2002
analizaron los mapas de activación de 55 estudios de PET y fMRI, y
encontraron evidencia parcial para la existencia de correlatos
neuroanatómicos consistentes a la ocurrencia de distintos tipos de
emociones básicas. @murphy-et-al-2003 incrementaron el tamaño de
muestra a 106 estudios y mantuvieron la conclusión general respecto
del metanálisis anterior, aunque los correlatos no fueron
suficientemente similares. La relativa debilidad de los resultados ha
sido usada como evidencia de hipótesis alternativas; a saber, teorías
dimensionales y de actos conceptuales [emociones como construcciones
de afectos, @barrett-2006]. @barrett-wager-2006 examinaron 161
estudios y encontró correlatos exclusivos (mas no específicos) para
miedo, tristeza y asco. La felicidad y el enojo no arrojaron
correlatos ni consistentes ni específicos. @vytal-and-hamann-2010
utilizaron un análisis con mayor sensibilidad espacial para contrastar
cinco emociones básicas provenientes de 83 estudios. Concluyeron que
aunque existen _clusters_ característicos de activación para cada una
de ellas, no es evidencia suficiente para descartar otros modelos de
representación emocional en el cerebro. @lindquist-et-al-2012
analizaron 91 estudios tanto de experiencia de emociones como de
percepción emocional. Definieron evidencia a favor de emociones
básicas como actividad consistente en áreas específicas selectivas a
una única categoría. Se encontró consistencia y selectividad para las
cinco categorías bajo consideración, mas no especificidad
funcional. Es decir, las escurridizas emociones básicas tienen
correlatos distinguibles entre sí, aunque las mismas regiones
cerebrales están vinculadas a otras funciones psicológicas
extraemocionales.

[^PET]: Tomografía por emisión de positrones

El consenso disponible es que la búsqueda de estructuras específicas a
un tipo de emoción está superada. Si la función emocional tiene
biomarcadores reproducibles, su decodificación dependerá de la
actividad conjunta de redes funcionales distribuidas y traslapadas
[@hamann-2012; @lindquist-barrett-2012; @kragel-labar-2014;
@celeghin-et-al-2017; ver @guillory-bujarski-2014 para una revisión de
estudios electrofisiológicos concordantes con esta conclusión]. Dado
que los métodos clásicos de detección de actividad diferencial en
fMRI han agotado su utilidad (basados en la aplicación de
modelos de regresión para voxeles individuales), el campo de
neurociencia afectiva comienza a recurrir a análisis multivariados
para dilucidar las preguntas de interés [@hamann-2012;
@kragel-labar-2014; @kragel-labar-2016]. Estos diversos métodos,
también agrupados bajo el nombre de "análisis de patrones multivoxel"
en la literatura neurocientífica (MVPA por sus siglas en inglés),
comparten la característica de modelar la codificación del estado
mental como una función de muchas dimensiones; que en el caso de
fMRI toman la forma de voxeles distantes en espacio o
tiempo [@norman-et-al-2006; @huettel-et-al-2009;
@lewis-peacock-norman-2013]. Al considerarlas holísticamente, MVPA es
capaz de extraer igual o mayor información de las burdas imágenes
funcionales en la mayoría de los casos [ver @jimura-poldrack-2012 para
contraejemplos], a expensas de complicar potencialmente el modelo y su
cómputo. La adopción de este enfoque en estudios con fMRI ha llevado a
descubrimientos novedosos en casi todas las ramales de la neurociencia
cognitiva [@tong-pratte-2012; @rissman-wagner-2012; @soon-et-al-2008].

Según @lewis-peacock-norman-2013, el término MVPA es usado para
referirse a dos estrategias distintas de análisis de patrones
multivoxel:

1. Clasificación automática empleando algoritmos provenientes del
   campo de aprendizaje de máquinas.
2. Cuantificación de similitud entre patrones.

También es necesario recalcar que aunque muchas de las
aplicaciones de MVPA en neurociencia afectiva han usado percepción de
estímulos emocionalmente cargados, ésta no es exactamente análoga a la
experiencia en primera persona de una emoción (notable también a
partir de actividad cerebral [@wager-et-al-2008]). La percepción
emocional además puede involucrar procesos de evaluación, atribución
de estados mentales e intenciones; a la vez que puede estar exenta de
emoción _per se_ [@peelen-et-al-2010]. En lo subsecuente se hará la
distinción, poniendo énfasis en los trabajos relativos a _clasificación_
de estados de _percepción_ emocional.

@pessoa-padmala-2007 demostraron la factibilidad de usar MVPA para
predecir la respuesta conductual en una tarea de fMRI sobre percepción
de caras asustadas, presentadas casi subliminalmente, en contraste con
otros tipos de caras. Se basó en un algoritmo de entrenamiento SVM sin
kernel, cuyo desempeño aumentaba conforme las variables dependientes
en el modelo eran adicionadas con nuevas regiones de interés;
hipotetizando que los varios aspectos de la actividad emocional
(discriminación del estímulo, producción de respuestas, etc.)
contienen información útil para decodificar el estado
perceptual. @ethofer-et-al-2009 utilizaron estímulos auditivos con
carga paralingüística emocional. Su modelo SVM fue capaz de clasificar
entre cuatro emociones básicas y un estado aemocional por encima del
azar, mientras que un análisis univariado no encontró diferencias en
las mismas señales BOLD, provenientes de corteza auditiva (ver
@kotz-et-al-2012 para un estudio similar no restringido a corteza
auditiva). @said-et-al-2010 utilizaron clasificación multivariada
mediante el método de regresión logística para demostrar que la
actividad de ciertas regiones del surco temporal superior (previamente
vinculadas a detección de expresiones faciales) predice la categoría
emocional de los rostros. Los mismos datos bajo análisis univariado
fueron incapaces de repetir la hazaña. @peelen-et-al-2010 probaron
estímulos de cinco categorías emocionales en modalidades distintas
(audición, visión de gesticulaciones y de lenguaje
corporal). Sorprendentemente, las mismas características eran capaces
de hacer la distinción, independientemente de la modalidad sensorial e
intensidad de la emoción.

El uso de MVPA en decodificación emocional también ha alcanzado a
otras especies. @hernandez-et-al-2018 (prepublicación) entrenaron
perros para permanecer quietos y despiertos en un resonador magnético
mientras observaban rostros humanos felices o inexpresivos. En un
segundo experimento emplearon más emociones y un clasificador
multivariado para proveer evidencia de que los correlatos encontrados
en la corteza temporal derecha del perro contienen información
selectiva a la felicidad de los humanos.

La clasificación de patrones multivoxel en tareas de experimentación
directa de emociones es capaz de caracterizar con precisión los
dispersos correlatos espaciales de la valencia hedonística y el nivel
de excitación postulados por hipótesis dimensionales
[@rolls-et-al-2009; @baucom-et-al-2012; @chikazoe-et-al-2014;
@shinkareva-et-al-2014; @chang-et-al-2015]. Además hay evidencia de
cierta generalidad intersujeto, pues existen patrones compartidos que
permiten su clasificación a niveles de exactitud no triviales. De la
misma forma se han encontrado resultados prometedores categorizando
experiencias de emociones discretas, en comparación con los resultados
del cúmulo de literatura con análisis univariado [@sitaram-et-al-2011;
@kassam-et-al-2013; @saarimaki-et-al-2015; @kragel-labar-2015]. Está
por verse si el uso de MVPA será suficiente para encontrar una
hipótesis vencedora.

<!-- Descubrimientos en pacientes con daño cerebral, estudios de -->
<!-- imagenología y de estimulación han establecido la segregación de dos -->
<!-- sistemas distintos de atención visual en humanos; que abarcan, -->
<!-- respectivamente, sitios dorsales y ventrales en lóbulos frontales y -->
<!-- parietales [@vossel-et-al-2014; @umarova-et-al-2009].[^what-vs-where] -->
<!-- La primera es responsable por una forma de atención dirigida por -->
<!-- objetivos (_top-down_), mientras que la segunda reacciona a estímulos -->
<!-- inesperados (_bottom-up_). Además se ha sugerido que sirven como -->
<!-- mecanismos atencionales genéricos independientemente de la modalidad -->
<!-- sensorial [@macaluso-2010], e incluso estando carente información de -->
<!-- carácter conceptual o integrativo (por ejemplo, durante una tarea de -->
<!-- selección basada en características) [@vandenberghe-gillebert-2009]. -->

<!-- [^what-vs-where]: No deben confundirse con las también dorsal y -->
<!-- ventral vías del "dónde" y del "qué" en percepción visual. Aunque -->
<!-- podría existir traslape con las redes de atención en la unión -->
<!-- temporoparietal y el surco intraparietal. -->

<!-- La indagación en la conectividad funcional, causal y estructural de -->
<!-- las redes dorsal y ventral ha comenzado a echar luz sobre sus -->
<!-- componentes, y — en menor grado — sus especializaciones. La red dorsal -->
<!-- comprende cuando menos los campos oculares frontales (FEF en inglés) y -->
<!-- surco intraparietal (IPS); ambos de los cuales se piensa muestran -->
<!-- tractos de asociación con las áreas perceptuales del lóbulo occipital, -->
<!-- de organización contralateral retinotópica; así como fibras de comisura -->
<!-- para conectar hemirredes homólogas. Es posible que la red dorsal esté -->
<!-- computando mapas de prominencia planificada, como es sugerido por la -->
<!-- presencia de incluso más campos receptivos retinotópicamente -->
<!-- organizados en FEF e IPS. Estos mapas de "saliencia" serían consumidos -->
<!-- por FEF para solicitar toda clase de movimientos oculares -->
<!-- [@jerde-et-al-2012]. -->

<!-- El funcionamiento interno de la red ventral frontoparietal está menos -->
<!-- dilucidado, pero se ha asociado fiablemente al filtro de eventos -->
<!-- exógenos (o sea, irrelevantes a la tarea); presumiblemente permitiendo -->
<!-- que estímulos inesperados y potencialmente peligrosos se sobrepongan a -->
<!-- la concentración del sujeto y pasen al foco de atención. La activación -->
<!-- ocurre en las zonas denominadas unión temporoparietal (TPJ) y la -->
<!-- corteza ventral frontal (VFC). Existen problemas determinando si la -->
<!-- red ventral está lateralizada hacia el hemisferio derecho, y no hay -->
<!-- algún estandar citoarquitectónico (o de otro tipo) que delimite estas -->
<!-- áreas [@vossel-et-al-2014]. -->

<!-- TPJ ha sido postulada como un punto de interacción entre sistemas -->
<!-- [@corbetta-et-al-2008; @fox-et-al-2006]. La actividad intrínseca del -->
<!-- giro frontal medio (MFG) posterior derecho está correlacionada con -->
<!-- ambas redes; convirtiéndola en otro _hub_ candidato. De los tres -->
<!-- principales fascículos longitudinales superiores (SFL I, II y III) que -->
<!-- proveen conexiones anatómicas asociativas para estas redes, se sabe -->
<!-- que el de en medio (SFL II) conecta a FEF y TPJ -->
<!-- [@de-schotten-et-all-2011]. -->

<!-- ## A favor y en contra de la percepción emocional automática -->

<!-- El paradigma de _priming_ afectivo [@klauer-musch-2003] tiene efectos -->
<!-- mejorando tiempos de reacción y exactitud en la identificación de -->
<!-- emociones idénticas consecutivas, lo cual refleja cierta versatilidad -->
<!-- en el proceso que desemboca en el reconocimiento afectivo -->
<!-- [@de-houwer-2009]. Varias líneas de evidencia ayudan a extrapolar este -->
<!-- hecho hacia la noción de que la percepción afectiva puede someterse a -->
<!-- un modo automático/preatencional: -->

<!-- - Debido a que el priming afectivo sólo ocurre bajo tiempos cortos de -->
<!--   asincronía de puesta de estímulo (_SOA_[^soa] en inglés) (300 ms o -->
<!--   menos), se conjetura que el procesamiento del estimulo primal debe -->
<!--   ocurrir antes de que dé lugar el despliegue de atención y -->
<!--   estrategias de respuesta [@moors-de-houwer-2006; -->
<!--   @hermans-et-al-2001]. -->

<!-- [^soa]: El lapso de tiempo entre estímulo primal y la presentación del -->
<!--     segundo. -->

<!-- - El efecto se observa incluso cuando el primal se presenta en niveles -->
<!--   subumbrales, irreconocibles [@draine-greenwald-1998] y fuera del -->
<!--   foco de atención visual [@calvo-nummenmaa-2007]. -->

<!-- - Según algunos reportes, la carga cognitiva (producida por la -->
<!--   presentación simultánea de tareas irrelevantes) no impacta en el -->
<!--   _priming_ [@hermans-et-al-2000]. No obstante esto está en pugna. -->

<!-- Un refinamiento posterior propone que no todas las emociones fueron -->
<!-- hechas igualmente ventajosas de reconocer. Si la selección natural -->
<!-- produjo circuitería neuronal complementaria de alta prioridad para el -->
<!-- procesamiento de expresiones faciales (o un precursor epigenético), -->
<!-- uno puede naturalmente preguntar si este automatismo también -->
<!-- seleccionó algunas emociones más que otras; con base en su ventaja de -->
<!-- supervivencia. En efecto, un cúmulo de investigaciones han encontrado -->
<!-- que el efecto de _priming_, así como otros, están sesgados hacia -->
<!-- emociones aversivas o peyorativas en contraposición a las -->
<!-- satisfactorias o neutras [@fox-et-al-2002; @vuilleumier-2001; -->
<!-- @ishai-et-al-2004; @vuilleumier-2005; @susa-et-al-2012]. -->

<!-- En oposición a la visión anterior, @pessoa-et-al-2002 interpretaron el -->
<!-- incremento en actividad en estructuras corticales y basales ligadas al -->
<!-- reconocimiento facial y emocional (giro fusiforme, amígdala, etc.) -->
<!-- durante atención explícita a rostros (en contraste con detalles no -->
<!-- expresivos inscritos en las caras) como evidencia de que el -->
<!-- procesamiento facial es contingente a la atención. Esta veta de -->
<!-- estudios en procesamiento de emociones faciales posee simpatizantes -->
<!-- recientes [véase @ochsner-gross-2005; @eimer-et-al-2003 por -->
<!-- ejemplo]. De los estudios con EEG[^eeg] que tratan de correlacionar -->
<!-- supuestos índices por PREs[^erp] de atención visual con diversos modos -->
<!-- de percepción emocional se han obtenido resultados dispares (ver -->
<!-- revisión y resultados negativos de @galfano-et-all-2011 concernientes -->
<!-- a la hipótesis de sesgo dependiente a la emoción, según se infiere de -->
<!-- los segundos componentes negativos de señales de electrodos -->
<!-- posteriores contralaterales durante una tarea de pista por mirada -->
<!-- (_gaze cuing_)). -->

<!-- [^eeg]: Electroencefalografía. -->
<!-- [^erp]: Potencial relacionado con eventos. A veces usado -->
<!--     intercambiablemente con "potencial evocado". -->

<!-- Resultados contradictorios producto de experimentos metodológicamente -->
<!-- sólidos demandan una reformulación teórica capaz de cobijar todos los -->
<!-- hechos. Las investigaciones en torno al conflicto suelen invocar -->
<!-- alguna forma de interacción o modulación entre sistemas para poder -->
<!-- explicar los datos [@okon-et-al-2007; @palermo-rhodes-2007]. Basados -->
<!-- en tiempos de reacción y variabilidad en la dificultad de la tarea, -->
<!-- Sassi y colegas propusieron que a pesar de que la percepción emocional -->
<!-- puede volverse automática, los recursos sobrantes podrían seguir -->
<!-- siendo usados en paralelo para el mismo propósito si los distractores -->
<!-- no fueran suficientes [@sassi-et-al-2014]. -->
