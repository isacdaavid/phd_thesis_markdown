# Muestra, Materiales y Métodos

## Muestra

El presente trabajo se basa en una submuestra de 42 sujetos sanos,
escaneados en un resonador General Electric Discovery MR750 de la
Unidad de Resonancia Magnética del Instituto de Neurobiología; cuyo
campo magnético principal alcanza los $3.0\;T$ en su punto de magnitud
máxima. Los ecos inducidos fueron registrados usando una antena de 32
canales montada a cabeza.

Los escaneos pesados a contraste T2* para imágenes funcionales se
componen de 8840 cuadros cada uno. La tabla
\ref{fmri-task-sequence-parameters} describe sus parámetros de
secuencia.

| Parámetro de secuencia | Valor       |
|--------------------|------------:|
| Tipo de adquisición   | 2D          |
| Orientación de rebanadas  | Transversal |
| Rebanadas             | $34$          |
| Tamaño de matriz        | $64$×$64$       |
| Tamaño de voxel         | $(4\;mm)^3$ |
| Flip angle         | $pi/2$      |
| TR                 | $2000\;ms$  |
| TE                 | $40\;ms$    |

Table: Parametros de secuencia utilizados durante las adquisiciones de
IRMf. \label{fmri-task-sequence-parameters}

![Muestra de imagen cruda dentro del conjunto de datos.](source/figures/sample-raw-image.svg){width=70%}

## Materiales y métodos

Dado un rostro con mirada lateralizada, el sistema visual humano es
inducido a redirigir la atención en la dirección sugerida;
presuntamente porque información de relevancia ambiental y social
podría ser descubierta en donde otros miran. Este cambio atencional
abrupto se encuentra dentro del rango de intervalos rápidos de un
movimiento sacádico. El fenómeno es conocido como _gaze cuing_, y ha
sido usado para medir los correlatos neurales de la atención visual y
su interacción con la percepción [@friesen-kingstone-1998].

El presente estudio se basa en un diseño experimental basado en
eventos para obtener secuencias de imagenes de función cerebral bajo
condiciones contrastantes. Específicamente: una variación del
paradigma de _gaze cuing_. Cada sesión de registro comprende 126
bloques estímulo-respuesta, donde ciclos con rostros que desvían la
mirada son intercalados con otros de control (mirada directa) en aras
de estudiar la reorientación de la atención visual en conjunto con la
percepción afectiva. Esto se explica más a detalle en la figura
\ref{paradigm_state_diagram}: un diagrama de sistema de estados
discretos de tipo markoviano, con el que se representa una unidad
$\left<gaze\;cuing,\;contraste\right>$. Varias iteraciones en el
diagrama estarían ocurriendo durante el registro de imágenes. Las
fotografías con rostros específicos han sido abstraídas por brevedad.

![Paradigma de _gaze cuing_. Los nodos representan estímulos visuales,
su orden de presentación es indicado usando flechas. A menos que se
indique lo contrario, la probabilidad de transición desde un nodo se
distribuye equitativamente entre todas las flechas salientes. Se le
pidió a los participantes que buscaran un objetivo (asterisco) y que
presionaran el botón izquierdo o derecho, según la posición del
objetivo relativo a la cara. El espectro de expresiones probadas
(neutral, feliz, disgustada; seguidas ya fuera por un objetivo
congruente o incongruente con la mirada) fue dividido y
contrabalanceado en tres secuencias, para mantener los ensayos
suficientemente cortos. Las flechas coloridas indican combinaciones
específicas a una de las tres
secuencias. \label{paradigm_state_diagram}](source/figures/paradigm_state_diagram.pdf){
width=100% }
