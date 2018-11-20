# Sample, Materials and Methods

<!-- - MRI: attach notes from Concha's lectures in order to introduce MRI? -->
<!--    - image processing pipeline -->

## Sample

The present work relies on an existing subsample of 42 healthy
subjects scanned at the Institute of Neurobiology's Magnetic Resonance
Unit on a General Electric Discovery MR750 scanner, whose main
magnetic field reaches a magnitude peak of $3.0\;T$. Inducting echoes
were recorded using a 32-channel head-mounted antenna.

<!--    - age -->
<!--    - sex -->
<!--    - handedness? -->
<!--    - psychometric results -->

T2*-weighted scans for functional imaging are comprised of 8840 frames
each. Sequence parameters are described at table
\ref{fmri-task-sequence-parameters}.

| Sequence parameter | Value       |
|--------------------|------------:|
| Acquisition type   | 2D          |
| Slice orientation  | Transversal |
| FOV                | 64x64       |
| Voxel size         | $4\;mm^3$   |
| Flip angle         | $pi/2$      |
| TR                 | $2000\;ms$  |
| TE                 | $40\;ms$    |

Table: Sequence parameters used for fMRI
acquisitions. \label{fmri-task-sequence-parameters}

![Sample raw fMRI image from our dataset.](source/figures/sample-raw-image.svg){width=70%}

## Materials and Methods

Notwithstanding preattentive emotional face perception, the appearance
of a face with a lateralized gaze tempts the human visual system to
shift attention towards the suggested direction; presumably because
relevant environmental and social information is likely to be
discovered where others look at. The abrupt attentional shift is well
within the fast interval range of a saccade movement. This phenomenon
is known as _gaze cuing_, and has been used to measure neural
correlates of visual attention and its interplay with emotion
perception [@friesen-kingstone-1998].

The present study relied on a variation on the gaze cuing paradigm to
obtain sequences of functional brain images under contrasting
conditions. Each recording session was comprised of 126
stimulus-response blocks, where averted-gaze cycles were interleaved
with control (i.e. direct-gaze) ones in order to study reorientation
of visual attention in conjunction with affective perception. This
is further explained in figure \ref{paradigm_state_diagram}: a
markovian discrete-state system diagram showing a repeating
$\left<gaze\;cuing,\;contrast\right>$ unit. Specific face photographs
have been abstracted away for brevity.


![Gaze cuing paradigm. Nodes represent visual stimuli, their order of
presentation is indicated using arrows. Unless noted otherwise,
transition probability from a node is equally distributed among all
exit arrows. Participants were asked to attend for a target (asterisk)
and press a "left" or "right" button, depending on target position
relative to the face. The spectrum of tested expressions (neutral,
happy, disgusted) followed by either a gaze-congruent or
gaze-incongruent target was divided and counterbalanced in three
sequences, so as to keep the latter at reasonable durations. Colorful
arrows indicate combinations which were specific to a
sequence. \label{paradigm_state_diagram}](source/figures/paradigm_state_diagram.pdf){
width=100% }

<!-- mention anti-habituation procedures -->
<!-- design matrix. Block, event, mixed? -->
