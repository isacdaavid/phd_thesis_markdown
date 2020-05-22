\pagenumbering{roman}
\setcounter{page}{1}

# Abstract {.unnumbered}

Metanalyses in affective neuroscience have failed to agree on the
specific neural substrates of distinct emotional experiences<!-- ,
rendering debates among psychological theories of emotion the more
vigorous -->. Task-related fMRI has long relied on multiple-regression
analysis of single-voxel signals (notably GLM), which assumes that
activity at some region will correlate with experimental variables,
but this needs not be the case: cognitive states might emerge from the
_joint_ activity probability distribution of many elements. This has
led many to believe that emotion decoding could benefit from the more
sensitive machine-learning methods of multi-voxel pattern analysis
(MVPA)<!-- (Kragel & LaBar, 2014) -->. However, so far these have only
been used to either explore one region at a time, or with no intention
to derive group-level activation imaging when used brain-widely. This
work explores the extent to which MVPA can overcome these limits as an
actual substitute for GLM, and applies it to the problem of narrowing
down the neural substrates of emotion _perception_.

Two similar experiments were performed, each one using a separate
validated stimuli dataset on a different control group of people, who
underwent their respective emotion perception task on a 3 T MR
scanner. Subjects were presented with neutral, happy, sad and angry
(second experiment only) faces in equal amounts at random. For the
first experiment, short blocks of interest were interspersed with a
variable amount of neutral control blocks, so as to avoid both subject
habituation and test-partition contamination by temporal
correlation. The second experiment addressed complexity and
confounding concerns in the former, and amassed 800% more training
data.

After image preprocessing, linear SVM classifiers (one per subject)
were trained for all non-trivial block combinations. Predictive power
was estimated using cross-validation, then compared to the null
hypothesis distribution estimated using the Monte-Carlo method (5000
training-partition label permutations). Instead of assuming an optimal
labeling delay after stimulus presentation, the timeseries of
classification accuracy were measured for all possible delays given
fMRI's temporal resolution; and group-level hypothesis testing was
conducted considering the single delay that maximized average accuracy
for a particular class contrast (first and second experiment), and
also the best delay per subject (first experiment only, corrected for
multiple comparisons).

Average classification timeseries’ morphology agrees with theoretical
expectations about the hemodynamic response, although little to no
evidence of successful decoding was found for the first database; even
after some attempts at dimensionality reduction (top 1% of gray-matter
voxels according to their F-test score), which pushed 3-way
classification performance to 35% accuracy (delays: 2.2 s and 5.2
s). When allowing different delays per subject, accuracy surpassed the
50% line to great statistical effect ($D_{Cohen}=3.7$), but was likely
to be a coincidence ($p_{Bonferroni}=.22$).

Depending on emotion combination, average classification timeseries
for the second database saw most maxima occur 4 s after stimulus
onset, and never immediately or too late. Performance varied from
random guessing to statistical significance; yet this variability
followed a pattern: only all combinations including _happiness_ showed
evidence of successful decoding. E.g. happy vs angry ($p=.04$,
$D_{Cohen}=2.2$), happy vs sad ($p=.07$, $D_{Cohen}=1.9$), happy vs
sad vs neutral ($p=.09$, $D_{Cohen}=1.7$). No dimensionality reduction
was performed other than gray-matter masking. Moreover, statistical
mapping ($z\_value > 2.3$) of normalized SVM weights for successful
contrasts consistently threw structures implicated in facial and
emotional processing: anterior cingulate, orbitofrontal, insular and
fusiform cortices; amygdalas and ventral striatum. Meanwhile,
classical analysis with GLM was unable to find any significant
activation cluster.

These results indicate that standard fMRI techniques can record
differential information pertaining to brain activity associated with
certain emotions (notably happiness), so a multivariate algorithm like
SVM could learn to decode such slippery states above chance levels,
whereas the univariate algorithm couldn’t; statistical power being
equal. The anatomical consistency of discriminating features across
subjects and contrasts despite high-dimensionality and a small subject
sample, as well as their correspondence with the wider literature,
suggests MVPA may be a viable tool for functional neuroanatomical
mapping and not just prediction of psychological states.

\newpage
