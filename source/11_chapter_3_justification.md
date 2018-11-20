# Justification

<!-- TODO: ¿son aportes teóricos, metodológicos, empíricos...? -->

<!-- Alexithymia patients, autism? Possibility of more accurate and -->
<!-- faster diagnostics, cross-validation among expert knowledge, neuroimaging, -->
<!-- etc. -->


## The Big Picture

<!-- necesita referencias bibliográficas -->

Simple emotions are regarded as some of the most basic wholesale
conscious experiences in many senses: they are culturally universal,
well-differentiated, and inextricably connected to somatic states and
homeostasis [@damasio-1998]. Helping understand their third-person
detection and processing contributes to our understanding of
intersubjectivity.

As of today, clinicians and even cognitive neuroscientists still are
heavily dependent upon verbal reports and other behavioral cues to
asses mental states. However, the prospect of having subjects report
very fast and automatic — even nonconscious — perceptual modes might
be not only difficult but logically impossible. Psychologists have
come up with clever behavioral experiments to detect these changes, so
homologous neural tests are due. More generally, extra
theoretical and empirical work is needed to help bridge the
explanatory gap between mechanistic (i.e. physical) facts and
subjective (i.e. mental) ones.

Despite the initial success of neuroscience identifying and describing
molecular and cellular underpinnings of many medical and psychological
phenomena; both the methods of "small-to-middle-scale" neuroscience
and plain _localizationism_ yield against a number of questions. Many
known cognitive phenomena rather emerge (or are thought to do so) from
the coordinated physiology of anatomically distributed
components. Evolutionary constraints pose limits on the number of
nervous specializations that could univocally correspond to the
performance of a function, so that certain behavioral and mental
phenomena must correspond to the differential recruitment and temporal
modulation of more basic resources at the physiological
domain. Moreover, modern views on cognition place emphasis on the
consideration of the interactions of organisms with one another and
their environment. <!-- ;with some even postulating that such
_grounding_ --> <!-- and _extension_ processes are inseparable from
cognition itself. -->

Functional nuclear magnetic resonance is capable of recording a
correlate signal of _local field potentials_, nearly simultaneously,
while providing moderate spatial and temporal resolution to
differentiate their activity. It is suitable for exploratory studies
in which task-related zones and dynamics must be first identified, so
as to lay the groundwork for finer-grained measurement techniques that
try to establish the finer cellular circuitry and chemistry.

## Particular

The ongoing debate surrounding the cognitive mechanisms of facial
expression perception will benefit from extra evidence, and more
importantly, more sensible analysis techniques to derive the requisite
evidence.<!-- [^novelty] -->

Multivariate and nonlinear methods have proved successful in the past
extending the identification of more complex brain activity
interactions which aren't amenable to traditional regression
models. Consider the following example in which the activation pattern
(e.g., the BOLD[^bold] signal of different areas) under two
experimental conditions has been constructed according to the
following relation (reduced to two voxels and constant intra-condition
voxel values for simplicity):

[^bold]: Blood-Oxigen-Level Dependent signal.

(@ref_for_eqn1) $$ \left\{ \begin{array}{cc} voxel_1^2 + voxel_2^2 > c & \;Condition\;A \\
                             voxel_1^2 + voxel_2^2 < c & \;Condition\;B
           \end{array} \right. $$

This is simply a circle in voxel space (_phase space_, more
generally). Let $c$ be half the magnitude of the range of values
voxels normally take, divided by pi$π$, so that there are as many
possible states for condition _A_ as for _B_; then uniformly sample
some points from all possible states at random (40 in figures
\ref{lm-vs-multivariate-1} and \ref{lm-vs-multivariate-2}). When
plotted over the plane, our measurements contain sufficient
information to tell both brain states apart, even by visual
inspection:

![A bidimensional, nonlinear activity pattern between two voxels, as
sampled from 18 trials under experimental condition _A_ plus 22 under
_B_.  BOLD signal measurements corresponding to condition _A_ can be
distinguished by their eccentricity with respect to condition
_B_. \label{lm-vs-multivariate-2}](source/figures/./lm-vs-multivariate-2.svg){width=75%}

Yet linear regression analysis operating on separate voxels is doomed
to fail (figure \ref{lm-vs-multivariate-1}). The unidimensional
population distributions are both centered at about the same value, so
no effect is observed. Moreover, they are extremely spread-out and
look rather noisy. Nor can such a big range of values be accounted for
by a deterministic nonstationary process systematically pushing values
away, because the generating process explicitly was neither of those
things.

![Simplified linear regression models and $t$-test $p$-values for the
projections of figure \ref{lm-vs-multivariate-2} data on each
dimension. The effect of experimental conditions on single voxels is
negligible (as witnessed by the models' minor slopes), and likely to
be due to chance ($p$-values), as expected. Also by design, a
Shapiro-Wilk test reveals that data distribution doesn't pass the
normality criterion required of
$t$-tests. \label{lm-vs-multivariate-1}](source/figures/./lm-vs-multivariate-1.svg){width=75%}

Even a nonlinear univariate classifier would make a number of mistakes
at the intersection of both distributions. A discriminating univariate
pattern would be noticeable from power-spectral analysis under special
dynamic conditions, but the most adequate approach by far is to
consider both voxels simultaneously, as in figure
\ref{lm-vs-multivariate-2}, since that's how data were generated in
the first place.


[^novelty]: Is the use of MVPA novel in the facial expression
    recognition literature? Mention if so
