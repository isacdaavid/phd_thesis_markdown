\pagenumbering{roman}
\setcounter{page}{1}

# Abstract {.unnumbered}

<!-- Rationale -->

Metanalyses in affective neuroscience have failed to agree on what the
specific neural substrates of distinct emotional experiences are,
rendering debates among psychological theories of emotion the more
vigorous. This has led many to believe that their decoding could
benefit from more sensitive methods. Task-related PET and fMRI brain
imaging has long relied on multiple-regression analysis of
single-voxel signals. One key assumption of this model is that
activity at certain regions will (genuinely) correlate with
experimental variables, but this needs not be the case: cognitive
states might emerge from the _joint_ activity distribution of many
elements.

<!-- Research objective -->

The current work joins a growing body of studies employing multi-voxel
pattern analysis (MVPA) on fMRI data to explore the
morpho-physiological dissociation of affective _perceptual_ states. In
particular, automatic classification algorithms are expected to learn
to distinguish between brains looking at happy and sad faces; so that
from their inner workings, relevant anatomic structures and
hemodynamic activity profiles can be derived.

<!-- Methods -->

34 control subjects underwent a gaze cuing task on a 3 T MR
scanner. Happy, sad and emotionless faces from the NimStim dataset
were presented in equal amounts at random for 2.7 or 3 s. Blocks of
interest were interspersed with a variable amount of control blocks,
to avoid both subject habituation and test-partition contamination by
temporal correlation.

After routine preprocessing, linear SVM algorithms (one per subject)
were trained with all three types of faces (16 samples per
type). Within-subject performances were estimated using leave-one-out
cross-validation, then compared to the null hypothesis estimated using
the Monte-Carlo method (5000 training-partition label
permutations). All source code is made available under a free license
for the sake of reproducibility.

<!-- Results -->

<!-- Conclusions -->

\newpage
