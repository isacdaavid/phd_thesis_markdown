\pagenumbering{roman}
\setcounter{page}{1}

# Resumen {.unnumbered}

La emoción y su percepción son facultades psicológicas fundamentales
para la supervivencia de los animales y la interacción social. Esto es
reconocido por el surgimiento de áreas enteras en la neurociencia
dedicadas a entender sus bases neurales. Aunque los componentes
básicos de tal sistema emocional han sido identificados, la
segregación del abanico de experiencias afectivas en distintos
patrones de señales cerebrales sigue pobremente entendida. Estudios
recientes de imagenología funcional han implicado que la actividad
cerebral simultánea y distribuida es un mejor correlato del estado
emocional que su contraparte univariada; sin embargo, dichos estudios
se han restringido a regiones de interés y datos altamente
filtrados. En este trabajo se puso a prueba si la percepción visual de
tres emociones básicas puede ser decodificada a partir de actividad de
cerebro completo a través de clasificación de patrones multivariados,
manteniendo a raya las presuposiciones localizacionistas y sobre
codificación. Más allá de predecir los estímulos, también proveemos
prueba de concepto de mapeo anatómico y descubrimiento de estructuras
relevantes.

Para este propósito, se llevó a cabo un experimento de percepción de
rostros en una muestra de 16 participantes neurotípicos, mientras se
registraba su actividad cerebral con fMRI. Con estos datos se
entrenaron clasificadores SVM para cada sujeto, para que reconocieran
la clase de emoción presentada al cerebro. Los resultados fueron
sometidos a validación cruzada y comparados contra el rendimiento por
azar mediante técnicas de remuestreo; y la totalidad de nuestro
_pipeline_ reproducible se validó, más aun, usando contrastes más
triviales embebidos dentro de la tarea emocional principal. También,
una evaluación minuciosa de los datos conductuales apunta hacia la
validez de nuestra tarea.

Los resultados muestran una representación robusta y distribuida de la
felicidad (percibida) en humanos, pero no del enojo y la tristeza, de
valencia negativa; a diferencia de los estudios existentes más
optimistas (aunque menos diligentes). En general, nuestro enfoque
demostró ser más sensible y anatómicamente específico que el análisis
clásico univariado en masa, pese a la gran dimensionalidad. La
inferencia grupal de los parámetros de SVM sugiere que el patrón
definitorio con la información para lograr esta decodificación emana
de estructuras bien conocidas en la vía visual ventral y áreas
relacionadas con emoción. A saber: la corteza visual primaria (V1), el
surco colateral medial y giro parahipocampal (mCS, mPHG), la amígdala,
la corteza prefrontal medial (mPFC) y el cerebelo posterior alrededor
del vermis; todas de manera bilateral. Nuestro trabajo allana el
camino para que estudios multivariados subsecuentes provean una imagen
complementaria del sistema emocional (y otras funciones cerebrales),
según su dinámica a macroescala.

\newpage

# Summary {.unnumbered}

Emotion and its perception are fundamental psychological faculties for
the survival of animals and social interaction. This is recognized by
the emergence of whole areas of neuroscience devoted to understanding
its neural basis. Although the basic components of such emotional
system have been identified, the segregation of the milieu of
affective experiences into different patterns of brain signals remains
poorly understood. Recent functional imaging studies have implicated
simultaneous distributed activity as a better correlate of emotional
state than its univariate counterpart; however, those attempts have still
restricted themselves to regions of interest and severely-filtered
data. In this work we tested whether the visual perception of three
basic emotions can be decoded from full brain activity using
multivariate pattern classification, while keeping localizationist and
encoding assumptions at a minimum. Beyond stimuli prediction, we also
provide proof-of-concept anatomical mapping and discovery of relevant
structures.

To this end, we ran a face perception experiment on a sample of 16
neurotypical participants while recording their brain activity using
fMRI. Per-subject SVM classifiers were trained on the fMRI data, so
that they could recognize the emotion class brains were presented
with. Results were cross-validated and compared against performance by
chance using resampling techniques; and the whole of our reproducible
pipeline was further validated using more trivial contrasts embedded
within the main emotional task. Thorough assessment of behavioral data
points towards our task was valid too.

Results show a robust and distributed representation of (perceived)
happiness in humans, but not of negative-valence anger and sadness;
contrary to the more optimistic (though less diligent) existing
studies. Overall, our approach proved more sensitive and
anatomically-specific than the classical mass-univariate analysis,
amidst high-dimensionality concerns. Group inference of SVM parameters
suggests the defining information-bearing pattern emanates from known
structures in the ventral visual pathway and emotion-related
areas. Namely: the primary visual cortex (V1), the middle collateral
sulcus and parahippocampal gyrus (mCS, mPHG), the amygdala, the medial
prefrontal cortex (mPFC) and the anterior cerebellum around the
vermis; all of them in bilateral fashion. Our work paves the way for
further multivariate studies to provide a complementary picture of
emotions (and other brain functions), according to its macroscale
dynamics.

\newpage
