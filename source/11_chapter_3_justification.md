# Justificación

## Panorama general

Hay varios sentidos en los que las emociones simples podrían ser
consideradas como algunas de las experiencias conscientes completas
más básicas: son universales culturales, bien diferenciadas y están
inextricablemente conectadas a estados somáticos y la homeostasis
[@damasio-1998]. Ayudar a entender su detección y procesamiento en
tercera persona contribuye a nuestra comprensión de la
intersubjetividad.

Al día de hoy clínicos e incluso neurocientíficos cognitivos siguen
siendo bastante dependientes de reportes verbales y otras pistas
conductuales para evaluar estados mentales. Sin embargo, el prospecto
de hacer que los sujetos reporten modos perceptuales muy rápidos y
automáticos — incluso no conscientes — podría ser no solamente
dificultoso sino lógicamente imposible. La psicología experimental ha
ingeniado experimentos conductuales muy astutos para detectar dichos
cambios, de manera que pruebas neurales análogas deberían idearse y
descubrirse. Más generalmente, se requiere trabajo teórico y empírico
extra para ayudar a tender un puente explicativo entre los hechos
mecanísticos (o sea físicos) y los de la subjetividad (mentales).

Pese al éxito inicial identificando y describiendo los sustratos
moleculares y celulares de muchos fenómenos psiquiátricos y
psicológicos; los métodos de la neurociencia a escalas pequeñas y
medianas, así como el llano _localizacionismo_, fracasan frente a
cantidad de preguntas de interés. Muchos fenómenos cognitivos más
bien emergen (o así se piensa) de la función coordinada de componentes
anatómicamente distribuidos. Las restricciones evolutivas imponen
límites en el número de especializaciones nerviosas que podrían
corresponder unívocamente con el desempeño de una función, de manera
que ciertos fenómenos conductuales y mentales deben corresponder al
reclutamiento diferencial y modulación temporal de recursos más
primitivos en el dominio fisiológico. Más aún, las nuevas corrientes
en estudios de la cognición hacen hincapié en considerar
holísticamente las interacciones entre organismos y con el medio.

Para abordar este tipo de preguntas, la resonancia magnética nuclear
funcional es capaz de registrar señales correlato de los potenciales
locales de campo, a la vez que provee un moderado balance de
resolución espacial y temporal para diferenciar casi simultáneamente
la actividad metabólica de zonas distantes. Es una técnica idónea para
estudios en los que redes funcionales asociadas a tareas primero deben
ser identificadas o refinadas, allanando el terreno para técnicas de
medición más finas que intenten establecer la circuitería y química
sináptica.

## Particular

El actual debate alrededor de los mecanismos cognitivos de la
percepción de expresiones faciales se beneficiará de evidencia
adicional en materia de disociación anato-funcional; y lo que es más
importante: el uso de métodos de análisis más sensibles para derivar
la evidencia necesaria.

Los métodos multivariantes y no lineales han demostrado tener mayor
éxito extendiendo la identificación de interacciones complejas de
actividad cerebral que no son abordables mediante modelos de regresión
tradicionales. Considere el siguiente ejemplo en el que el patrón de
activación (ej., la señal BOLD[^bold] en áreas distintas) bajo dos
condiciones experimentales ha sido construido según la siguiente
relación (reducida a dos voxeles y valores intra-evento constantes por
simpleza):

[^bold]: Blood-Oxigen-Level Dependent. Señal dependiente del nivel de
    oxígeno en la sangre.

(@ref_for_eqn1) $$ \left\{ \begin{array}{cc}
                           Condicion\;A: & voxel_1^2 + voxel_2^2 > c \\
                           Condicion\;B: & voxel_1^2 + voxel_2^2 < c
           \end{array} \right. $$

Esto no es más que un círculo en el espacio de los voxeles (espacio
fase, más generalmente). Sea $c$ la mitad de la magnitud del rango de
valores que los voxeles normalmente toman, dividido entre pi, para que
haya tantos estados posibles para la condición _A_ como para la _B_;
luego muestree algunos puntos aleatoriamente de manera uniforme (40 en
las figuras \ref{lm-vs-multivariate-1} y
\ref{lm-vs-multivariate-2}). Al graficarlos en el plano, se observa
que nuestras mediciones contienen suficiente información para
distinguir ambos estados cerebrales, incluso por inspección visual:

![Patrón bidimensional no lineal de actividad de dos voxeles, según se muestreó con 18 ensayos bajo la condición experimental _A_ más 22 bajo la _B_. Las mediciones de la señal BOLD que corresponden a la condición _A_ pueden distinguirse por su excentricidad con respecto de la condición _B_. \label{lm-vs-multivariate-2}](source/figures/./lm-vs-multivariate-2.svg){width=70%}

Sin embargo un análisis de regresión lineal operando en voxeles
separados está destinado a fracasar (figura
\ref{lm-vs-multivariate-1}). Las distribuciones unidimensionales de
muestra se encuentran aproximadamente centradas alrededor del mismo
valor de intensidad, así que no se observa ningún efecto
intercondición. Por otro lado, las mediciones están muy dispersas y
lucen ruidosas. Tal enormidad en el rango de valores tampoco puede ser
explicado por artefactos de movimiento ni por un proceso determinista
no estacionario que empuje sistemáticamente los valores (como el
modelo lineal general intenta capturar); ya que el proceso usado para
generar los estados fue explícitamente ninguna de esas cosas.

![Modelos de regresión lineal simplificados y valores $p$ de las
pruebas $t$ para las proyecciones de los datos de la figura
\ref{lm-vs-multivariate-2} sobre cada eje. El efecto de las
condiciones experimentales sobre voxeles individuales es negligible
(atestiguado por las pequeñas pendientes de los modelos), y
probablemente son resultado del azar (valores $p$), como se
esperaba. También por construcción, una prueba de Shapiro-Wilk revela
que las distribuciones de datos _A_ no pasan el criterio de normalidad
requerido por las pruebas
$t$. \label{lm-vs-multivariate-1}](source/figures/./lm-vs-multivariate-1.svg){width=75%}

Incluso un clasificador no lineal univariado cometería una gran
cantidad de errores en la intersección entre ambas distribuciones.  Un
patrón discriminante univariado podría observarse a partir de un
análisis de espectro de potencias bajo condiciones dinámicas
especiales, pero el enfoque más adecuado por mucho es considerar ambos
voxeles simultáneamente; como en la figura \ref{lm-vs-multivariate-2},
ya que así es como se generaron los datos en primer lugar.
